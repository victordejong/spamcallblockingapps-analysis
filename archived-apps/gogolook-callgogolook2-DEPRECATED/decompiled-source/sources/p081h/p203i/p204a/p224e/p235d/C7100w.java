package p081h.p203i.p204a.p224e.p235d;

import android.content.Context;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.zzj;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractBinderC7028w0;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7024u0;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@CheckReturnValue
/* renamed from: h.i.a.e.d.w */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/w.class */
public final class C7100w {

    /* renamed from: a */
    public static volatile AbstractC7024u0 f17213a;

    /* renamed from: b */
    public static final Object f17214b = new Object();

    /* renamed from: c */
    public static Context f17215c;

    /* renamed from: a */
    public static C6796e0 m21083a(String str, AbstractBinderC7101x xVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return m21081b(str, xVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ String m21082a(boolean z, String str, AbstractBinderC7101x xVar) throws Exception {
        boolean z2 = true;
        if (z || !m21081b(str, xVar, true, false).f16692a) {
            z2 = false;
        }
        return C6796e0.m21881a(str, xVar, z, z2);
    }

    /* renamed from: a */
    public static void m21084a(Context context) {
        synchronized (C7100w.class) {
            try {
                if (f17215c == null && context != null) {
                    f17215c = context.getApplicationContext();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static C6796e0 m21081b(final String str, final AbstractBinderC7101x xVar, final boolean z, boolean z2) {
        try {
            if (f17213a == null) {
                C7021t.m21290a(f17215c);
                synchronized (f17214b) {
                    if (f17213a == null) {
                        f17213a = AbstractBinderC7028w0.m21272a(DynamiteModule.m31896a(f17215c, DynamiteModule.f6681j, "com.google.android.gms.googlecertificates").m31891a("com.google.android.gms.common.GoogleCertificatesImpl"));
                    }
                }
            }
            C7021t.m21290a(f17215c);
            try {
                return f17213a.mo21274a(new zzj(str, xVar, z, z2), BinderC7110d.m21058a(f17215c.getPackageManager())) ? C6796e0.m21877c() : C6796e0.m21879a(new Callable(z, str, xVar) { // from class: h.i.a.e.d.y

                    /* renamed from: a */
                    public final boolean f17217a;

                    /* renamed from: b */
                    public final String f17218b;

                    /* renamed from: c */
                    public final AbstractBinderC7101x f17219c;

                    {
                        this.f17217a = z;
                        this.f17218b = str;
                        this.f17219c = xVar;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return C7100w.m21082a(this.f17217a, this.f17218b, this.f17219c);
                    }
                });
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return C6796e0.m21880a("module call", e);
            }
        } catch (DynamiteModule.C3567a e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            String valueOf = String.valueOf(e2.getMessage());
            return C6796e0.m21880a(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
        }
    }
}
