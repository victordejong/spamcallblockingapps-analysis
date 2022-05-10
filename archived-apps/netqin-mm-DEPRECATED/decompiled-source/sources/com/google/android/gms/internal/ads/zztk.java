package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.ads.internal.zzp;
import java.io.InputStream;
import java.util.concurrent.Future;
import p131c.p161d.p170b.p224d.p252g.p253a.ig0;
import p131c.p161d.p170b.p224d.p252g.p253a.kg0;
import p131c.p161d.p170b.p224d.p252g.p253a.ng0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztk.class */
public final class zztk {

    /* renamed from: a */
    public zztb f28977a;

    /* renamed from: b */
    public boolean f28978b;

    /* renamed from: c */
    public final Context f28979c;

    /* renamed from: d */
    public final Object f28980d = new Object();

    public zztk(Context context) {
        this.f28979c = context;
    }

    /* renamed from: a */
    public final Future<InputStream> m11434a(zzte zzteVar) {
        ig0 ig0Var = new ig0(this);
        kg0 kg0Var = new kg0(this, zzteVar, ig0Var);
        ng0 ng0Var = new ng0(this, ig0Var);
        synchronized (this.f28980d) {
            zztb zztbVar = new zztb(this.f28979c, zzp.m17955q().m15947b(), kg0Var, ng0Var);
            this.f28977a = zztbVar;
            zztbVar.m17350p();
        }
        return ig0Var;
    }

    /* renamed from: a */
    public final void m11435a() {
        synchronized (this.f28980d) {
            if (this.f28977a != null) {
                this.f28977a.mo10491b();
                this.f28977a = null;
                Binder.flushPendingCommands();
            }
        }
    }
}
