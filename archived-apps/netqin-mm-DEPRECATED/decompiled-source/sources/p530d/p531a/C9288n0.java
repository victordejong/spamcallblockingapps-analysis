package p530d.p531a;

import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9271l0;
import p530d.p531a.C9303r0;
/* renamed from: d.a.n0 */
/* loaded from: classes2-dex2jar.jar:d/a/n0.class */
public final class C9288n0 {

    /* renamed from: d */
    public static final Logger f35860d = Logger.getLogger(C9288n0.class.getName());

    /* renamed from: e */
    public static C9288n0 f35861e;

    /* renamed from: a */
    public final AbstractC9271l0.AbstractC9276d f35862a = new C9290b(this, null);

    /* renamed from: b */
    public final LinkedHashSet<AbstractC9286m0> f35863b = new LinkedHashSet<>();

    /* renamed from: c */
    public List<AbstractC9286m0> f35864c = Collections.emptyList();

    /* renamed from: d.a.n0$a */
    /* loaded from: classes2-dex2jar.jar:d/a/n0$a.class */
    public class C9289a implements Comparator<AbstractC9286m0> {
        public C9289a(C9288n0 n0Var) {
        }

        /* renamed from: a */
        public int compare(AbstractC9286m0 m0Var, AbstractC9286m0 m0Var2) {
            return m0Var.mo2516c() - m0Var2.mo2516c();
        }
    }

    /* renamed from: d.a.n0$b */
    /* loaded from: classes2-dex2jar.jar:d/a/n0$b.class */
    public final class C9290b extends AbstractC9271l0.AbstractC9276d {
        public C9290b() {
        }

        public /* synthetic */ C9290b(C9288n0 n0Var, C9289a aVar) {
            this();
        }

        @Override // p530d.p531a.AbstractC9271l0.AbstractC9276d
        /* renamed from: a */
        public AbstractC9271l0 mo2869a(URI uri, AbstractC9271l0.C9273b bVar) {
            for (AbstractC9286m0 m0Var : C9288n0.this.m2991b()) {
                AbstractC9271l0 a = m0Var.mo2869a(uri, bVar);
                if (a != null) {
                    return a;
                }
            }
            return null;
        }

        @Override // p530d.p531a.AbstractC9271l0.AbstractC9276d
        /* renamed from: a */
        public String mo2870a() {
            List<AbstractC9286m0> b = C9288n0.this.m2991b();
            return b.isEmpty() ? "unknown" : b.get(0).mo2870a();
        }
    }

    /* renamed from: d.a.n0$c */
    /* loaded from: classes2-dex2jar.jar:d/a/n0$c.class */
    public static final class C9291c implements C9303r0.AbstractC9305b<AbstractC9286m0> {
        public C9291c() {
        }

        public /* synthetic */ C9291c(C9289a aVar) {
            this();
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public int mo636b(AbstractC9286m0 m0Var) {
            return m0Var.mo2516c();
        }

        /* renamed from: b  reason: avoid collision after fix types in other method */
        public boolean mo638a(AbstractC9286m0 m0Var) {
            return m0Var.mo2868b();
        }
    }

    /* renamed from: d */
    public static C9288n0 m2989d() {
        C9288n0 n0Var;
        synchronized (C9288n0.class) {
            try {
                if (f35861e == null) {
                    List<AbstractC9286m0> b = C9303r0.m2966b(AbstractC9286m0.class, m2988e(), AbstractC9286m0.class.getClassLoader(), new C9291c(null));
                    if (b.isEmpty()) {
                        f35860d.warning("No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration");
                    }
                    f35861e = new C9288n0();
                    for (AbstractC9286m0 m0Var : b) {
                        Logger logger = f35860d;
                        logger.fine("Service loader found " + m0Var);
                        if (m0Var.mo2868b()) {
                            f35861e.m2992a(m0Var);
                        }
                    }
                    f35861e.m2990c();
                }
                n0Var = f35861e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return n0Var;
    }

    /* renamed from: e */
    public static List<Class<?>> m2988e() {
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.add(Class.forName("d.a.v0.y"));
        } catch (ClassNotFoundException e) {
            f35860d.log(Level.FINE, "Unable to find DNS NameResolver", (Throwable) e);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public AbstractC9271l0.AbstractC9276d m2993a() {
        return this.f35862a;
    }

    /* renamed from: a */
    public final void m2992a(AbstractC9286m0 m0Var) {
        synchronized (this) {
            C4933n.m24790a(m0Var.mo2868b(), "isAvailable() returned false");
            this.f35863b.add(m0Var);
        }
    }

    /* renamed from: b */
    public List<AbstractC9286m0> m2991b() {
        List<AbstractC9286m0> list;
        synchronized (this) {
            list = this.f35864c;
        }
        return list;
    }

    /* renamed from: c */
    public final void m2990c() {
        synchronized (this) {
            ArrayList arrayList = new ArrayList(this.f35863b);
            Collections.sort(arrayList, Collections.reverseOrder(new C9289a(this)));
            this.f35864c = Collections.unmodifiableList(arrayList);
        }
    }
}
