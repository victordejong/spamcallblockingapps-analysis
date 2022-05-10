package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzasw;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzazy;
import com.google.android.gms.internal.ads.zzcqv;
import com.google.android.gms.internal.ads.zzdyr;
/* renamed from: c.d.b.d.g.a.qn */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/qn.class */
public final class C3959qn implements zzdyr<ParcelFileDescriptor> {

    /* renamed from: a */
    public final /* synthetic */ zzasw f14828a;

    public C3959qn(zzcqv zzcqvVar, zzasw zzaswVar) {
        this.f14828a = zzaswVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        try {
            this.f14828a.mo13940a(zzazy.m15991a(th));
        } catch (RemoteException e) {
            zzayp.m16154e("Service can't call client", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            this.f14828a.mo13941a(parcelFileDescriptor);
        } catch (RemoteException e) {
            zzayp.m16154e("Service can't call client", e);
        }
    }
}
