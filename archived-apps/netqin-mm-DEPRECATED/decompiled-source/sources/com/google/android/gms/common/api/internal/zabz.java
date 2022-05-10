package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.concurrent.NumberedThreadFactory;
import com.google.android.gms.internal.base.zal;
import com.google.android.gms.internal.base.zaq;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabz.class */
public final class zabz {

    /* renamed from: a */
    public static final ExecutorService f23256a = zal.m10878a().mo10876a(new NumberedThreadFactory("GAC_Transform"), zaq.f29195a);

    /* renamed from: a */
    public static ExecutorService m17509a() {
        return f23256a;
    }
}
