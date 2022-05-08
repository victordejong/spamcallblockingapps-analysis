package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* renamed from: h.i.a.e.m.b.u4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/u4.class */
public final class C9069u4 extends AbstractC9035p1 {

    /* renamed from: c */
    public long f20698c;

    /* renamed from: d */
    public String f20699d;

    /* renamed from: e */
    public Boolean f20700e;

    public C9069u4(C9052s0 s0Var) {
        super(s0Var);
    }

    /* renamed from: a */
    public final boolean m16127a(Context context) {
        if (this.f20700e == null) {
            mo16187b();
            this.f20700e = false;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    packageManager.getPackageInfo("com.google.android.gms", 128);
                    this.f20700e = true;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return this.f20700e.booleanValue();
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9035p1
    /* renamed from: p */
    public final boolean mo16126p() {
        Calendar instance = Calendar.getInstance();
        this.f20698c = TimeUnit.MINUTES.convert(instance.get(15) + instance.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String lowerCase = locale.getLanguage().toLowerCase(Locale.ENGLISH);
        String lowerCase2 = locale.getCountry().toLowerCase(Locale.ENGLISH);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length());
        sb.append(lowerCase);
        sb.append("-");
        sb.append(lowerCase2);
        this.f20699d = sb.toString();
        return false;
    }

    /* renamed from: s */
    public final long m16125s() {
        m16342n();
        return this.f20698c;
    }

    /* renamed from: t */
    public final String m16124t() {
        m16342n();
        return this.f20699d;
    }
}
