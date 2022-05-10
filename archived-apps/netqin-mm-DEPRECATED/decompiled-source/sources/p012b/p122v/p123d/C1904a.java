package p012b.p122v.p123d;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import p012b.p042i.p053o.AbstractC0945e;
import p012b.p042i.p053o.C0946f;
import p012b.p122v.p123d.C1931g;
/* renamed from: b.v.d.a */
/* loaded from: classes-dex2jar.jar:b/v/d/a.class */
public class C1904a implements C1931g.AbstractC1932a {

    /* renamed from: a */
    public AbstractC0945e<C1906b> f7500a;

    /* renamed from: b */
    public final ArrayList<C1906b> f7501b;

    /* renamed from: c */
    public final ArrayList<C1906b> f7502c;

    /* renamed from: d */
    public final AbstractC1905a f7503d;

    /* renamed from: e */
    public Runnable f7504e;

    /* renamed from: f */
    public final boolean f7505f;

    /* renamed from: g */
    public final C1931g f7506g;

    /* renamed from: h */
    public int f7507h;

    /* renamed from: b.v.d.a$a */
    /* loaded from: classes-dex2jar.jar:b/v/d/a$a.class */
    public interface AbstractC1905a {
        /* renamed from: a */
        RecyclerView.AbstractC0495b0 mo31721a(int i);

        /* renamed from: a */
        void mo31720a(int i, int i2);

        /* renamed from: a */
        void mo31719a(int i, int i2, Object obj);

        /* renamed from: a */
        void mo31718a(C1906b bVar);

        /* renamed from: b */
        void mo31717b(int i, int i2);

        /* renamed from: b */
        void mo31716b(C1906b bVar);

        /* renamed from: c */
        void mo31715c(int i, int i2);

        /* renamed from: d */
        void mo31714d(int i, int i2);
    }

    /* renamed from: b.v.d.a$b */
    /* loaded from: classes-dex2jar.jar:b/v/d/a$b.class */
    public static class C1906b {

        /* renamed from: a */
        public int f7508a;

        /* renamed from: b */
        public int f7509b;

        /* renamed from: c */
        public Object f7510c;

        /* renamed from: d */
        public int f7511d;

        public C1906b(int i, int i2, int i3, Object obj) {
            this.f7508a = i;
            this.f7509b = i2;
            this.f7511d = i3;
            this.f7510c = obj;
        }

        /* renamed from: a */
        public String m31713a() {
            int i = this.f7508a;
            return i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C1906b.class != obj.getClass()) {
                return false;
            }
            C1906b bVar = (C1906b) obj;
            int i = this.f7508a;
            if (i != bVar.f7508a) {
                return false;
            }
            if (i == 8 && Math.abs(this.f7511d - this.f7509b) == 1 && this.f7511d == bVar.f7509b && this.f7509b == bVar.f7511d) {
                return true;
            }
            if (this.f7511d != bVar.f7511d || this.f7509b != bVar.f7509b) {
                return false;
            }
            Object obj2 = this.f7510c;
            return obj2 != null ? obj2.equals(bVar.f7510c) : bVar.f7510c == null;
        }

        public int hashCode() {
            return (((this.f7508a * 31) + this.f7509b) * 31) + this.f7511d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + m31713a() + ",s:" + this.f7509b + "c:" + this.f7511d + ",p:" + this.f7510c + "]";
        }
    }

    public C1904a(AbstractC1905a aVar) {
        this(aVar, false);
    }

    public C1904a(AbstractC1905a aVar, boolean z) {
        this.f7500a = new C0946f(30);
        this.f7501b = new ArrayList<>();
        this.f7502c = new ArrayList<>();
        this.f7507h = 0;
        this.f7503d = aVar;
        this.f7505f = z;
        this.f7506g = new C1931g(this);
    }

    /* renamed from: a */
    public int m31744a(int i) {
        int size = this.f7501b.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1906b bVar = this.f7501b.get(i2);
            int i3 = bVar.f7508a;
            if (i3 == 1) {
                i = i;
                if (bVar.f7509b <= i) {
                    i += bVar.f7511d;
                }
            } else if (i3 == 2) {
                int i4 = bVar.f7509b;
                i = i;
                if (i4 <= i) {
                    int i5 = bVar.f7511d;
                    if (i4 + i5 > i) {
                        return -1;
                    }
                    i -= i5;
                } else {
                    continue;
                }
            } else if (i3 != 8) {
                i = i;
            } else {
                int i6 = bVar.f7509b;
                if (i6 == i) {
                    i = bVar.f7511d;
                } else {
                    int i7 = i;
                    if (i6 < i) {
                        i7 = i - 1;
                    }
                    i = i7;
                    if (bVar.f7511d <= i7) {
                        i = i7 + 1;
                    }
                }
            }
        }
        return i;
    }

    /* renamed from: a */
    public int m31743a(int i, int i2) {
        int size = this.f7502c.size();
        for (int i3 = i2; i3 < size; i3++) {
            C1906b bVar = this.f7502c.get(i3);
            int i4 = bVar.f7508a;
            if (i4 == 8) {
                int i5 = bVar.f7509b;
                if (i5 == i) {
                    i = bVar.f7511d;
                } else {
                    int i6 = i;
                    if (i5 < i) {
                        i6 = i - 1;
                    }
                    i = i6;
                    if (bVar.f7511d <= i6) {
                        i = i6 + 1;
                    }
                }
            } else {
                int i7 = bVar.f7509b;
                i = i;
                if (i7 > i) {
                    continue;
                } else if (i4 == 2) {
                    int i8 = bVar.f7511d;
                    if (i < i7 + i8) {
                        return -1;
                    }
                    i -= i8;
                } else {
                    i = i;
                    if (i4 == 1) {
                        i += bVar.f7511d;
                    }
                }
            }
        }
        return i;
    }

    @Override // p012b.p122v.p123d.C1931g.AbstractC1932a
    /* renamed from: a */
    public C1906b mo31608a(int i, int i2, int i3, Object obj) {
        C1906b bVar;
        C1906b b = this.f7500a.mo35444b();
        if (b == null) {
            bVar = new C1906b(i, i2, i3, obj);
        } else {
            b.f7508a = i;
            b.f7509b = i2;
            b.f7511d = i3;
            b.f7510c = obj;
            bVar = b;
        }
        return bVar;
    }

    /* renamed from: a */
    public void m31745a() {
        int size = this.f7502c.size();
        for (int i = 0; i < size; i++) {
            this.f7503d.mo31716b(this.f7502c.get(i));
        }
        m31739a(this.f7502c);
        this.f7507h = 0;
    }

    @Override // p012b.p122v.p123d.C1931g.AbstractC1932a
    /* renamed from: a */
    public void mo31607a(C1906b bVar) {
        if (!this.f7505f) {
            bVar.f7510c = null;
            this.f7500a.mo35445a(bVar);
        }
    }

    /* renamed from: a */
    public void m31740a(C1906b bVar, int i) {
        this.f7503d.mo31718a(bVar);
        int i2 = bVar.f7508a;
        if (i2 == 2) {
            this.f7503d.mo31714d(i, bVar.f7511d);
        } else if (i2 == 4) {
            this.f7503d.mo31719a(i, bVar.f7511d, bVar.f7510c);
        } else {
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    /* renamed from: a */
    public void m31739a(List<C1906b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            mo31607a(list.get(i));
        }
        list.clear();
    }

    /* renamed from: a */
    public boolean m31742a(int i, int i2, int i3) {
        boolean z = false;
        if (i == i2) {
            return false;
        }
        if (i3 == 1) {
            this.f7501b.add(mo31608a(8, i, i2, null));
            this.f7507h |= 8;
            if (this.f7501b.size() == 1) {
                z = true;
            }
            return z;
        }
        throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
    }

    /* renamed from: a */
    public boolean m31741a(int i, int i2, Object obj) {
        boolean z = false;
        if (i2 < 1) {
            return false;
        }
        this.f7501b.add(mo31608a(4, i, i2, obj));
        this.f7507h |= 4;
        if (this.f7501b.size() == 1) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public void m31738b() {
        m31745a();
        int size = this.f7501b.size();
        for (int i = 0; i < size; i++) {
            C1906b bVar = this.f7501b.get(i);
            int i2 = bVar.f7508a;
            if (i2 == 1) {
                this.f7503d.mo31716b(bVar);
                this.f7503d.mo31715c(bVar.f7509b, bVar.f7511d);
            } else if (i2 == 2) {
                this.f7503d.mo31716b(bVar);
                this.f7503d.mo31714d(bVar.f7509b, bVar.f7511d);
            } else if (i2 == 4) {
                this.f7503d.mo31716b(bVar);
                this.f7503d.mo31719a(bVar.f7509b, bVar.f7511d, bVar.f7510c);
            } else if (i2 == 8) {
                this.f7503d.mo31716b(bVar);
                this.f7503d.mo31720a(bVar.f7509b, bVar.f7511d);
            }
            Runnable runnable = this.f7504e;
            if (runnable != null) {
                runnable.run();
            }
        }
        m31739a(this.f7501b);
        this.f7507h = 0;
    }

    /* renamed from: b */
    public final void m31735b(C1906b bVar) {
        m31722g(bVar);
    }

    /* renamed from: b */
    public final boolean m31737b(int i) {
        int size = this.f7502c.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1906b bVar = this.f7502c.get(i2);
            int i3 = bVar.f7508a;
            if (i3 == 8) {
                if (m31743a(bVar.f7511d, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = bVar.f7509b;
                int i5 = bVar.f7511d;
                for (int i6 = i4; i6 < i5 + i4; i6++) {
                    if (m31743a(i6, i2 + 1) == i) {
                        return true;
                    }
                }
                continue;
            } else {
                continue;
            }
        }
        return false;
    }

    /* renamed from: b */
    public boolean m31736b(int i, int i2) {
        boolean z = false;
        if (i2 < 1) {
            return false;
        }
        this.f7501b.add(mo31608a(1, i, i2, null));
        this.f7507h |= 1;
        if (this.f7501b.size() == 1) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public int m31733c(int i) {
        return m31743a(i, 0);
    }

    /* renamed from: c */
    public final void m31731c(C1906b bVar) {
        m31722g(bVar);
    }

    /* renamed from: c */
    public boolean m31734c() {
        return this.f7501b.size() > 0;
    }

    /* renamed from: c */
    public boolean m31732c(int i, int i2) {
        boolean z = false;
        if (i2 < 1) {
            return false;
        }
        this.f7501b.add(mo31608a(2, i, i2, null));
        this.f7507h |= 2;
        if (this.f7501b.size() == 1) {
            z = true;
        }
        return z;
    }

    /* renamed from: d */
    public final int m31728d(int i, int i2) {
        for (int size = this.f7502c.size() - 1; size >= 0; size--) {
            C1906b bVar = this.f7502c.get(size);
            int i3 = bVar.f7508a;
            if (i3 == 8) {
                int i4 = bVar.f7509b;
                int i5 = bVar.f7511d;
                if (i4 >= i5) {
                    i4 = i5;
                    i5 = i4;
                }
                if (i < i4 || i > i5) {
                    int i6 = bVar.f7509b;
                    i = i;
                    if (i < i6) {
                        if (i2 == 1) {
                            bVar.f7509b = i6 + 1;
                            bVar.f7511d++;
                            i = i;
                        } else {
                            i = i;
                            if (i2 == 2) {
                                bVar.f7509b = i6 - 1;
                                bVar.f7511d--;
                                i = i;
                            }
                        }
                    }
                } else {
                    int i7 = bVar.f7509b;
                    if (i4 == i7) {
                        if (i2 == 1) {
                            bVar.f7511d++;
                        } else if (i2 == 2) {
                            bVar.f7511d--;
                        }
                        i++;
                    } else {
                        if (i2 == 1) {
                            bVar.f7509b = i7 + 1;
                        } else if (i2 == 2) {
                            bVar.f7509b = i7 - 1;
                        }
                        i--;
                    }
                }
            } else {
                int i8 = bVar.f7509b;
                if (i8 <= i) {
                    if (i3 == 1) {
                        i -= bVar.f7511d;
                    } else {
                        i = i;
                        if (i3 == 2) {
                            i += bVar.f7511d;
                        }
                    }
                } else if (i2 == 1) {
                    bVar.f7509b = i8 + 1;
                    i = i;
                } else {
                    i = i;
                    if (i2 == 2) {
                        bVar.f7509b = i8 - 1;
                        i = i;
                    }
                }
            }
        }
        for (int size2 = this.f7502c.size() - 1; size2 >= 0; size2--) {
            C1906b bVar2 = this.f7502c.get(size2);
            if (bVar2.f7508a == 8) {
                int i9 = bVar2.f7511d;
                if (i9 == bVar2.f7509b || i9 < 0) {
                    this.f7502c.remove(size2);
                    mo31607a(bVar2);
                }
            } else if (bVar2.f7511d <= 0) {
                this.f7502c.remove(size2);
                mo31607a(bVar2);
            }
        }
        return i;
    }

    /* renamed from: d */
    public final void m31727d(C1906b bVar) {
        boolean z;
        int i = bVar.f7509b;
        int i2 = bVar.f7511d + i;
        char c = 65535;
        int i3 = i;
        int i4 = 0;
        while (i3 < i2) {
            if (this.f7503d.mo31721a(i3) != null || m31737b(i3)) {
                if (c == 0) {
                    m31723f(mo31608a(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                c = 1;
            } else {
                if (c == 1) {
                    m31722g(mo31608a(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                c = 0;
            }
            if (z) {
                i3 -= i4;
                i2 -= i4;
                i4 = 1;
            } else {
                i4++;
            }
            i3++;
        }
        C1906b bVar2 = bVar;
        if (i4 != bVar.f7511d) {
            mo31607a(bVar);
            bVar2 = mo31608a(2, i, i4, null);
        }
        if (c == 0) {
            m31723f(bVar2);
        } else {
            m31722g(bVar2);
        }
    }

    /* renamed from: d */
    public boolean m31730d() {
        return !this.f7502c.isEmpty() && !this.f7501b.isEmpty();
    }

    /* renamed from: d */
    public boolean m31729d(int i) {
        return (i & this.f7507h) != 0;
    }

    /* renamed from: e */
    public void m31726e() {
        this.f7506g.m31611b(this.f7501b);
        int size = this.f7501b.size();
        for (int i = 0; i < size; i++) {
            C1906b bVar = this.f7501b.get(i);
            int i2 = bVar.f7508a;
            if (i2 == 1) {
                m31735b(bVar);
            } else if (i2 == 2) {
                m31727d(bVar);
            } else if (i2 == 4) {
                m31725e(bVar);
            } else if (i2 == 8) {
                m31731c(bVar);
            }
            Runnable runnable = this.f7504e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f7501b.clear();
    }

    /* renamed from: e */
    public final void m31725e(C1906b bVar) {
        int i;
        int i2 = bVar.f7509b;
        int i3 = bVar.f7511d;
        int i4 = i2;
        char c = 65535;
        int i5 = 0;
        for (int i6 = i2; i6 < i3 + i2; i6++) {
            if (this.f7503d.mo31721a(i6) != null || m31737b(i6)) {
                i4 = i4;
                i = i5;
                if (c == 0) {
                    m31723f(mo31608a(4, i4, i5, bVar.f7510c));
                    i4 = i6;
                    i = 0;
                }
                c = 1;
            } else {
                i4 = i4;
                i = i5;
                if (c == 1) {
                    m31722g(mo31608a(4, i4, i5, bVar.f7510c));
                    i4 = i6;
                    i = 0;
                }
                c = 0;
            }
            i5 = i + 1;
        }
        C1906b bVar2 = bVar;
        if (i5 != bVar.f7511d) {
            Object obj = bVar.f7510c;
            mo31607a(bVar);
            bVar2 = mo31608a(4, i4, i5, obj);
        }
        if (c == 0) {
            m31723f(bVar2);
        } else {
            m31722g(bVar2);
        }
    }

    /* renamed from: f */
    public void m31724f() {
        m31739a(this.f7501b);
        m31739a(this.f7502c);
        this.f7507h = 0;
    }

    /* renamed from: f */
    public final void m31723f(C1906b bVar) {
        int i;
        int i2 = bVar.f7508a;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int d = m31728d(bVar.f7509b, i2);
        int i3 = bVar.f7509b;
        int i4 = bVar.f7508a;
        if (i4 == 2) {
            i = 0;
        } else if (i4 == 4) {
            i = 1;
        } else {
            throw new IllegalArgumentException("op should be remove or update." + bVar);
        }
        int i5 = 1;
        for (int i6 = 1; i6 < bVar.f7511d; i6++) {
            int d2 = m31728d(bVar.f7509b + (i * i6), bVar.f7508a);
            int i7 = bVar.f7508a;
            if (i7 == 2 ? d2 == d : i7 == 4 && d2 == d + 1) {
                i5++;
            } else {
                C1906b a = mo31608a(bVar.f7508a, d, i5, bVar.f7510c);
                m31740a(a, i3);
                mo31607a(a);
                i3 = i3;
                if (bVar.f7508a == 4) {
                    i3 += i5;
                }
                i5 = 1;
                d = d2;
            }
        }
        Object obj = bVar.f7510c;
        mo31607a(bVar);
        if (i5 > 0) {
            C1906b a2 = mo31608a(bVar.f7508a, d, i5, obj);
            m31740a(a2, i3);
            mo31607a(a2);
        }
    }

    /* renamed from: g */
    public final void m31722g(C1906b bVar) {
        this.f7502c.add(bVar);
        int i = bVar.f7508a;
        if (i == 1) {
            this.f7503d.mo31715c(bVar.f7509b, bVar.f7511d);
        } else if (i == 2) {
            this.f7503d.mo31717b(bVar.f7509b, bVar.f7511d);
        } else if (i == 4) {
            this.f7503d.mo31719a(bVar.f7509b, bVar.f7511d, bVar.f7510c);
        } else if (i == 8) {
            this.f7503d.mo31720a(bVar.f7509b, bVar.f7511d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }
}
