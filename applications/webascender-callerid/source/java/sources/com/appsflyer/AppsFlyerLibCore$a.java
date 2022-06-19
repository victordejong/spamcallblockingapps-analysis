package com.appsflyer;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$a.class */
final class AppsFlyerLibCore$a implements Runnable {

    /* renamed from: ǃ */
    private /* synthetic */ AppsFlyerLibCore f2916;

    /* renamed from: ι */
    private AFEvent f2917;

    private AppsFlyerLibCore$a(AppsFlyerLibCore appsFlyerLibCore, AFEvent aFEvent) {
        this.f2916 = appsFlyerLibCore;
        this.f2917 = aFEvent;
    }

    /* synthetic */ AppsFlyerLibCore$a(AppsFlyerLibCore appsFlyerLibCore, AFEvent aFEvent, byte b) {
        this(appsFlyerLibCore, aFEvent);
    }

    @Override // java.lang.Runnable
    public final void run() {
        AppsFlyerLibCore appsFlyerLibCore = this.f2916;
        AFEvent aFEvent = this.f2917;
        aFEvent.f2841 = aFEvent.f2838.get();
        AppsFlyerLibCore.ι(appsFlyerLibCore, aFEvent);
    }
}
