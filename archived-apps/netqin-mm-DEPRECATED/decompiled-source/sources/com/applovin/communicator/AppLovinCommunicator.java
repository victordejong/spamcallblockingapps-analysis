package com.applovin.communicator;

import android.content.Context;
import com.applovin.impl.communicator.MessagingServiceImpl;
import java.util.Collections;
import java.util.List;
import p131c.p135b.p136a.p142c.C2114a;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
/* loaded from: classes-dex2jar.jar:com/applovin/communicator/AppLovinCommunicator.class */
public final class AppLovinCommunicator {

    /* renamed from: e */
    public static AppLovinCommunicator f21086e;

    /* renamed from: f */
    public static final Object f21087f = new Object();

    /* renamed from: a */
    public C2341l f21088a;

    /* renamed from: b */
    public C2374t f21089b;

    /* renamed from: c */
    public final C2114a f21090c;

    /* renamed from: d */
    public final MessagingServiceImpl f21091d;

    public AppLovinCommunicator(Context context) {
        this.f21090c = new C2114a(context);
        this.f21091d = new MessagingServiceImpl(context);
    }

    public static AppLovinCommunicator getInstance(Context context) {
        synchronized (f21087f) {
            if (f21086e == null) {
                f21086e = new AppLovinCommunicator(context.getApplicationContext());
            }
        }
        return f21086e;
    }

    /* renamed from: a */
    public void m19476a(C2341l lVar) {
        this.f21088a = lVar;
        this.f21089b = lVar.m30262d0();
        m19475a("Attached SDK instance: " + lVar + "...");
    }

    /* renamed from: a */
    public final void m19475a(String str) {
        C2374t tVar = this.f21089b;
        if (tVar != null) {
            tVar.m30044b("AppLovinCommunicator", str);
        }
    }

    public AppLovinCommunicatorMessagingService getMessagingService() {
        return this.f21091d;
    }

    public void subscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        subscribe(appLovinCommunicatorSubscriber, Collections.singletonList(str));
    }

    public void subscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, List<String> list) {
        for (String str : list) {
            if (this.f21090c.m31027a(appLovinCommunicatorSubscriber, str)) {
                this.f21091d.maybeFlushStickyMessages(str);
            } else {
                m19475a("Unable to subscribe " + appLovinCommunicatorSubscriber + " to topic: " + str);
            }
        }
    }

    public String toString() {
        return "AppLovinCommunicator{sdk=" + this.f21088a + '}';
    }

    public void unsubscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        unsubscribe(appLovinCommunicatorSubscriber, Collections.singletonList(str));
    }

    public void unsubscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, List<String> list) {
        for (String str : list) {
            m19475a("Unsubscribing " + appLovinCommunicatorSubscriber + " from topic: " + str);
            this.f21090c.m31025b(appLovinCommunicatorSubscriber, str);
        }
    }
}
