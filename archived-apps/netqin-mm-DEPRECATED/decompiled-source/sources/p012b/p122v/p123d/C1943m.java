package p012b.p122v.p123d;

import androidx.recyclerview.widget.RecyclerView;
import p012b.p035f.C0785d;
import p012b.p035f.C0793g;
import p012b.p042i.p053o.AbstractC0945e;
import p012b.p042i.p053o.C0946f;
/* renamed from: b.v.d.m */
/* loaded from: classes-dex2jar.jar:b/v/d/m.class */
public class C1943m {

    /* renamed from: a */
    public final C0793g<RecyclerView.AbstractC0495b0, C1944a> f7644a = new C0793g<>();

    /* renamed from: b */
    public final C0785d<RecyclerView.AbstractC0495b0> f7645b = new C0785d<>();

    /* renamed from: b.v.d.m$a */
    /* loaded from: classes-dex2jar.jar:b/v/d/m$a.class */
    public static class C1944a {

        /* renamed from: d */
        public static AbstractC0945e<C1944a> f7646d = new C0946f(20);

        /* renamed from: a */
        public int f7647a;

        /* renamed from: b */
        public RecyclerView.AbstractC0505l.C0508c f7648b;

        /* renamed from: c */
        public RecyclerView.AbstractC0505l.C0508c f7649c;

        /* renamed from: a */
        public static void m31517a() {
            do {
            } while (f7646d.mo35444b() != null);
        }

        /* renamed from: a */
        public static void m31516a(C1944a aVar) {
            aVar.f7647a = 0;
            aVar.f7648b = null;
            aVar.f7649c = null;
            f7646d.mo35445a(aVar);
        }

        /* renamed from: b */
        public static C1944a m31515b() {
            C1944a b = f7646d.mo35444b();
            C1944a aVar = b;
            if (b == null) {
                aVar = new C1944a();
            }
            return aVar;
        }
    }

    /* renamed from: b.v.d.m$b */
    /* loaded from: classes-dex2jar.jar:b/v/d/m$b.class */
    public interface AbstractC1945b {
        /* renamed from: a */
        void mo31514a(RecyclerView.AbstractC0495b0 b0Var);

        /* renamed from: a */
        void mo31513a(RecyclerView.AbstractC0495b0 b0Var, RecyclerView.AbstractC0505l.C0508c cVar, RecyclerView.AbstractC0505l.C0508c cVar2);

        /* renamed from: b */
        void mo31512b(RecyclerView.AbstractC0495b0 b0Var, RecyclerView.AbstractC0505l.C0508c cVar, RecyclerView.AbstractC0505l.C0508c cVar2);

        /* renamed from: c */
        void mo31511c(RecyclerView.AbstractC0495b0 b0Var, RecyclerView.AbstractC0505l.C0508c cVar, RecyclerView.AbstractC0505l.C0508c cVar2);
    }

    /* renamed from: a */
    public RecyclerView.AbstractC0495b0 m31533a(long j) {
        return this.f7645b.m36055a(j);
    }

    /* renamed from: a */
    public final RecyclerView.AbstractC0505l.C0508c m31530a(RecyclerView.AbstractC0495b0 b0Var, int i) {
        C1944a e;
        RecyclerView.AbstractC0505l.C0508c cVar;
        int a = this.f7644a.m36019a(b0Var);
        if (a < 0 || (e = this.f7644a.m36011e(a)) == null) {
            return null;
        }
        int i2 = e.f7647a;
        if ((i2 & i) == 0) {
            return null;
        }
        e.f7647a = (i ^ (-1)) & i2;
        if (i == 4) {
            cVar = e.f7648b;
        } else if (i == 8) {
            cVar = e.f7649c;
        } else {
            throw new IllegalArgumentException("Must provide flag PRE or POST");
        }
        if ((e.f7647a & 12) == 0) {
            this.f7644a.m36012d(a);
            C1944a.m31516a(e);
        }
        return cVar;
    }

    /* renamed from: a */
    public void m31534a() {
        this.f7644a.clear();
        this.f7645b.m36050c();
    }

    /* renamed from: a */
    public void m31532a(long j, RecyclerView.AbstractC0495b0 b0Var) {
        this.f7645b.m36048c(j, b0Var);
    }

    /* renamed from: a */
    public void m31531a(RecyclerView.AbstractC0495b0 b0Var) {
        C1944a aVar = this.f7644a.get(b0Var);
        C1944a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = C1944a.m31515b();
            this.f7644a.put(b0Var, aVar2);
        }
        aVar2.f7647a |= 1;
    }

    /* renamed from: a */
    public void m31529a(RecyclerView.AbstractC0495b0 b0Var, RecyclerView.AbstractC0505l.C0508c cVar) {
        C1944a aVar = this.f7644a.get(b0Var);
        C1944a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = C1944a.m31515b();
            this.f7644a.put(b0Var, aVar2);
        }
        aVar2.f7647a |= 2;
        aVar2.f7648b = cVar;
    }

    /* renamed from: a */
    public void m31528a(AbstractC1945b bVar) {
        for (int size = this.f7644a.size() - 1; size >= 0; size--) {
            RecyclerView.AbstractC0495b0 c = this.f7644a.m36013c(size);
            C1944a d = this.f7644a.m36012d(size);
            int i = d.f7647a;
            if ((i & 3) == 3) {
                bVar.mo31514a(c);
            } else if ((i & 1) != 0) {
                RecyclerView.AbstractC0505l.C0508c cVar = d.f7648b;
                if (cVar == null) {
                    bVar.mo31514a(c);
                } else {
                    bVar.mo31512b(c, cVar, d.f7649c);
                }
            } else if ((i & 14) == 14) {
                bVar.mo31513a(c, d.f7648b, d.f7649c);
            } else if ((i & 12) == 12) {
                bVar.mo31511c(c, d.f7648b, d.f7649c);
            } else if ((i & 4) != 0) {
                bVar.mo31512b(c, d.f7648b, null);
            } else if ((i & 8) != 0) {
                bVar.mo31513a(c, d.f7648b, d.f7649c);
            }
            C1944a.m31516a(d);
        }
    }

    /* renamed from: b */
    public void m31527b() {
        C1944a.m31517a();
    }

    /* renamed from: b */
    public void m31525b(RecyclerView.AbstractC0495b0 b0Var, RecyclerView.AbstractC0505l.C0508c cVar) {
        C1944a aVar = this.f7644a.get(b0Var);
        C1944a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = C1944a.m31515b();
            this.f7644a.put(b0Var, aVar2);
        }
        aVar2.f7649c = cVar;
        aVar2.f7647a |= 8;
    }

    /* renamed from: b */
    public boolean m31526b(RecyclerView.AbstractC0495b0 b0Var) {
        C1944a aVar = this.f7644a.get(b0Var);
        boolean z = true;
        if (aVar == null || (aVar.f7647a & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public void m31523c(RecyclerView.AbstractC0495b0 b0Var, RecyclerView.AbstractC0505l.C0508c cVar) {
        C1944a aVar = this.f7644a.get(b0Var);
        C1944a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = C1944a.m31515b();
            this.f7644a.put(b0Var, aVar2);
        }
        aVar2.f7648b = cVar;
        aVar2.f7647a |= 4;
    }

    /* renamed from: c */
    public boolean m31524c(RecyclerView.AbstractC0495b0 b0Var) {
        C1944a aVar = this.f7644a.get(b0Var);
        return (aVar == null || (aVar.f7647a & 4) == 0) ? false : true;
    }

    /* renamed from: d */
    public void m31522d(RecyclerView.AbstractC0495b0 b0Var) {
        m31519g(b0Var);
    }

    /* renamed from: e */
    public RecyclerView.AbstractC0505l.C0508c m31521e(RecyclerView.AbstractC0495b0 b0Var) {
        return m31530a(b0Var, 8);
    }

    /* renamed from: f */
    public RecyclerView.AbstractC0505l.C0508c m31520f(RecyclerView.AbstractC0495b0 b0Var) {
        return m31530a(b0Var, 4);
    }

    /* renamed from: g */
    public void m31519g(RecyclerView.AbstractC0495b0 b0Var) {
        C1944a aVar = this.f7644a.get(b0Var);
        if (aVar != null) {
            aVar.f7647a &= -2;
        }
    }

    /* renamed from: h */
    public void m31518h(RecyclerView.AbstractC0495b0 b0Var) {
        int g = this.f7645b.m36046g() - 1;
        while (true) {
            if (g < 0) {
                break;
            } else if (b0Var == this.f7645b.m36049c(g)) {
                this.f7645b.m36053b(g);
                break;
            } else {
                g--;
            }
        }
        C1944a remove = this.f7644a.remove(b0Var);
        if (remove != null) {
            C1944a.m31516a(remove);
        }
    }
}
