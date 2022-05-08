package com.bumptech.glide.load.b;

import android.util.Log;
import com.bumptech.glide.g.e;
import com.bumptech.glide.i.d;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/i.class */
public final class i implements com.bumptech.glide.load.b.c.b, Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final com.bumptech.glide.load.b.a<?, ?, ?> f3549a;

    /* renamed from: b  reason: collision with root package name */
    public volatile boolean f3550b;
    private final int c;
    private final a d;
    private int e = b.f3551a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/i$a.class */
    public interface a extends e {
        void a(i iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/i$b.class */
    public static final class b extends Enum<b> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f3551a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f3552b = 2;
        private static final /* synthetic */ int[] c = {f3551a, f3552b};
    }

    public i(a aVar, com.bumptech.glide.load.b.a<?, ?, ?> aVar2, int i) {
        this.d = aVar;
        this.f3549a = aVar2;
        this.c = i;
    }

    private boolean b() {
        return this.e == b.f3551a;
    }

    private k<?> c() {
        k<?> kVar = null;
        try {
            com.bumptech.glide.load.b.a<?, ?, ?> aVar = this.f3549a;
            if (!aVar.c.f) {
                kVar = null;
            } else {
                long a2 = d.a();
                k<?> a3 = aVar.a(aVar.f3484a);
                if (Log.isLoggable("DecodeJob", 2)) {
                    aVar.a("Decoded transformed from cache", a2);
                }
                long a4 = d.a();
                k<?> b2 = aVar.b(a3);
                kVar = b2;
                if (Log.isLoggable("DecodeJob", 2)) {
                    aVar.a("Transcoded transformed from cache", a4);
                    kVar = b2;
                }
            }
        } catch (Exception e) {
            if (Log.isLoggable("EngineRunnable", 3)) {
                Log.d("EngineRunnable", "Exception decoding result from cache: " + e);
            }
            kVar = null;
        }
        if (kVar == null) {
            com.bumptech.glide.load.b.a<?, ?, ?> aVar2 = this.f3549a;
            if (aVar2.c.e) {
                long a5 = d.a();
                k<?> a6 = aVar2.a(aVar2.f3484a.a());
                if (Log.isLoggable("DecodeJob", 2)) {
                    aVar2.a("Decoded source from cache", a5);
                }
                kVar = aVar2.a(a6);
            }
        }
        return kVar;
    }

    @Override // com.bumptech.glide.load.b.c.b
    public final int a() {
        return this.c - 1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k<?> kVar;
        Exception exc;
        if (!this.f3550b) {
            try {
                if (b()) {
                    kVar = c();
                } else {
                    com.bumptech.glide.load.b.a<?, ?, ?> aVar = this.f3549a;
                    kVar = aVar.a(aVar.a());
                }
                exc = null;
            } catch (Exception e) {
                if (Log.isLoggable("EngineRunnable", 2)) {
                    Log.v("EngineRunnable", "Exception decoding", e);
                }
                kVar = null;
                exc = e;
            }
            if (this.f3550b) {
                if (kVar != null) {
                    kVar.c();
                }
            } else if (kVar != null) {
                this.d.a(kVar);
            } else if (b()) {
                this.e = b.f3552b;
                this.d.a(this);
            } else {
                this.d.a(exc);
            }
        }
    }
}
