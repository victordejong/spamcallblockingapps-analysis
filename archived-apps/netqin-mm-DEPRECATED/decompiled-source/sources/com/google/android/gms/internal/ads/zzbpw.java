package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbpw;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpw.class */
public final class zzbpw extends zzboq {

    /* renamed from: h */
    public final zzafy f25338h;

    /* renamed from: i */
    public final Runnable f25339i;

    /* renamed from: j */
    public final Executor f25340j;

    public zzbpw(zzbqn zzbqnVar, zzafy zzafyVar, Runnable runnable, Executor executor) {
        super(zzbqnVar);
        this.f25338h = zzafyVar;
        this.f25339i = runnable;
        this.f25340j = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    /* renamed from: a */
    public final void mo15199a(ViewGroup viewGroup, zzvn zzvnVar) {
    }

    /* renamed from: a */
    public final /* synthetic */ void m15198a(Runnable runnable) {
        try {
            if (!this.f25338h.mo16795I(ObjectWrapper.m17020a(runnable))) {
                runnable.run();
            }
        } catch (RemoteException e) {
            runnable.run();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqo
    /* renamed from: b */
    public final void mo14749b() {
        final AtomicReference atomicReference = new AtomicReference(this.f25339i);
        final Runnable tcVar = new Runnable(atomicReference) { // from class: c.d.b.d.g.a.tc

            /* renamed from: a */
            public final AtomicReference f15391a;

            {
                this.f15391a = atomicReference;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Runnable runnable = (Runnable) this.f15391a.getAndSet(null);
                if (runnable != null) {
                    runnable.run();
                }
            }
        };
        this.f25340j.execute(new Runnable(this, tcVar) { // from class: c.d.b.d.g.a.uc

            /* renamed from: a */
            public final zzbpw f15631a;

            /* renamed from: b */
            public final Runnable f15632b;

            {
                this.f15631a = this;
                this.f15632b = tcVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f15631a.m15198a(this.f15632b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    /* renamed from: g */
    public final zzyo mo15197g() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    /* renamed from: h */
    public final zzdnu mo15196h() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    /* renamed from: i */
    public final View mo15195i() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    /* renamed from: j */
    public final zzdnu mo15194j() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    /* renamed from: k */
    public final int mo15193k() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    /* renamed from: l */
    public final void mo15192l() {
    }
}
