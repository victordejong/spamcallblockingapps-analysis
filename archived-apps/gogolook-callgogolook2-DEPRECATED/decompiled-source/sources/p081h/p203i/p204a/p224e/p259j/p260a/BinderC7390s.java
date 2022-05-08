package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.mediation.zzb;
import com.google.android.gms.ads.zza;
import com.google.android.gms.ads.zzc;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzjo;
import com.mopub.common.AdType;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
/* renamed from: h.i.a.e.j.a.s */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/s.class */
public final class BinderC7390s extends AbstractBinderC7341o {

    /* renamed from: a */
    public final AbstractC7320m2 f17441a;

    public BinderC7390s(AbstractC7320m2 m2Var) {
        this.f17441a = m2Var;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: p */
    public static int m20700p(String str) {
        char c;
        switch (str.hashCode()) {
            case -1396342996:
                if (str.equals("banner")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1052618729:
                if (str.equals("native")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -239580146:
                if (str.equals("rewarded")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 604727084:
                if (str.equals(AdType.INTERSTITIAL)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0) {
            return zza.zzuq;
        }
        if (c == 1) {
            return zza.zzur;
        }
        if (c == 2) {
            return zza.zzus;
        }
        if (c == 3) {
            return zza.zzut;
        }
        throw new IllegalArgumentException("Internal Error");
    }

    /* renamed from: q */
    public static Bundle m20699q(String str) throws RemoteException {
        String valueOf = String.valueOf(str);
        C7452x1.m20568d(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (true) {
                    bundle = bundle2;
                    if (!keys.hasNext()) {
                        break;
                    }
                    String next = keys.next();
                    bundle2.putString(next, jSONObject.getString(next));
                }
            }
            return bundle;
        } catch (JSONException e) {
            C7452x1.m20571b("", e);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7329n
    /* renamed from: T */
    public final zzaaz mo20709T() throws RemoteException {
        zzaaz.m31854a(this.f17441a.m20802a());
        throw null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7329n
    /* renamed from: V */
    public final void mo20708V() throws RemoteException {
        try {
            throw new NullPointerException();
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [h.i.a.e.j.a.o2, h.i.a.e.j.a.x] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7329n
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo20707a(p081h.p203i.p204a.p224e.p252e.AbstractC7106b r9, java.lang.String r10, android.os.Bundle r11, android.os.Bundle r12, com.google.android.gms.internal.ads.zzjo r13, p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7353p r14) throws android.os.RemoteException {
        /*
            r8 = this;
            h.i.a.e.j.a.x r0 = new h.i.a.e.j.a.x     // Catch: all -> 0x0050
            r15 = r0
            r0 = r15
            r1 = r8
            r2 = r14
            r0.<init>(r1, r2)     // Catch: all -> 0x0050
            r0 = r8
            h.i.a.e.j.a.m2 r0 = r0.f17441a     // Catch: all -> 0x0050
            r14 = r0
            com.google.android.gms.ads.mediation.zza r0 = new com.google.android.gms.ads.mediation.zza     // Catch: all -> 0x0050
            r16 = r0
            r0 = r16
            r1 = r10
            int r1 = m20700p(r1)     // Catch: all -> 0x0050
            r2 = r12
            r0.<init>(r1, r2)     // Catch: all -> 0x0050
            h.i.a.e.j.a.n2 r0 = new h.i.a.e.j.a.n2     // Catch: all -> 0x0050
            r10 = r0
            r0 = r10
            r1 = r9
            java.lang.Object r1 = p081h.p203i.p204a.p224e.p252e.BinderC7110d.m21059A(r1)     // Catch: all -> 0x0050
            android.content.Context r1 = (android.content.Context) r1     // Catch: all -> 0x0050
            r2 = r16
            r3 = r11
            r4 = r13
            int r4 = r4.f6775e     // Catch: all -> 0x0050
            r5 = r13
            int r5 = r5.f6772b     // Catch: all -> 0x0050
            r6 = r13
            java.lang.String r6 = r6.f6771a     // Catch: all -> 0x0050
            com.google.android.gms.ads.AdSize r4 = com.google.android.gms.ads.zzc.zza(r4, r5, r6)     // Catch: all -> 0x0050
            r0.<init>(r1, r2, r3, r4)     // Catch: all -> 0x0050
            r0 = r14
            r1 = r10
            r2 = r15
            r0.m20800a(r1, r2)     // Catch: all -> 0x0050
            return
        L_0x0050:
            r9 = move-exception
            java.lang.String r0 = "Error generating signals for RTB"
            r1 = r9
            p081h.p203i.p204a.p224e.p259j.p260a.C7452x1.m20571b(r0, r1)
            android.os.RemoteException r0 = new android.os.RemoteException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p260a.BinderC7390s.mo20707a(h.i.a.e.e.b, java.lang.String, android.os.Bundle, android.os.Bundle, com.google.android.gms.internal.ads.zzjo, h.i.a.e.j.a.p):void");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7329n
    /* renamed from: a */
    public final void mo20706a(String str, String str2, Bundle bundle, AbstractC7106b bVar, AbstractC7228f fVar, AbstractC7291ja jaVar, zzjo zzjoVar) throws RemoteException {
        try {
            C7402t tVar = new C7402t(this, fVar, jaVar);
            AbstractC7320m2 m2Var = this.f17441a;
            new C7308l2((Context) BinderC7110d.m21059A(bVar), str, m20699q(str2), bundle);
            zzc.zza(zzjoVar.f6775e, zzjoVar.f6772b, zzjoVar.f6771a);
            tVar.mo20626a(String.valueOf(m2Var.getClass().getSimpleName()).concat(" does not support banner ads."));
        } catch (Throwable th) {
            C7452x1.m20571b("Adapter failed to render banner ad.", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7329n
    /* renamed from: a */
    public final void mo20705a(String str, String str2, Bundle bundle, AbstractC7106b bVar, AbstractC7254h hVar, AbstractC7291ja jaVar) throws RemoteException {
        try {
            C7414u uVar = new C7414u(this, hVar, jaVar);
            AbstractC7320m2 m2Var = this.f17441a;
            new C7308l2((Context) BinderC7110d.m21059A(bVar), str, m20699q(str2), bundle);
            uVar.mo20626a(String.valueOf(m2Var.getClass().getSimpleName()).concat(" does not support interstitial ads."));
        } catch (Throwable th) {
            C7452x1.m20571b("Adapter failed to render interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7329n
    /* renamed from: a */
    public final void mo20704a(String str, String str2, Bundle bundle, AbstractC7106b bVar, AbstractC7280j jVar, AbstractC7291ja jaVar) throws RemoteException {
        try {
            C7438w wVar = new C7438w(this, jVar, jaVar);
            AbstractC7320m2 m2Var = this.f17441a;
            new C7308l2((Context) BinderC7110d.m21059A(bVar), str, m20699q(str2), bundle);
            wVar.mo20626a(String.valueOf(m2Var.getClass().getSimpleName()).concat(" does not support native ads."));
        } catch (Throwable th) {
            C7452x1.m20571b("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7329n
    /* renamed from: a */
    public final void mo20703a(String str, String str2, Bundle bundle, AbstractC7106b bVar, AbstractC7305l lVar, AbstractC7291ja jaVar) throws RemoteException {
        try {
            C7426v vVar = new C7426v(this, lVar, jaVar);
            AbstractC7320m2 m2Var = this.f17441a;
            new C7308l2((Context) BinderC7110d.m21059A(bVar), str, m20699q(str2), bundle);
            vVar.mo20626a(String.valueOf(m2Var.getClass().getSimpleName()).concat(" does not support rewarded ads."));
        } catch (Throwable th) {
            C7452x1.m20571b("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7329n
    /* renamed from: a */
    public final void mo20702a(String[] strArr, Bundle[] bundleArr) throws RemoteException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < strArr.length; i++) {
            try {
                arrayList.add(new com.google.android.gms.ads.mediation.zza(m20700p(strArr[i]), bundleArr[i]));
            } catch (IndexOutOfBoundsException e) {
                throw new RemoteException();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7329n
    /* renamed from: g */
    public final void mo20701g(AbstractC7106b bVar) throws RemoteException {
        this.f17441a.m20801a((Context) BinderC7110d.m21059A(bVar));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7329n
    public final AbstractC7359p5 getVideoController() {
        AbstractC7320m2 m2Var = this.f17441a;
        if (!(m2Var instanceof zzb)) {
            return null;
        }
        try {
            return ((zzb) m2Var).getVideoController();
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            return null;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7329n
    /* renamed from: q0 */
    public final zzaaz mo20698q0() throws RemoteException {
        zzaaz.m31854a(this.f17441a.m20799b());
        throw null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7329n
    public final void showInterstitial() throws RemoteException {
        try {
            throw new NullPointerException();
        } catch (Throwable th) {
            C7452x1.m20571b("", th);
            throw new RemoteException();
        }
    }
}
