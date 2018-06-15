package com.test.demo.pv;

public class QTest {

    public static void main(String[] args) {
        QTest qt = new QTest();
        Q q = qt.new Q();
        new Thread(qt.new Producer(q)).start();
        new Thread(qt.new Consumer(q)).start();
    }

    class Q {
        String name;
        int num = 0;
        int size = 10;
    }

    class Producer implements Runnable {
        Q q;

        Producer(Q q) {
            this.q = q;
            this.q.name = "producer";
        }

        public void run() {
            while (true) {
                synchronized (q) {
                    if (q.num < q.size) {
                        q.num++;
                        System.out.println("producer已生产第：" + q.num + "个产品!");
                        try {
                            Thread.sleep(100);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                        q.notify();
                    } else {
                        try {
                            System.out.println("producer stop!");
                            q.wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    class Consumer implements Runnable {
        Q q;

        Consumer(Q q) {
            this.q = q;
            this.q.name = "consumer";
        }

        public void run() {
            while (true) {
                synchronized (q) {
                    if (q.num > 0) {
                        System.out.println("consumer要消费第：" + q.num + "个产品!");
                        q.num--;
                        try {
                            Thread.sleep(100);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                        q.notifyAll();
                    } else {
                        try {
                            System.out.println("consumer stop!");
                            q.wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
    }

}
