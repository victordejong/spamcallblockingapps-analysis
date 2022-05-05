package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acb.class */
abstract class acb<InputT, OutputT> extends acd<OutputT> {

    /* renamed from: a */
    private static final Logger f7197a = Logger.getLogger(acb.class.getName());
    @NullableDecl

    /* renamed from: b */
    private zzdet<? extends zzdhe<? extends InputT>> f7198b;

    /* renamed from: c */
    private final boolean f7199c;

    /* renamed from: d */
    private final boolean f7200d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.acb$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acb$a.class */
    public enum EnumC1718a {
        OUTPUT_FUTURE_DONE,
        ALL_INPUT_FUTURES_PROCESSED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public acb(zzdet<? extends zzdhe<? extends InputT>> zzdetVar, boolean z, boolean z2) {
        super(zzdetVar.size());
        this.f7198b = (zzdet) zzdei.checkNotNull(zzdetVar);
        this.f7199c = z;
        this.f7200d = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m5485a(int i, Future<? extends InputT> future) {
        try {
            mo5468a(i, (int) zzdgs.zzb(future));
        } catch (ExecutionException e) {
            m5481a(e.getCause());
        } catch (Throwable th) {
            m5481a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m5482a(acb acbVar, zzdet zzdetVar) {
        int k = acbVar.m5472k();
        int i = 0;
        if (!(k >= 0)) {
            throw new IllegalStateException("Less than 0 remaining futures");
        } else if (k == 0) {
            if (zzdetVar != null) {
                zzdfp zzdfpVar = (zzdfp) zzdetVar.iterator();
                while (zzdfpVar.hasNext()) {
                    Future<? extends InputT> future = (Future) zzdfpVar.next();
                    if (!future.isCancelled()) {
                        acbVar.m5485a(i, (Future) future);
                    }
                    i++;
                }
            }
            acbVar.m5471l();
            acbVar.mo5465i();
            acbVar.mo5467a(EnumC1718a.ALL_INPUT_FUTURES_PROCESSED);
        }
    }

    /* renamed from: a */
    private final void m5481a(Throwable th) {
        zzdei.checkNotNull(th);
        if (this.f7199c && !setException(th) && m5480a(m5473j(), th)) {
            m5479b(th);
        } else if (th instanceof Error) {
            m5479b(th);
        }
    }

    /* renamed from: a */
    private static boolean m5480a(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    /* renamed from: b */
    private static void m5479b(Throwable th) {
        f7197a.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdfs
    /* renamed from: a */
    public final String mo3577a() {
        zzdet<? extends zzdhe<? extends InputT>> zzdetVar = this.f7198b;
        if (zzdetVar == null) {
            return null;
        }
        String valueOf = String.valueOf(zzdetVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 10);
        sb.append("futures=[");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: a */
    abstract void mo5468a(int i, @NullableDecl InputT inputt);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void mo5467a(EnumC1718a aVar) {
        zzdei.checkNotNull(aVar);
        this.f7198b = null;
    }

    @Override // com.google.android.gms.internal.ads.acd
    /* renamed from: a */
    final void mo5475a(Set<Throwable> set) {
        zzdei.checkNotNull(set);
        if (!isCancelled()) {
            m5480a(set, mo3543e());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdfs
    /* renamed from: b */
    public final void mo3566b() {
        super.mo3566b();
        zzdet<? extends zzdhe<? extends InputT>> zzdetVar = this.f7198b;
        mo5467a(EnumC1718a.OUTPUT_FUTURE_DONE);
        if (isCancelled() && (zzdetVar != null)) {
            boolean d = m3558d();
            zzdfp zzdfpVar = (zzdfp) zzdetVar.iterator();
            while (zzdfpVar.hasNext()) {
                ((Future) zzdfpVar.next()).cancel(d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m5478h() {
        if (this.f7198b.isEmpty()) {
            mo5465i();
        } else if (this.f7199c) {
            int i = 0;
            zzdfp zzdfpVar = (zzdfp) this.f7198b.iterator();
            while (zzdfpVar.hasNext()) {
                zzdhe zzdheVar = (zzdhe) zzdfpVar.next();
                zzdheVar.addListener(new aca(this, zzdheVar, i), acj.INSTANCE);
                i++;
            }
        } else {
            acc accVar = new acc(this, this.f7200d ? this.f7198b : null);
            zzdfp zzdfpVar2 = (zzdfp) this.f7198b.iterator();
            while (zzdfpVar2.hasNext()) {
                ((zzdhe) zzdfpVar2.next()).addListener(accVar, acj.INSTANCE);
            }
        }
    }

    /* renamed from: i */
    abstract void mo5465i();
}
