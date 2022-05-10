package com.applovin.impl.communicator;

import android.content.Context;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorMessagingService;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/communicator/MessagingServiceImpl.class */
public class MessagingServiceImpl implements AppLovinCommunicatorMessagingService {

    /* renamed from: a */
    public final Context f21382a;

    /* renamed from: c */
    public final Queue<CommunicatorMessageImpl> f21384c = new LinkedList();

    /* renamed from: d */
    public final Object f21385d = new Object();

    /* renamed from: b */
    public final ScheduledThreadPoolExecutor f21383b = m19209a();

    /* renamed from: com.applovin.impl.communicator.MessagingServiceImpl$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/communicator/MessagingServiceImpl$a.class */
    public class RunnableC6967a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ CommunicatorMessageImpl f21386a;

        public RunnableC6967a(CommunicatorMessageImpl communicatorMessageImpl) {
            this.f21386a = communicatorMessageImpl;
        }

        @Override // java.lang.Runnable
        public void run() {
            AppLovinBroadcastManager.getInstance(MessagingServiceImpl.this.f21382a).sendBroadcastSync(this.f21386a, null);
        }
    }

    /* renamed from: com.applovin.impl.communicator.MessagingServiceImpl$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/communicator/MessagingServiceImpl$b.class */
    public class ThreadFactoryC6968b implements ThreadFactory {
        public ThreadFactoryC6968b(MessagingServiceImpl messagingServiceImpl) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "AppLovinSdk:com.applovin.communicator");
            thread.setPriority(10);
            thread.setDaemon(true);
            return thread;
        }
    }

    public MessagingServiceImpl(Context context) {
        this.f21382a = context;
    }

    /* renamed from: a */
    public final Queue<CommunicatorMessageImpl> m19206a(String str) {
        LinkedList linkedList;
        synchronized (this.f21385d) {
            try {
                linkedList = new LinkedList();
                for (CommunicatorMessageImpl communicatorMessageImpl : this.f21384c) {
                    if (communicatorMessageImpl.m19210c() && communicatorMessageImpl.getTopic().equals(str)) {
                        linkedList.add(communicatorMessageImpl);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return linkedList;
    }

    /* renamed from: a */
    public final ScheduledThreadPoolExecutor m19209a() {
        return new ScheduledThreadPoolExecutor(4, new ThreadFactoryC6968b(this));
    }

    /* renamed from: a */
    public final void m19208a(CommunicatorMessageImpl communicatorMessageImpl) {
        this.f21383b.execute(new RunnableC6967a(communicatorMessageImpl));
    }

    public void maybeFlushStickyMessages(String str) {
        for (CommunicatorMessageImpl communicatorMessageImpl : m19206a(str)) {
            m19208a(communicatorMessageImpl);
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorMessagingService
    public void publish(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        m19208a(appLovinCommunicatorMessage);
        synchronized (this.f21385d) {
            this.f21384c.add(appLovinCommunicatorMessage);
        }
    }

    public String toString() {
        return "MessagingServiceImpl{}";
    }
}
