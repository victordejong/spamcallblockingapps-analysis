package p193e.p194a.p997k3.p1000l;

import com.truecaller.data.entity.Entity;
import com.truecaller.data.entity.Number;
import java.util.Comparator;
/* renamed from: e.a.k3.l.a */
/* loaded from: classes8-dex2jar.jar:e/a/k3/l/a.class */
public final /* synthetic */ class C16493a implements Comparator {

    /* renamed from: a */
    public static final /* synthetic */ C16493a f46378a = new C16493a();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i;
        int[] iArr;
        Number number = (Number) obj;
        Number number2 = (Number) obj2;
        int[] iArr2 = Number.f11562b;
        int m35470o = number.m35470o();
        int m35470o2 = number2.m35470o();
        if (m35470o == m35470o2) {
            i = Entity.presentationCompare(number.m35480d(), number2.m35480d());
        } else {
            for (int i2 : Number.f11562b) {
                if (m35470o == i2 || m35470o2 == i2) {
                    i = 1;
                    if (m35470o == i2) {
                        i = -1;
                    }
                }
            }
            i = m35470o - m35470o2;
        }
        return i;
    }
}
