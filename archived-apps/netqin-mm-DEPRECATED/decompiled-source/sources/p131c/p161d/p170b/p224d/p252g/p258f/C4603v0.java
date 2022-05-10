package p131c.p161d.p170b.p224d.p252g.p258f;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzcw;
import com.google.android.gms.internal.measurement.zzcz;
import p012b.p042i.p044i.C0871b;
/* renamed from: c.d.b.d.g.f.v0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/v0.class */
public final class C4603v0 implements AbstractC4597u0 {

    /* renamed from: c */
    public static C4603v0 f16908c;

    /* renamed from: a */
    public final Context f16909a;

    /* renamed from: b */
    public final ContentObserver f16910b;

    public C4603v0() {
        this.f16909a = null;
        this.f16910b = null;
    }

    public C4603v0(Context context) {
        this.f16909a = context;
        this.f16910b = new C4609w0(this, null);
        context.getContentResolver().registerContentObserver(zzcp.f29429a, true, this.f16910b);
    }

    /* renamed from: a */
    public static C4603v0 m25235a(Context context) {
        C4603v0 v0Var;
        synchronized (C4603v0.class) {
            try {
                if (f16908c == null) {
                    f16908c = C0871b.m35681b(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new C4603v0(context) : new C4603v0();
                }
                v0Var = f16908c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return v0Var;
    }

    /* renamed from: a */
    public static void m25236a() {
        synchronized (C4603v0.class) {
            try {
                if (!(f16908c == null || f16908c.f16909a == null || f16908c.f16910b == null)) {
                    f16908c.f16909a.getContentResolver().unregisterContentObserver(f16908c.f16910b);
                }
                f16908c = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final /* synthetic */ String m25234a(String str) {
        return zzcp.m9867a(this.f16909a.getContentResolver(), str, (String) null);
    }

    /* renamed from: b */
    public final String mo9822c(final String str) {
        if (this.f16909a == null) {
            return null;
        }
        try {
            return (String) zzcw.m9854a(new zzcz(this, str) { // from class: c.d.b.d.g.f.x0

                /* renamed from: a */
                public final C4603v0 f16925a;

                /* renamed from: b */
                public final String f16926b;

                {
                    this.f16925a = this;
                    this.f16926b = str;
                }

                @Override // com.google.android.gms.internal.measurement.zzcz
                public final Object zza() {
                    return this.f16925a.m25234a(this.f16926b);
                }
            });
        } catch (IllegalStateException | SecurityException e) {
            String valueOf = String.valueOf(str);
            Log.e("GservicesLoader", valueOf.length() != 0 ? "Unable to read GServices for: ".concat(valueOf) : new String("Unable to read GServices for: "), e);
            return null;
        }
    }
}
