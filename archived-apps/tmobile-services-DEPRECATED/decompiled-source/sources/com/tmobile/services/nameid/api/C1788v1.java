package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.api.v1 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/v1.class */
public final /* synthetic */ class C1788v1 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1788v1 f13442f = new C1788v1();

    private /* synthetic */ C1788v1() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        Throwable th = (Throwable) obj;
        LogUtil.m5643d("MetroApiWrapper#setAccountStatusMetro", "error while subscribing ... " + th.getMessage());
    }
}
