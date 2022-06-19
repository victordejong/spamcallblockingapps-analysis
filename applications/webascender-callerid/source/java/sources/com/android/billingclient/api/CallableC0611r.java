package com.android.billingclient.api;

import java.util.List;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.android.billingclient.api.r */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/r.class */
public final class CallableC0611r implements Callable<Void> {

    /* renamed from: f */
    final /* synthetic */ String f2775f;

    /* renamed from: g */
    final /* synthetic */ List f2776g;

    /* renamed from: h */
    final /* synthetic */ AbstractC0601m f2777h;

    /* renamed from: i */
    final /* synthetic */ d f2778i;

    CallableC0611r(d dVar, String str, List list, String str2, AbstractC0601m abstractC0601m) {
        this.f2778i = dVar;
        this.f2775f = str;
        this.f2776g = list;
        this.f2777h = abstractC0601m;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Void call() throws Exception {
        d.s(this.f2778i, new RunnableC0609q(this, this.f2778i.o(this.f2775f, this.f2776g, (String) null)));
        return null;
    }
}
