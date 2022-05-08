package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.common.a.d;
import com.google.android.gms.common.a.e;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ao.class */
public final class ao implements com.google.android.gms.clearcut.b {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f4119a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static final c f4120b = new c((byte) 0);
    private static final long c = TimeUnit.MILLISECONDS.convert(2, TimeUnit.MINUTES);
    private final d d;
    private final a e;
    private final Object f;
    private long g;
    private final long h;
    private ScheduledFuture<?> i;
    private com.google.android.gms.common.api.b j;
    private final Runnable k;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ao$a.class */
    public interface a {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ao$b.class */
    public static final class b implements a {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ao$c.class */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        private int f4122a;

        private c() {
            this.f4122a = 0;
        }

        /* synthetic */ c(byte b2) {
            this();
        }
    }

    public ao() {
        this(new e(), c, new b());
    }

    private ao(d dVar, long j, a aVar) {
        this.f = new Object();
        this.g = 0L;
        this.i = null;
        this.j = null;
        this.k = new Runnable() { // from class: com.google.android.gms.internal.ao.1
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (ao.this.f) {
                    if (ao.a() <= ao.this.d.b() && ao.this.j != null) {
                        Log.i("ClearcutLoggerApiImpl", "disconnect managed GoogleApiClient");
                        ao.this.j.a();
                        ao.this.j = null;
                    }
                }
            }
        };
        this.d = dVar;
        this.h = j;
        this.e = aVar;
    }

    static /* synthetic */ long a() {
        return 0L;
    }
}
