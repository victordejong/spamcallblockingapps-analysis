package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzaph;
import com.google.android.gms.internal.ads.zzbuu;
import com.google.android.gms.internal.ads.zzccl;
import com.google.android.gms.internal.ads.zzccm;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzwm;
/* renamed from: c.d.b.d.g.a.kp */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/kp.class */
public final class C3739kp implements zzccm {

    /* renamed from: a */
    public final zzdnv f13902a;

    /* renamed from: b */
    public final zzaph f13903b;

    /* renamed from: c */
    public final boolean f13904c;

    /* renamed from: d */
    public zzbuu f13905d = null;

    public C3739kp(zzdnv zzdnvVar, zzaph zzaphVar, boolean z) {
        this.f13902a = zzdnvVar;
        this.f13903b = zzaphVar;
        this.f13904c = z;
    }

    /* renamed from: a */
    public final void m26708a(zzbuu zzbuuVar) {
        this.f13905d = zzbuuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzccm
    /* renamed from: a */
    public final void mo14809a(boolean z, Context context) throws zzccl {
        try {
            if (!(this.f13904c ? this.f13903b.mo16483L(ObjectWrapper.m17020a(context)) : this.f13903b.mo16466p(ObjectWrapper.m17020a(context)))) {
                throw new zzccl("Adapter failed to show.");
            } else if (this.f13905d != null) {
                if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23729Q0)).booleanValue() && this.f13902a.f27572S == 2) {
                    this.f13905d.m15032M();
                }
            }
        } catch (Throwable th) {
            throw new zzccl(th);
        }
    }
}
