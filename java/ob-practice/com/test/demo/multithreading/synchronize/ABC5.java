package com.test.demo.multithreading.synchronize;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class ABC5 {
    private int cond = 1;// ͨ��cond��ȷ��A B C�����

    private Lock lock = new ReentrantLock();// ͨ��JDK5�е�������֤�̵߳ķ��ʵĻ���

    private Condition condition = lock.newCondition();// �߳�Э��

    /** 
     * @param args 
     */
    public static void main(String[] args) {
        ABC5 abc = new ABC5();// �ڲ����߳�ִ�з�ʽjdk1.5
        ThreadA ta = abc.new ThreadA();// ����3��runnable��
        ThreadB tb = abc.new ThreadB();
        ThreadC tc = abc.new ThreadC();
        ExecutorService executor = Executors.newFixedThreadPool(3);// ͨ���̳߳�ִ��
        for (int i = 0; i < 10; i++) {
            executor.execute(ta);
            executor.execute(tb);
            executor.execute(tc);
        }
        executor.shutdown();// �ر��̳߳�
    }

    class ThreadA implements Runnable {

        public void run() {
            lock.lock();
            try {
                while (true) {
                    if (cond % 3 == 1) {
                        System.out.print("A");
                        cond++;
                        condition.signalAll();
                    } else {
                        try {
                            condition.await();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
            } finally {
                lock.unlock();
            }
        }

    }

    class ThreadB implements Runnable {
        public void run() {
            lock.lock();
            try {
                while (true) {
                    if (cond % 3 == 2) {
                        System.out.print("B");
                        cond++;
                        condition.signalAll();
                    } else {
                        try {
                            condition.await();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
            } finally {
                lock.unlock();
            }
        }

    }

    class ThreadC implements Runnable {
        public void run() {
            lock.lock();
            try {
                while (true) {
                    if (cond % 3 == 0) {
                        System.out.println("C");
                        cond++;
                        condition.signalAll();
                    } else {
                        try {
                            condition.await();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
            } finally {
                lock.unlock();
            }
        }

    }
}
