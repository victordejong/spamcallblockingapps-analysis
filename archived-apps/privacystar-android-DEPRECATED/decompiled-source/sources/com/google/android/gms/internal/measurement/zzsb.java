package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzsb.class */
public final class zzsb {
    private static final Integer zzbqb = 0;
    private static final Integer zzbqc = 1;
    private final ExecutorService zzaea;
    private final Context zzri;

    public zzsb(Context context) {
        this(context, Executors.newSingleThreadExecutor());
    }

    @VisibleForTesting
    private zzsb(Context context, ExecutorService executorService) {
        this.zzri = context;
        this.zzaea = executorService;
    }
}
