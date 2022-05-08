package com.facebook.stetho.server;

import android.net.LocalServerSocket;
import android.net.LocalSocket;
import com.facebook.stetho.common.LogUtil;
import com.facebook.stetho.common.Util;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.BindException;
import java.net.SocketException;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nonnull;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/server/LocalSocketServer.class */
public class LocalSocketServer {
    private static final int MAX_BIND_RETRIES = 2;
    private static final int TIME_BETWEEN_BIND_RETRIES_MS = 1000;
    private static final String WORKER_THREAD_NAME_PREFIX = "StethoWorker";
    private final String mAddress;
    private final String mFriendlyName;
    private Thread mListenerThread;
    private LocalServerSocket mServerSocket;
    private final SocketHandler mSocketHandler;
    private boolean mStopped;
    private final AtomicInteger mThreadId = new AtomicInteger();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/server/LocalSocketServer$WorkerThread.class */
    public static class WorkerThread extends Thread {
        private final LocalSocket mSocket;
        private final SocketHandler mSocketHandler;

        public WorkerThread(LocalSocket localSocket, SocketHandler socketHandler) {
            this.mSocket = localSocket;
            this.mSocketHandler = socketHandler;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                try {
                    this.mSocketHandler.onAccepted(this.mSocket);
                } catch (IOException e) {
                    LogUtil.m360w("I/O error: %s", e);
                }
                try {
                    this.mSocket.close();
                } catch (IOException e2) {
                }
            } catch (Throwable th) {
                try {
                    this.mSocket.close();
                } catch (IOException e3) {
                }
                throw th;
            }
        }
    }

    public LocalSocketServer(String str, String str2, SocketHandler socketHandler) {
        this.mFriendlyName = (String) Util.throwIfNull(str);
        this.mAddress = (String) Util.throwIfNull(str2);
        this.mSocketHandler = socketHandler;
    }

    @Nonnull
    private static LocalServerSocket bindToSocket(String str) throws IOException {
        int i = 2;
        BindException bindException = null;
        while (true) {
            try {
                if (LogUtil.isLoggable(3)) {
                    LogUtil.m377d("Trying to bind to @" + str);
                }
                return new LocalServerSocket(str);
            } catch (BindException e) {
                LogUtil.m359w(e, "Binding error, sleep 1000 ms...");
                BindException bindException2 = bindException;
                if (bindException == null) {
                    bindException2 = e;
                }
                Util.sleepUninterruptibly(1000L);
                if (i <= 0) {
                    throw bindException2;
                }
                i--;
                bindException = bindException2;
            }
        }
    }

    private void listenOnAddress(String str) throws IOException {
        this.mServerSocket = bindToSocket(str);
        LogUtil.m369i("Listening on @" + str);
        while (!Thread.interrupted()) {
            try {
                WorkerThread workerThread = new WorkerThread(this.mServerSocket.accept(), this.mSocketHandler);
                workerThread.setName("StethoWorker-" + this.mFriendlyName + HelpFormatter.DEFAULT_OPT_PREFIX + this.mThreadId.incrementAndGet());
                workerThread.setDaemon(true);
                workerThread.start();
            } catch (InterruptedIOException e) {
            } catch (SocketException e2) {
                if (Thread.interrupted()) {
                    break;
                }
                LogUtil.m359w(e2, "I/O error");
            } catch (IOException e3) {
                LogUtil.m359w(e3, "I/O error initialising connection thread");
            }
        }
        LogUtil.m369i("Server shutdown on @" + str);
    }

    public String getName() {
        return this.mFriendlyName;
    }

    public void run() throws IOException {
        synchronized (this) {
            if (!this.mStopped) {
                this.mListenerThread = Thread.currentThread();
                listenOnAddress(this.mAddress);
            }
        }
    }

    public void stop() {
        synchronized (this) {
            this.mStopped = true;
            if (this.mListenerThread != null) {
                this.mListenerThread.interrupt();
                try {
                    if (this.mServerSocket != null) {
                        this.mServerSocket.close();
                    }
                } catch (IOException e) {
                }
            }
        }
    }
}
