package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.api.y */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/y.class */
public final /* synthetic */ class C1798y implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1798y f13457f = new C1798y();

    private /* synthetic */ C1798y() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        LogUtil.m5641f("ApiWrapper#", "Failed to update setting", (Throwable) obj);
    }
}
