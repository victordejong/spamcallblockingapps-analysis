package p193e.p194a.p937j4.p939b.p942c;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.util.Comparator;
import p193e.p194a.p372b0.p426p.C8544a;
/* renamed from: e.a.j4.b.c.a */
/* loaded from: classes11-dex2jar.jar:e/a/j4/b/c/a.class */
public final /* synthetic */ class C15581a implements Comparator {

    /* renamed from: a */
    public static final /* synthetic */ C15581a f44065a = new C15581a();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        C8544a c8544a = (C8544a) obj;
        C8544a c8544a2 = (C8544a) obj2;
        int i = C15585e.f44075n;
        double d = c8544a.f26334c - c8544a2.f26334c;
        int i2 = 1;
        if (d >= PlaceLikelihood.LIKELIHOOD_MIN_VALUE && (d > PlaceLikelihood.LIKELIHOOD_MIN_VALUE || c8544a.f26332a - c8544a2.f26332a < 0)) {
            i2 = -1;
        }
        return i2;
    }
}
