package com.test.demo.pv;

import java.util.ArrayList;
import java.util.List;

public class PVLongListTest {

    public class Producer implements Runnable {

        private List<Long> list;

        public Producer(List<Long> list) {
            this.list = list;
        }

        public void run() {
            synchronized (list) {
                if (list.size() >= 10) {
                    try {
                        System.out.println("����������ȴ�����������");
                        list.wait();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                } else {
                    System.out.println("����������һ����Ʒ");
                    list.add(new Long(System.currentTimeMillis()));
                    list.notifyAll();
                }
            }
        }
    }

    public class Connsumer implements Runnable {

        private List<Long> list;

        public Connsumer(List<Long> list) {
            this.list = list;
        }

        public void run() {
            synchronized (list) {
                if (list.size() == 0) {
                    try {
                        System.out.println("��Ʒ��ȫ�����ѣ��ȴ�������������");
                        list.wait();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else {
                    System.out.println("����������һ����Ʒ"+ ++a);
                    list.remove(0);
                    list.notifyAll();
                }
            }
        }
    }

    List<Long> list = new ArrayList<Long>();
    volatile int a = 0;

    public static void main(String[] args) {

        PVLongListTest pvLongListTest = new PVLongListTest();
        Producer pro = pvLongListTest.new Producer(pvLongListTest.list);
        Connsumer con = pvLongListTest.new Connsumer(pvLongListTest.list);

        long beg = System.currentTimeMillis();
        System.out.println(beg);
        for (int i = 0; i <= 2000; i++) {
            new Thread(pro).start();
            new Thread(con).start();
        }

        System.out.println(System.currentTimeMillis() -beg);
    }
}
