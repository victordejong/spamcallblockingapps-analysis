package com.tmobile.services.nameid;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.o */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/o.class */
public final /* synthetic */ class C1835o implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1835o f13625f = new C1835o();

    private /* synthetic */ C1835o() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        Throwable th = (Throwable) obj;
        LogUtil.m5643d("MainActivity#", "Could not retrieve feature state.");
    }
}
