package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabm.class */
public interface zabm {
    /* renamed from: a */
    <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo17518a(T t);

    /* renamed from: a */
    void mo17519a();

    /* renamed from: a */
    void mo17517a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* renamed from: b */
    void mo17516b();

    /* renamed from: c */
    void mo17515c();

    /* renamed from: d */
    boolean mo17514d();
}
