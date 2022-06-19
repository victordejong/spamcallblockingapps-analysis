package p193e.p194a.p372b0.p430q;

import android.net.Uri;
import java.util.Locale;
import javax.inject.Inject;
import s1.z.c.l;
/* renamed from: e.a.b0.q.k0 */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/k0.class */
public final class C8599k0 implements AbstractC8597j0 {

    /* renamed from: a */
    public final AbstractC8621z f26425a;

    @Inject
    public C8599k0(AbstractC8621z abstractC8621z) {
        l.e(abstractC8621z, "phoneNumberHelper");
        this.f26425a = abstractC8621z;
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8597j0
    /* renamed from: a */
    public String mo28262a(String str) {
        String mo28180k;
        if (str == null || (mo28180k = this.f26425a.mo28180k(str)) == null) {
            return "https://truecaller.com";
        }
        Uri.Builder appendPath = Uri.parse("https://truecaller.com").buildUpon().appendPath("search");
        Locale locale = Locale.ENGLISH;
        l.d(locale, "Locale.ENGLISH");
        String lowerCase = mo28180k.toLowerCase(locale);
        l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        String uri = appendPath.appendPath(lowerCase).appendEncodedPath(str).build().toString();
        l.d(uri, "Uri.parse(TRUECALLER_BAS…              .toString()");
        return uri;
    }
}
