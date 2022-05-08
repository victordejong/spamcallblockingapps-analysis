package p081h.p203i.p325c.p337n.p338d.p348n.p350d;

import p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c;
import p081h.p203i.p325c.p337n.p338d.p348n.p349c.C9791a;
/* renamed from: h.i.c.n.d.n.d.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/n/d/a.class */
public class C9796a implements AbstractC9798b {

    /* renamed from: a */
    public final C9799c f22229a;

    /* renamed from: b */
    public final C9800d f22230b;

    /* renamed from: h.i.c.n.d.n.d.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/n/d/a$a.class */
    public static /* synthetic */ class C9797a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f22231a = new int[AbstractC9793c.EnumC9794a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f22231a[AbstractC9793c.EnumC9794a.JAVA.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f22231a[AbstractC9793c.EnumC9794a.NATIVE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public C9796a(C9799c cVar, C9800d dVar) {
        this.f22229a = cVar;
        this.f22230b = dVar;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p350d.AbstractC9798b
    /* renamed from: a */
    public boolean mo14181a(C9791a aVar, boolean z) {
        int i = C9797a.f22231a[aVar.f22221c.getType().ordinal()];
        if (i == 1) {
            this.f22229a.mo14181a(aVar, z);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            this.f22230b.mo14181a(aVar, z);
            return true;
        }
    }
}
