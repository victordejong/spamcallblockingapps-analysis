package androidx.lifecycle;

import androidx.lifecycle.AbstractC0927f;
import androidx.p016a.p017a.p019b.C0231a;
import androidx.p016a.p017a.p019b.C0232b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* renamed from: androidx.lifecycle.j */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/j.class */
public final class C0933j extends AbstractC0927f {

    /* renamed from: d */
    private final WeakReference<AbstractC0932i> f3906d;

    /* renamed from: b */
    private C0231a<AbstractC0931h, C0934a> f3904b = new C0231a<>();

    /* renamed from: e */
    private int f3907e = 0;

    /* renamed from: f */
    private boolean f3908f = false;

    /* renamed from: g */
    private boolean f3909g = false;

    /* renamed from: h */
    private ArrayList<AbstractC0927f.EnumC0929b> f3910h = new ArrayList<>();

    /* renamed from: c */
    private AbstractC0927f.EnumC0929b f3905c = AbstractC0927f.EnumC0929b.INITIALIZED;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/j$a.class */
    public static final class C0934a {

        /* renamed from: a */
        AbstractC0927f.EnumC0929b f3911a;

        /* renamed from: b */
        AbstractC0930g f3912b;

        C0934a(AbstractC0931h hVar, AbstractC0927f.EnumC0929b bVar) {
            this.f3912b = C0937m.m7565a(hVar);
            this.f3911a = bVar;
        }

        /* renamed from: a */
        final void m7568a(AbstractC0932i iVar, AbstractC0927f.EnumC0928a aVar) {
            AbstractC0927f.EnumC0929b b = C0933j.m7577b(aVar);
            this.f3911a = C0933j.m7581a(this.f3911a, b);
            this.f3912b.mo6700a(iVar, aVar);
            this.f3911a = b;
        }
    }

    public C0933j(AbstractC0932i iVar) {
        this.f3906d = new WeakReference<>(iVar);
    }

    /* renamed from: a */
    static AbstractC0927f.EnumC0929b m7581a(AbstractC0927f.EnumC0929b bVar, AbstractC0927f.EnumC0929b bVar2) {
        return (bVar2 == null || bVar2.compareTo(bVar) >= 0) ? bVar : bVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private void m7579a(AbstractC0932i iVar) {
        C0232b<AbstractC0931h, C0934a>.C0236d c = this.f3904b.m9968c();
        while (c.hasNext() && !this.f3909g) {
            Map.Entry next = c.next();
            C0934a aVar = (C0934a) next.getValue();
            while (aVar.f3911a.compareTo(this.f3905c) < 0 && !this.f3909g && this.f3904b.m9976c(next.getKey())) {
                m7572c(aVar.f3911a);
                aVar.m7568a(iVar, m7569d(aVar.f3911a));
                m7573c();
            }
        }
    }

    /* renamed from: b */
    static AbstractC0927f.EnumC0929b m7577b(AbstractC0927f.EnumC0928a aVar) {
        switch (C0935k.f3913a[aVar.ordinal()]) {
            case 1:
            case 2:
                return AbstractC0927f.EnumC0929b.CREATED;
            case 3:
            case 4:
                return AbstractC0927f.EnumC0929b.STARTED;
            case 5:
                return AbstractC0927f.EnumC0929b.RESUMED;
            case 6:
                return AbstractC0927f.EnumC0929b.DESTROYED;
            default:
                throw new IllegalArgumentException("Unexpected event value ".concat(String.valueOf(aVar)));
        }
    }

    /* renamed from: b */
    private void m7576b(AbstractC0927f.EnumC0929b bVar) {
        if (this.f3905c != bVar) {
            this.f3905c = bVar;
            if (this.f3908f || this.f3907e != 0) {
                this.f3909g = true;
                return;
            }
            this.f3908f = true;
            m7570d();
            this.f3908f = false;
        }
    }

    /* renamed from: b */
    private void m7574b(AbstractC0932i iVar) {
        AbstractC0927f.EnumC0928a aVar;
        Iterator<Map.Entry<AbstractC0931h, C0934a>> b = this.f3904b.m9971b();
        while (b.hasNext() && !this.f3909g) {
            Map.Entry<AbstractC0931h, C0934a> next = b.next();
            C0934a value = next.getValue();
            while (value.f3911a.compareTo(this.f3905c) > 0 && !this.f3909g && this.f3904b.m9976c(next.getKey())) {
                AbstractC0927f.EnumC0929b bVar = value.f3911a;
                int i = C0935k.f3914b[bVar.ordinal()];
                if (i != 1) {
                    if (i == 2) {
                        aVar = AbstractC0927f.EnumC0928a.ON_DESTROY;
                    } else if (i == 3) {
                        aVar = AbstractC0927f.EnumC0928a.ON_STOP;
                    } else if (i == 4) {
                        aVar = AbstractC0927f.EnumC0928a.ON_PAUSE;
                    } else if (i != 5) {
                        throw new IllegalArgumentException("Unexpected state value ".concat(String.valueOf(bVar)));
                    } else {
                        throw new IllegalArgumentException();
                    }
                    m7572c(m7577b(aVar));
                    value.m7568a(iVar, aVar);
                    m7573c();
                } else {
                    throw new IllegalArgumentException();
                }
            }
        }
    }

    /* renamed from: b */
    private boolean m7578b() {
        if (this.f3904b.m9974a() == 0) {
            return true;
        }
        AbstractC0927f.EnumC0929b bVar = this.f3904b.m9967d().getValue().f3911a;
        AbstractC0927f.EnumC0929b bVar2 = this.f3904b.m9966e().getValue().f3911a;
        return bVar == bVar2 && this.f3905c == bVar2;
    }

    /* renamed from: c */
    private AbstractC0927f.EnumC0929b m7571c(AbstractC0931h hVar) {
        Map.Entry<AbstractC0931h, C0934a> d = this.f3904b.m9975d(hVar);
        AbstractC0927f.EnumC0929b bVar = null;
        AbstractC0927f.EnumC0929b bVar2 = d != null ? d.getValue().f3911a : null;
        if (!this.f3910h.isEmpty()) {
            ArrayList<AbstractC0927f.EnumC0929b> arrayList = this.f3910h;
            bVar = arrayList.get(arrayList.size() - 1);
        }
        return m7581a(m7581a(this.f3905c, bVar2), bVar);
    }

    /* renamed from: c */
    private void m7573c() {
        ArrayList<AbstractC0927f.EnumC0929b> arrayList = this.f3910h;
        arrayList.remove(arrayList.size() - 1);
    }

    /* renamed from: c */
    private void m7572c(AbstractC0927f.EnumC0929b bVar) {
        this.f3910h.add(bVar);
    }

    /* renamed from: d */
    private static AbstractC0927f.EnumC0928a m7569d(AbstractC0927f.EnumC0929b bVar) {
        int i = C0935k.f3914b[bVar.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return AbstractC0927f.EnumC0928a.ON_START;
            }
            if (i == 3) {
                return AbstractC0927f.EnumC0928a.ON_RESUME;
            }
            if (i == 4) {
                throw new IllegalArgumentException();
            } else if (i != 5) {
                throw new IllegalArgumentException("Unexpected state value ".concat(String.valueOf(bVar)));
            }
        }
        return AbstractC0927f.EnumC0928a.ON_CREATE;
    }

    /* renamed from: d */
    private void m7570d() {
        AbstractC0932i iVar = this.f3906d.get();
        if (iVar != null) {
            while (true) {
                boolean b = m7578b();
                this.f3909g = false;
                if (!b) {
                    if (this.f3905c.compareTo(this.f3904b.m9967d().getValue().f3911a) < 0) {
                        m7574b(iVar);
                    }
                    Map.Entry<AbstractC0931h, C0934a> e = this.f3904b.m9966e();
                    if (!this.f3909g && e != null && this.f3905c.compareTo(e.getValue().f3911a) > 0) {
                        m7579a(iVar);
                    }
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
    }

    @Override // androidx.lifecycle.AbstractC0927f
    /* renamed from: a */
    public final AbstractC0927f.EnumC0929b mo7584a() {
        return this.f3905c;
    }

    /* renamed from: a */
    public final void m7583a(AbstractC0927f.EnumC0928a aVar) {
        m7576b(m7577b(aVar));
    }

    /* renamed from: a */
    public final void m7582a(AbstractC0927f.EnumC0929b bVar) {
        m7576b(bVar);
    }

    @Override // androidx.lifecycle.AbstractC0927f
    /* renamed from: a */
    public final void mo7580a(AbstractC0931h hVar) {
        AbstractC0932i iVar;
        C0934a aVar = new C0934a(hVar, this.f3905c == AbstractC0927f.EnumC0929b.DESTROYED ? AbstractC0927f.EnumC0929b.DESTROYED : AbstractC0927f.EnumC0929b.INITIALIZED);
        if (this.f3904b.mo9972a(hVar, aVar) == null && (iVar = this.f3906d.get()) != null) {
            boolean z = this.f3907e != 0 || this.f3908f;
            AbstractC0927f.EnumC0929b c = m7571c(hVar);
            this.f3907e++;
            while (aVar.f3911a.compareTo(c) < 0 && this.f3904b.m9976c(hVar)) {
                m7572c(aVar.f3911a);
                aVar.m7568a(iVar, m7569d(aVar.f3911a));
                m7573c();
                c = m7571c(hVar);
            }
            if (!z) {
                m7570d();
            }
            this.f3907e--;
        }
    }

    @Override // androidx.lifecycle.AbstractC0927f
    /* renamed from: b */
    public final void mo7575b(AbstractC0931h hVar) {
        this.f3904b.mo9970b(hVar);
    }
}
