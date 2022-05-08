package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.model.FeatureState;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.api.p3 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/p3.class */
public final /* synthetic */ class C1761p3 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1761p3 f13403f = new C1761p3();

    private /* synthetic */ C1761p3() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        TmoSubscriptionCheck.m6590h((FeatureState) obj);
    }
}
