package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Response.class */
public class Response<T extends Result> {

    /* renamed from: a */
    private T f6223a;

    public Response() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Response(T t) {
        this.f6223a = t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final T m5972a() {
        return this.f6223a;
    }

    public void setResult(T t) {
        this.f6223a = t;
    }
}
