package com.vladlee.easyblacklist;

import android.app.Application;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/CallsBlacklistApp.class */
public class CallsBlacklistApp extends Application {

    /* renamed from: b */
    private C3311bt f19245b = new C3311bt();

    /* renamed from: a */
    HashMap<String, String> f19244a = null;

    /* renamed from: a */
    public final void m356a() {
        this.f19245b.m221b(this);
    }

    /* renamed from: b */
    public final C3311bt m355b() {
        return this.f19245b;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
    }
}
