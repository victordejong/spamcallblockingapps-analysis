package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdlw;
import com.google.android.gms.internal.ads.zzdlx;
import com.google.android.gms.internal.ads.zzdqj;
import com.google.android.gms.internal.ads.zzdqy;
import com.google.android.gms.internal.ads.zzvg;
import com.google.android.gms.internal.ads.zzvs;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.g.a.ow */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ow.class */
public final class C3894ow<R> implements zzdqy {

    /* renamed from: a */
    public final zzdlx<R> f14361a;

    /* renamed from: b */
    public final zzdlw f14362b;

    /* renamed from: c */
    public final zzvg f14363c;

    /* renamed from: d */
    public final String f14364d;

    /* renamed from: e */
    public final Executor f14365e;

    /* renamed from: f */
    public final zzvs f14366f;

    /* renamed from: g */
    public final zzdqj f14367g;

    public C3894ow(zzdlx<R> zzdlxVar, zzdlw zzdlwVar, zzvg zzvgVar, String str, Executor executor, zzvs zzvsVar, zzdqj zzdqjVar) {
        this.f14361a = zzdlxVar;
        this.f14362b = zzdlwVar;
        this.f14363c = zzvgVar;
        this.f14364d = str;
        this.f14365e = executor;
        this.f14366f = zzvsVar;
        this.f14367g = zzdqjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdqy
    /* renamed from: a */
    public final zzdqj mo13290a() {
        return this.f14367g;
    }

    @Override // com.google.android.gms.internal.ads.zzdqy
    /* renamed from: b */
    public final Executor mo13289b() {
        return this.f14365e;
    }

    @Override // com.google.android.gms.internal.ads.zzdqy
    /* renamed from: c */
    public final zzdqy mo13288c() {
        return new C3894ow(this.f14361a, this.f14362b, this.f14363c, this.f14364d, this.f14365e, this.f14366f, this.f14367g);
    }
}
