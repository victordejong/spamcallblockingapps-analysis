package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final Integer f4183a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final Integer f4184b = 1;
    private final Context c;
    private final ExecutorService d;

    public d(Context context) {
        this(context, Executors.newSingleThreadExecutor());
    }

    private d(Context context, ExecutorService executorService) {
        this.c = context;
        this.d = executorService;
    }
}
