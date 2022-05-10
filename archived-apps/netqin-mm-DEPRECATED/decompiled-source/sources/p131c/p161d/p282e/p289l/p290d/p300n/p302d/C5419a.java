package p131c.p161d.p282e.p289l.p290d.p300n.p302d;

import com.google.firebase.crashlytics.internal.report.model.Report;
import p131c.p161d.p282e.p289l.p290d.p300n.p301c.C5416a;
/* renamed from: c.d.e.l.d.n.d.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/n/d/a.class */
public class C5419a implements AbstractC5421b {

    /* renamed from: a */
    public final C5422c f18362a;

    /* renamed from: b */
    public final C5423d f18363b;

    /* renamed from: c.d.e.l.d.n.d.a$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/n/d/a$a.class */
    public static /* synthetic */ class C5420a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18364a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Report.Type.values().length];
            f18364a = iArr;
            try {
                iArr[Report.Type.JAVA.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18364a[Report.Type.NATIVE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public C5419a(C5422c cVar, C5423d dVar) {
        this.f18362a = cVar;
        this.f18363b = dVar;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p300n.p302d.AbstractC5421b
    /* renamed from: a */
    public boolean mo23818a(C5416a aVar, boolean z) {
        int i = C5420a.f18364a[aVar.f18357c.getType().ordinal()];
        if (i == 1) {
            this.f18362a.mo23818a(aVar, z);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            this.f18363b.mo23818a(aVar, z);
            return true;
        }
    }
}
