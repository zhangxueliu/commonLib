package com.test.demo.multithreading.synchronize;

public class ABC4 {

    volatile private int cond = 1;// ͨ��cond��ȷ��A B C�����

    private Object obj = new Object();// ͬ������

    /** 
     * @param args 
     */
    public static void main(String[] args) {
        ABC4 abc = new ABC4();// �ڲ��࣬�߳�ִ��ͨ��jdk1.4
        ThreadA ta = abc.new ThreadA();// ����3��runnable��
        ThreadB tb = abc.new ThreadB();
        ThreadC tc = abc.new ThreadC();
        for (int i = 0; i < 1; i++) {
            new Thread(ta).start();
            new Thread(tb).start();
            new Thread(tc).start();
        }
        
        System.out.println("end");
    }

    class ThreadA implements Runnable {

        public void run() {
            synchronized (obj) {
                while (true) {
                    if (cond % 3 == 1) {
                        System.out.print("A_"+cond);
                        cond++;
                        obj.notifyAll();
                    } else {
                        try {
                            obj.wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    class ThreadB implements Runnable {

        public void run() {
            synchronized (obj) {
                while (true) {
                    if (cond % 3 == 2) {
                        System.out.print("_B_"+cond);
                        cond++;
                        obj.notifyAll();
                    } else {
                        try {
                            obj.wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    class ThreadC implements Runnable {

        public void run() {
            synchronized (obj) {
                while (true) {
                    if (cond % 3 == 0) {
                        System.out.println("_C_"+cond);
                        cond++;
                        obj.notifyAll();
                    } else {
                        try {
                            obj.wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }

    }
}
