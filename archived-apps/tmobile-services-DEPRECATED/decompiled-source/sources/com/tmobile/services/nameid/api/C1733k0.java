package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.model.Caller;
import io.reactivex.functions.Function;
/* renamed from: com.tmobile.services.nameid.api.k0 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/k0.class */
public final /* synthetic */ class C1733k0 implements Function {

    /* renamed from: f */
    public static final /* synthetic */ C1733k0 f13341f = new C1733k0();

    private /* synthetic */ C1733k0() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Caller caller = (Caller) obj;
        ApiWrapper.m6812D(caller);
        return caller;
    }
}
