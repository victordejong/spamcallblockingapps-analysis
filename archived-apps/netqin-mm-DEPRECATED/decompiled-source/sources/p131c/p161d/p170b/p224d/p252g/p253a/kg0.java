package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbbz;
import com.google.android.gms.internal.ads.zzbcg;
import com.google.android.gms.internal.ads.zzdzb;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzsz;
import com.google.android.gms.internal.ads.zztb;
import com.google.android.gms.internal.ads.zzte;
import com.google.android.gms.internal.ads.zztk;
import java.io.IOException;
import java.util.concurrent.Future;
/* renamed from: c.d.b.d.g.a.kg0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/kg0.class */
public final class kg0 implements BaseGmsClient.BaseConnectionCallbacks {

    /* renamed from: a */
    public final /* synthetic */ zzte f13883a;

    /* renamed from: b */
    public final /* synthetic */ zzbcg f13884b;

    /* renamed from: c */
    public final /* synthetic */ zztk f13885c;

    public kg0(zztk zztkVar, zzte zzteVar, zzbcg zzbcgVar) {
        this.f13885c = zztkVar;
        this.f13883a = zzteVar;
        this.f13884b = zzbcgVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Object obj;
        boolean z;
        final zztb zztbVar;
        obj = this.f13885c.f28980d;
        synchronized (obj) {
            z = this.f13885c.f28978b;
            if (!z) {
                this.f13885c.f28978b = true;
                zztbVar = this.f13885c.f28977a;
                if (zztbVar != null) {
                    zzdzb zzdzbVar = zzbbz.f24764a;
                    final zzte zzteVar = this.f13883a;
                    final zzbcg zzbcgVar = this.f13884b;
                    final zzdzc<?> a = zzdzbVar.mo12978a(new Runnable(this, zztbVar, zzteVar, zzbcgVar) { // from class: c.d.b.d.g.a.jg0

                        /* renamed from: a */
                        public final kg0 f13784a;

                        /* renamed from: b */
                        public final zztb f13785b;

                        /* renamed from: c */
                        public final zzte f13786c;

                        /* renamed from: d */
                        public final zzbcg f13787d;

                        {
                            this.f13784a = this;
                            this.f13785b = zztbVar;
                            this.f13786c = zzteVar;
                            this.f13787d = zzbcgVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            kg0 kg0Var = this.f13784a;
                            zztb zztbVar2 = this.f13785b;
                            zzte zzteVar2 = this.f13786c;
                            zzbcg zzbcgVar2 = this.f13787d;
                            try {
                                zzsz a2 = zztbVar2.m11440H().mo11436a(zzteVar2);
                                if (!a2.m11446f()) {
                                    zzbcgVar2.m15834a((Throwable) new RuntimeException("No entry contents."));
                                    kg0Var.f13885c.m11435a();
                                    return;
                                }
                                lg0 lg0Var = new lg0(kg0Var, a2.m11445i(), 1);
                                int read = lg0Var.read();
                                if (read != -1) {
                                    lg0Var.unread(read);
                                    zzbcgVar2.m15835a((zzbcg) lg0Var);
                                    return;
                                }
                                throw new IOException("Unable to read from cache.");
                            } catch (RemoteException | IOException e) {
                                zzbbq.m15855b("Unable to obtain a cache service instance.", e);
                                zzbcgVar2.m15834a(e);
                                kg0Var.f13885c.m11435a();
                            }
                        }
                    });
                    zzbcg zzbcgVar2 = this.f13884b;
                    final zzbcg zzbcgVar3 = this.f13884b;
                    zzbcgVar2.mo12976a(new Runnable(zzbcgVar3, a) { // from class: c.d.b.d.g.a.mg0

                        /* renamed from: a */
                        public final zzbcg f14172a;

                        /* renamed from: b */
                        public final Future f14173b;

                        {
                            this.f14172a = zzbcgVar3;
                            this.f14173b = a;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            zzbcg zzbcgVar4 = this.f14172a;
                            Future future = this.f14173b;
                            if (zzbcgVar4.isCancelled()) {
                                future.cancel(true);
                            }
                        }
                    }, zzbbz.f24769f);
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
