package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.concurrent.NumberedThreadFactory;
import com.google.android.gms.internal.base.zan;
import com.google.android.gms.internal.base.zao;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabf.class */
public final class zabf {

    /* renamed from: a */
    private static final ExecutorService f6496a = zan.zact().zaa(2, new NumberedThreadFactory("GAC_Executor"), zao.zasg);

    public static ExecutorService zaaz() {
        return f6496a;
    }
}
