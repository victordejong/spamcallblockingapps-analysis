package androidx.recyclerview.widget;

import androidx.core.p036f.C0683e;
import androidx.p026b.C0529a;
import androidx.p026b.C0534f;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.recyclerview.widget.ar */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ar.class */
public final class C1108ar {

    /* renamed from: a */
    final C0529a<RecyclerView.AbstractC1082t, C1109a> f4762a = new C0529a<>();

    /* renamed from: b */
    final C0534f<RecyclerView.AbstractC1082t> f4763b = new C0534f<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.ar$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ar$a.class */
    public static final class C1109a {

        /* renamed from: d */
        static C0683e.AbstractC0684a<C1109a> f4764d = new C0683e.C0685b(20);

        /* renamed from: a */
        int f4765a;

        /* renamed from: b */
        RecyclerView.AbstractC1061f.C1063b f4766b;

        /* renamed from: c */
        RecyclerView.AbstractC1061f.C1063b f4767c;

        private C1109a() {
        }

        /* renamed from: a */
        static C1109a m6817a() {
            C1109a a = f4764d.mo8552a();
            C1109a aVar = a;
            if (a == null) {
                aVar = new C1109a();
            }
            return aVar;
        }

        /* renamed from: a */
        static void m6816a(C1109a aVar) {
            aVar.f4765a = 0;
            aVar.f4766b = null;
            aVar.f4767c = null;
            f4764d.mo8551a(aVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public static void m6815b() {
            do {
            } while (f4764d.mo8552a() != null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.ar$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ar$b.class */
    public interface AbstractC1110b {
        /* renamed from: a */
        void mo6814a(RecyclerView.AbstractC1082t tVar);

        /* renamed from: a */
        void mo6813a(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1061f.C1063b bVar, RecyclerView.AbstractC1061f.C1063b bVar2);

        /* renamed from: b */
        void mo6812b(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1061f.C1063b bVar, RecyclerView.AbstractC1061f.C1063b bVar2);

        /* renamed from: c */
        void mo6811c(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1061f.C1063b bVar, RecyclerView.AbstractC1061f.C1063b bVar2);
    }

    /* renamed from: a */
    private RecyclerView.AbstractC1061f.C1063b m6828a(RecyclerView.AbstractC1082t tVar, int i) {
        C1109a c;
        RecyclerView.AbstractC1061f.C1063b bVar;
        int a = this.f4762a.m8909a(tVar);
        if (a < 0 || (c = this.f4762a.m8903c(a)) == null || (c.f4765a & i) == 0) {
            return null;
        }
        c.f4765a &= i ^ (-1);
        if (i == 4) {
            bVar = c.f4766b;
        } else if (i == 8) {
            bVar = c.f4767c;
        } else {
            throw new IllegalArgumentException("Must provide flag PRE or POST");
        }
        if ((c.f4765a & 12) == 0) {
            this.f4762a.m8902d(a);
            C1109a.m6816a(c);
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final RecyclerView.AbstractC1082t m6831a(long j) {
        return this.f4763b.m8938a(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6832a() {
        this.f4762a.clear();
        this.f4763b.m8932c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6830a(long j, RecyclerView.AbstractC1082t tVar) {
        this.f4763b.m8933b(j, tVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6827a(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1061f.C1063b bVar) {
        C1109a aVar = this.f4762a.get(tVar);
        C1109a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = C1109a.m6817a();
            this.f4762a.put(tVar, aVar2);
        }
        aVar2.f4766b = bVar;
        aVar2.f4765a |= 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6826a(AbstractC1110b bVar) {
        RecyclerView.AbstractC1061f.C1063b bVar2;
        RecyclerView.AbstractC1061f.C1063b bVar3;
        for (int size = this.f4762a.size() - 1; size >= 0; size--) {
            RecyclerView.AbstractC1082t b = this.f4762a.m8905b(size);
            C1109a d = this.f4762a.m8902d(size);
            if ((d.f4765a & 3) != 3) {
                if ((d.f4765a & 1) == 0) {
                    if ((d.f4765a & 14) != 14) {
                        if ((d.f4765a & 12) == 12) {
                            bVar.mo6811c(b, d.f4766b, d.f4767c);
                        } else if ((d.f4765a & 4) != 0) {
                            bVar2 = d.f4766b;
                            bVar3 = null;
                        } else if ((d.f4765a & 8) == 0) {
                        }
                        C1109a.m6816a(d);
                    }
                    bVar.mo6812b(b, d.f4766b, d.f4767c);
                    C1109a.m6816a(d);
                } else if (d.f4766b != null) {
                    bVar2 = d.f4766b;
                    bVar3 = d.f4767c;
                }
                bVar.mo6813a(b, bVar2, bVar3);
                C1109a.m6816a(d);
            }
            bVar.mo6814a(b);
            C1109a.m6816a(d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m6829a(RecyclerView.AbstractC1082t tVar) {
        C1109a aVar = this.f4762a.get(tVar);
        return (aVar == null || (aVar.f4765a & 1) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final RecyclerView.AbstractC1061f.C1063b m6825b(RecyclerView.AbstractC1082t tVar) {
        return m6828a(tVar, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m6824b(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1061f.C1063b bVar) {
        C1109a aVar = this.f4762a.get(tVar);
        C1109a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = C1109a.m6817a();
            this.f4762a.put(tVar, aVar2);
        }
        aVar2.f4765a |= 2;
        aVar2.f4766b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final RecyclerView.AbstractC1061f.C1063b m6823c(RecyclerView.AbstractC1082t tVar) {
        return m6828a(tVar, 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m6822c(RecyclerView.AbstractC1082t tVar, RecyclerView.AbstractC1061f.C1063b bVar) {
        C1109a aVar = this.f4762a.get(tVar);
        C1109a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = C1109a.m6817a();
            this.f4762a.put(tVar, aVar2);
        }
        aVar2.f4767c = bVar;
        aVar2.f4765a |= 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final boolean m6821d(RecyclerView.AbstractC1082t tVar) {
        C1109a aVar = this.f4762a.get(tVar);
        return (aVar == null || (aVar.f4765a & 4) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m6820e(RecyclerView.AbstractC1082t tVar) {
        C1109a aVar = this.f4762a.get(tVar);
        C1109a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = C1109a.m6817a();
            this.f4762a.put(tVar, aVar2);
        }
        aVar2.f4765a |= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m6819f(RecyclerView.AbstractC1082t tVar) {
        C1109a aVar = this.f4762a.get(tVar);
        if (aVar != null) {
            aVar.f4765a &= -2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m6818g(RecyclerView.AbstractC1082t tVar) {
        int b = this.f4763b.m8936b() - 1;
        while (true) {
            if (b < 0) {
                break;
            } else if (tVar == this.f4763b.m8931c(b)) {
                this.f4763b.m8939a(b);
                break;
            } else {
                b--;
            }
        }
        C1109a remove = this.f4762a.remove(tVar);
        if (remove != null) {
            C1109a.m6816a(remove);
        }
    }
}
