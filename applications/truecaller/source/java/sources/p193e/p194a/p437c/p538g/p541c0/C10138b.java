package p193e.p194a.p437c.p538g.p541c0;

import com.tenor.android.core.constant.StringConstant;
import com.truecaller.insights.categorizer.preprocessing.AvailableLocales;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p538g.p544f0.C10160a;
import p193e.p194a.p437c.p538g.p544f0.C10161b;
import s1.f0.g;
import s1.f0.h;
import s1.i;
import s1.z.c.l;
@Metadata(d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\f\u0010\b\u001a\u00020\u0006*\u00020\u0006H\u0002J\f\u0010\t\u001a\u00020\u0006*\u00020\u0006H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\n"}, d2 = {"Lcom/truecaller/insights/categorizer/preprocessing/LocaleAwarePreprocessingImpl;", "Lcom/truecaller/insights/categorizer/preprocessing/LocaleAwarePreprocessing;", "currentLocale", "Lcom/truecaller/insights/categorizer/preprocessing/AvailableLocales;", "(Lcom/truecaller/insights/categorizer/preprocessing/AvailableLocales;)V", "processString", "", "message", "arabicProcessing", "globalProcessing", "insights-categorizer"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.a.c.g.c0.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/c0/b.class */
public final class C10138b implements AbstractC10137a {

    /* renamed from: b */
    public final AvailableLocales f30101b;

    public C10138b(AvailableLocales availableLocales) {
        l.e(availableLocales, "currentLocale");
        this.f30101b = availableLocales;
    }

    @Override // p193e.p194a.p437c.p538g.p541c0.AbstractC10137a
    /* renamed from: a */
    public String mo26679a(String str) {
        String str2;
        List b;
        l.e(str, "message");
        int ordinal = this.f30101b.ordinal();
        if (ordinal == 0) {
            h hVar = C10161b.f30148a;
            l.e(str, "<this>");
            str2 = C10161b.f30148a.e(str, StringConstant.SPACE);
        } else if (ordinal != 1) {
            throw new i();
        } else {
            h hVar2 = C10160a.f30144a;
            l.e(str, "<this>");
            g a = C10160a.f30144a.a(str, 0);
            List b2 = a == null ? null : a.b();
            if (b2 != null) {
                StringBuilder m8724D = C22128a.m8724D("NUM", ' ');
                m8724D.append((String) b2.get(2));
                str = m8724D.toString();
            }
            g a2 = C10160a.f30145b.a(str, 0);
            List b3 = a2 == null ? null : a2.b();
            if (b3 != null) {
                str = C22128a.m8622g(new StringBuilder(), (String) b3.get(1), ' ', "NUM");
            }
            g a3 = C10160a.f30146c.a(str, 0);
            if ((a3 == null ? null : a3.b()) != null) {
                str = ((String) b.get(1)) + " NUM " + ((String) b.get(2));
            }
            str2 = C10160a.f30147d.e(str, "NUM");
        }
        return str2;
    }
}
