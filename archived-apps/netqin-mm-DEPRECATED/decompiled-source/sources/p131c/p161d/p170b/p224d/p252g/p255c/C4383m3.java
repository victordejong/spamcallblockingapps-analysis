package p131c.p161d.p170b.p224d.p252g.p255c;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.internal.clearcut.zzfz;
import com.google.android.gms.internal.clearcut.zzha;
import com.google.android.gms.internal.clearcut.zzj;
import com.google.android.gms.internal.clearcut.zzn;
/* renamed from: c.d.b.d.g.c.m3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/m3.class */
public final class C4383m3 extends BaseImplementation.ApiMethodImpl<Status, zzj> {

    /* renamed from: r */
    public final zze f16597r;

    public C4383m3(zze zzeVar, GoogleApiClient googleApiClient) {
        super(ClearcutLogger.f22967o, googleApiClient);
        this.f16597r = zzeVar;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public final /* synthetic */ Result mo17597a(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: a */
    public final /* synthetic */ void mo17729a(zzj zzjVar) throws RemoteException {
        zzj zzjVar2 = zzjVar;
        BinderC4388n3 n3Var = new BinderC4388n3(this);
        try {
            zze zzeVar = this.f16597r;
            if (zzeVar.f23002j != null && zzeVar.f23001i.f29308k.length == 0) {
                zzeVar.f23001i.f29308k = zzeVar.f23002j.zza();
            }
            if (zzeVar.f23003k != null && zzeVar.f23001i.f29315r.length == 0) {
                zzeVar.f23001i.f29315r = zzeVar.f23003k.zza();
            }
            zzha zzhaVar = zzeVar.f23001i;
            int c = zzhaVar.m10617c();
            byte[] bArr = new byte[c];
            zzfz.m10618a(zzhaVar, bArr, 0, c);
            zzeVar.f22994b = bArr;
            ((zzn) zzjVar2.m17344y()).mo10542a(n3Var, this.f16597r);
        } catch (RuntimeException e) {
            Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.MessageProducer ", e);
            m17727c(new Status(10, "MessageProducer"));
        }
    }
}
