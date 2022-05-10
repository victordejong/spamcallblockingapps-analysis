package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbjv;
import com.google.android.gms.internal.ads.zzdju;
import com.google.android.gms.internal.ads.zzdjx;
import com.google.android.gms.internal.ads.zzepe;
/* renamed from: c.d.b.d.g.a.cb */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/cb.class */
public final class C3428cb implements zzdjx {

    /* renamed from: a */
    public Context f12539a;

    /* renamed from: b */
    public String f12540b;

    /* renamed from: c */
    public final /* synthetic */ zzbjv f12541c;

    public C3428cb(zzbjv zzbjvVar) {
        this.f12541c = zzbjvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdjx
    /* renamed from: a */
    public final zzdju mo13549a() {
        zzepe.m12188a(this.f12539a, Context.class);
        zzepe.m12188a(this.f12540b, String.class);
        return new C3539fb(this.f12541c, this.f12539a, this.f12540b);
    }

    @Override // com.google.android.gms.internal.ads.zzdjx
    /* renamed from: a */
    public final /* synthetic */ zzdjx mo13548a(Context context) {
        zzepe.m12189a(context);
        this.f12539a = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdjx
    /* renamed from: a */
    public final /* synthetic */ zzdjx mo13547a(String str) {
        zzepe.m12189a(str);
        this.f12540b = str;
        return this;
    }
}
