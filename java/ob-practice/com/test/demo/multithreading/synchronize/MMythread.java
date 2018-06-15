package com.test.demo.multithreading.synchronize;

public class MMythread {

    volatile static int numberPrint = 0;

    static final int numberTotalPrint = 4000;

    private static String[] flag = {"A"};

    static class AThread extends Thread {

        @Override
        public void run() {
            while (numberPrint < numberTotalPrint) {
                synchronized (flag) {
                    if (flag[0].equals("A")) {
                        System.out.print("A");
                        flag[0] = "B";

                        numberPrint++;
                    }
                    flag.notify();
                    try {
                        flag.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

    }

    static class BThread extends Thread {
        @Override
        public void run() {

            while (numberPrint < numberTotalPrint) {
                synchronized (flag) {
                    if (flag[0].equals("B")) {
                        System.out.print("B");
                        flag[0] = "C";
                        numberPrint++;
                    }
                    flag.notify();
                    try {
                        flag.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    static class CThread extends Thread {
        @Override
        public void run() {

            while (numberPrint < numberTotalPrint) {
                synchronized (flag) {
                    if (flag[0].equals("C")) {
                        System.out.println("C");
                        flag[0] = "A";

                        numberPrint++;
                    }
                    flag.notify();
                    try {
                        flag.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public static void main(String[] args) throws InterruptedException {
        AThread thread1 = new AThread();
        BThread thread2 = new BThread();
        CThread thread3 = new CThread();
        thread1.start();
        thread2.start();
        thread3.start();
    }
}
