package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdzv;
import com.google.android.gms.internal.ads.zzear;
import com.google.android.gms.internal.ads.zzeax;
import com.google.android.gms.internal.ads.zzede;
import com.google.android.gms.internal.ads.zzedh;
import com.google.android.gms.internal.ads.zzedi;
import com.google.android.gms.internal.ads.zzedu;
import com.google.android.gms.internal.ads.zzedx;
import com.google.android.gms.internal.ads.zzeet;
import com.google.android.gms.internal.ads.zzefe;
import com.google.android.gms.internal.ads.zzegs;
import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzejm;
import com.google.android.gms.internal.ads.zzejz;
import com.google.android.gms.internal.ads.zzekj;
import java.security.GeneralSecurityException;
import java.util.Arrays;
/* renamed from: c.d.b.d.g.a.a40 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/a40.class */
public final class a40 implements zzegs {

    /* renamed from: a */
    public final String f12061a;

    /* renamed from: b */
    public final int f12062b;

    /* renamed from: c */
    public zzedu f12063c;

    /* renamed from: d */
    public zzede f12064d;

    /* renamed from: e */
    public int f12065e;

    public a40(zzefe zzefeVar) throws GeneralSecurityException {
        String m = zzefeVar.m12681m();
        this.f12061a = m;
        if (m.equals(zzeax.f27984b)) {
            try {
                zzedx a = zzedx.m12788a(zzefeVar.m12680n(), zzejm.m12419a());
                this.f12063c = (zzedu) zzear.m12915b(zzefeVar);
                this.f12062b = a.m12787m();
            } catch (zzekj e) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e);
            }
        } else if (this.f12061a.equals(zzeax.f27983a)) {
            try {
                zzedh a2 = zzedh.m12849a(zzefeVar.m12680n(), zzejm.m12419a());
                this.f12064d = (zzede) zzear.m12915b(zzefeVar);
                this.f12065e = a2.m12848m().m12828m();
                this.f12062b = this.f12065e + a2.m12847n().m12704m();
            } catch (zzekj e2) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e2);
            }
        } else {
            String valueOf = String.valueOf(this.f12061a);
            throw new GeneralSecurityException(valueOf.length() != 0 ? "unsupported AEAD DEM key type: ".concat(valueOf) : new String("unsupported AEAD DEM key type: "));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzegs
    /* renamed from: a */
    public final int mo12574a() {
        return this.f12062b;
    }

    @Override // com.google.android.gms.internal.ads.zzegs
    /* renamed from: a */
    public final zzdzv mo12573a(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length != this.f12062b) {
            throw new GeneralSecurityException("Symmetric key has incorrect length");
        } else if (this.f12061a.equals(zzeax.f27984b)) {
            zzedu.zza o = zzedu.m12792o();
            o.m12386a((zzedu.zza) this.f12063c);
            zzedu.zza zzaVar = o;
            zzaVar.m12789a(zzeip.zzi(bArr, 0, this.f12062b));
            return (zzdzv) zzear.m12920a(this.f12061a, (zzedu) ((zzejz) zzaVar.mo12342K()), zzdzv.class);
        } else if (this.f12061a.equals(zzeax.f27983a)) {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, this.f12065e);
            byte[] copyOfRange2 = Arrays.copyOfRange(bArr, this.f12065e, this.f12062b);
            zzedi.zza p = zzedi.m12835p();
            p.m12386a((zzedi.zza) this.f12064d.m12856n());
            zzedi.zza zzaVar2 = p;
            zzaVar2.m12830a(zzeip.zzu(copyOfRange));
            zzedi zzediVar = (zzedi) ((zzejz) zzaVar2.mo12342K());
            zzeet.zza p2 = zzeet.m12711p();
            p2.m12386a((zzeet.zza) this.f12064d.m12855o());
            zzeet.zza zzaVar3 = p2;
            zzaVar3.m12706a(zzeip.zzu(copyOfRange2));
            zzeet zzeetVar = (zzeet) ((zzejz) zzaVar3.mo12342K());
            zzede.zza p3 = zzede.m12854p();
            p3.m12852a(this.f12064d.m12857m());
            p3.m12851a(zzediVar);
            p3.m12850a(zzeetVar);
            return (zzdzv) zzear.m12920a(this.f12061a, (zzede) ((zzejz) p3.mo12342K()), zzdzv.class);
        } else {
            throw new GeneralSecurityException("unknown DEM key type");
        }
    }
}
