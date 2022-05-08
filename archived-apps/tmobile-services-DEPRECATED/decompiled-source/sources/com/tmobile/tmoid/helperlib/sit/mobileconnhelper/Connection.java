package com.tmobile.tmoid.helperlib.sit.mobileconnhelper;

import android.net.Network;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/mobileconnhelper/Connection.class */
public class Connection {

    /* renamed from: a */
    private final Network f14908a;

    /* renamed from: b */
    private final String f14909b;

    /* renamed from: c */
    private Runnable f14910c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Connection(Network network, String str) {
        this.f14908a = network;
        this.f14909b = str;
    }

    public Connection(String str) {
        this(null, str);
    }

    /* renamed from: a */
    public Network m4701a() {
        return this.f14908a;
    }

    /* renamed from: b */
    public String m4700b() {
        return this.f14909b;
    }

    /* renamed from: c */
    public void m4699c() {
        Runnable runnable = this.f14910c;
        if (runnable != null) {
            runnable.run();
            this.f14910c = null;
        }
    }

    /* renamed from: d */
    public void m4698d(Runnable runnable) {
        this.f14910c = runnable;
    }
}
