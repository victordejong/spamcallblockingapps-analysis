package p193e.p194a.p372b0.p394b.p400j.p401e;

import android.os.Build;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.f0.h;
import s1.z.c.l;
/* renamed from: e.a.b0.b.j.e.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/j/e/b.class */
public final class C8401b implements AbstractC8403d {

    /* renamed from: a */
    public final String f26080a;

    /* renamed from: b */
    public final String f26081b;

    /* renamed from: c */
    public final String f26082c;

    public C8401b(String str, String str2) {
        l.e(str, "appName");
        l.e(str2, "appVersionName");
        this.f26081b = str;
        this.f26082c = str2;
        String str3 = Build.VERSION.RELEASE;
        l.d(str3, "Build.VERSION.RELEASE");
        this.f26080a = new h("[^\\x20-\\x7E]").e(str3, "");
    }

    @Override // p193e.p194a.p372b0.p394b.p400j.p401e.AbstractC8403d
    /* renamed from: a */
    public String mo28610a() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f26081b);
        sb.append('/');
        sb.append(this.f26082c);
        sb.append(" (Android;");
        return C22128a.m8630e(sb, this.f26080a, ')');
    }
}
