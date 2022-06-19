package p193e.p194a.p682e.p698c;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
import w3.b.a.r;
/* renamed from: e.a.e.c.n2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/n2.class */
public final class C13120n2 {
    /* renamed from: a */
    public final String m22048a(int i, int i2) {
        r f = r.f(String.valueOf(i));
        r f2 = r.f(String.valueOf(i2));
        Locale locale = Locale.getDefault();
        return C22128a.m8615h2(f.g("ha", locale), '-', f2.g("ha", locale));
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    /* renamed from: b */
    public final int m22047b(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        double m35533a0 = contact.m35533a0();
        double m35559L = contact.m35559L();
        double d = m35533a0 - m35559L;
        char c = 0;
        if (d != PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
            c = (m35559L / d) * 100;
            if (c < 0) {
                c = 0;
            }
        }
        return (int) Math.rint(c);
    }
}
