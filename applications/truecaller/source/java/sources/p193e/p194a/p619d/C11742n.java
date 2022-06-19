package p193e.p194a.p619d;

import android.text.TextUtils;
import com.truecaller.blocking.ActionSource;
import com.truecaller.blocking.FilterAction;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import java.util.Iterator;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p837h0.AbstractC14835j;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.n */
/* loaded from: classes15-dex2jar.jar:e/a/d/n.class */
public final class C11742n extends m implements a<Integer> {

    /* renamed from: b */
    public final /* synthetic */ C11731m f34519b;

    /* renamed from: c */
    public final /* synthetic */ Contact f34520c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11742n(C11731m c11731m, Contact contact) {
        super(0);
        this.f34519b = c11731m;
        this.f34520c = contact;
    }

    public Object invoke() {
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        for (Number number : this.f34520c.m35557M()) {
            l.d(number, "number");
            String m35479e = number.m35479e();
            l.d(m35479e, "normalizedNumber");
            String m13653z = C19286f.m13653z(m35479e);
            if (!TextUtils.isEmpty(m13653z)) {
                Iterator<FilterMatch> it = ((AbstractC14835j) this.f34519b.f34461e.get()).mo19586j(number.m35473l(), m13653z, true).iterator();
                int i2 = i;
                boolean z3 = z2;
                boolean z4 = z;
                while (true) {
                    z = z4;
                    z2 = z3;
                    i = i2;
                    if (it.hasNext()) {
                        FilterMatch next = it.next();
                        if (next.f10454c == ActionSource.TOP_SPAMMER) {
                            i2 = next.f10457f > number.m35472m() ? next.f10457f : number.m35472m();
                            z3 = true;
                        } else if (next.f10453b == FilterAction.ALLOW_WHITELISTED) {
                            i2 = 0;
                            z4 = true;
                        }
                    }
                }
            }
        }
        Integer num = null;
        if (!z) {
            if (this.f34520c.m35574A0()) {
                num = Integer.valueOf(this.f34520c.m35533a0());
            } else if (z2) {
                num = Integer.valueOf(i);
            }
        }
        return num;
    }
}
