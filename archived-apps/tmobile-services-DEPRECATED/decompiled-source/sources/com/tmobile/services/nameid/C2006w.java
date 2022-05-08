package com.tmobile.services.nameid;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.w */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/w.class */
public final /* synthetic */ class C2006w implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C2006w f14629f = new C2006w();

    private /* synthetic */ C2006w() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        Throwable th = (Throwable) obj;
        LogUtil.m5639h("MainApplication#notifyScreenChange", "Error encountered " + th.getMessage());
    }
}
