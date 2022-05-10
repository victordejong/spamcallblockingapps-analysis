package p131c.p372f.p373a.p374a.p375a;

import android.content.Context;
import com.integralads.avid.library.mopub.BuildConfig;
/* renamed from: c.f.a.a.a.b */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/b.class */
public class C6400b {

    /* renamed from: b */
    public static final C6400b f20064b = new C6400b();

    /* renamed from: a */
    public String f20065a;

    /* renamed from: d */
    public static C6400b m20978d() {
        return f20064b;
    }

    /* renamed from: a */
    public String m20982a() {
        return BuildConfig.VERSION_NAME;
    }

    /* renamed from: a */
    public void m20981a(Context context) {
        if (this.f20065a == null) {
            this.f20065a = context.getApplicationContext().getPackageName();
        }
    }

    /* renamed from: b */
    public String m20980b() {
        return this.f20065a;
    }

    /* renamed from: c */
    public String m20979c() {
        return "inmobi";
    }
}
