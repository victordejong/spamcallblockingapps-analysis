package androidx.recyclerview.widget;

import androidx.core.p036f.C0683e;
import androidx.recyclerview.widget.C1146x;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.recyclerview.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a.class */
public final class C1085a implements C1146x.AbstractC1147a {

    /* renamed from: a */
    final ArrayList<C1087b> f4731a;

    /* renamed from: b */
    final ArrayList<C1087b> f4732b;

    /* renamed from: c */
    final AbstractC1086a f4733c;

    /* renamed from: d */
    Runnable f4734d;

    /* renamed from: e */
    final boolean f4735e;

    /* renamed from: f */
    final C1146x f4736f;

    /* renamed from: g */
    private C0683e.AbstractC0684a<C1087b> f4737g;

    /* renamed from: h */
    private int f4738h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a$a.class */
    public interface AbstractC1086a {
        /* renamed from: a */
        RecyclerView.AbstractC1082t mo6861a(int i);

        /* renamed from: a */
        void mo6860a(int i, int i2);

        /* renamed from: a */
        void mo6859a(int i, int i2, Object obj);

        /* renamed from: a */
        void mo6858a(C1087b bVar);

        /* renamed from: b */
        void mo6857b(int i, int i2);

        /* renamed from: b */
        void mo6856b(C1087b bVar);

        /* renamed from: c */
        void mo6855c(int i, int i2);

        /* renamed from: d */
        void mo6853d(int i, int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a$b.class */
    public static final class C1087b {

        /* renamed from: a */
        int f4739a;

        /* renamed from: b */
        int f4740b;

        /* renamed from: c */
        Object f4741c;

        /* renamed from: d */
        int f4742d;

        C1087b(int i, int i2, int i3, Object obj) {
            this.f4739a = i;
            this.f4740b = i2;
            this.f4742d = i3;
            this.f4741c = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C1087b bVar = (C1087b) obj;
            int i = this.f4739a;
            if (i != bVar.f4739a) {
                return false;
            }
            if (i == 8 && Math.abs(this.f4742d - this.f4740b) == 1 && this.f4742d == bVar.f4740b && this.f4740b == bVar.f4742d) {
                return true;
            }
            if (this.f4742d != bVar.f4742d || this.f4740b != bVar.f4740b) {
                return false;
            }
            Object obj2 = this.f4741c;
            return obj2 != null ? obj2.equals(bVar.f4741c) : bVar.f4741c == null;
        }

        public final int hashCode() {
            return (((this.f4739a * 31) + this.f4740b) * 31) + this.f4742d;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append("[");
            int i = this.f4739a;
            sb.append(i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add");
            sb.append(",s:");
            sb.append(this.f4740b);
            sb.append("c:");
            sb.append(this.f4742d);
            sb.append(",p:");
            sb.append(this.f4741c);
            sb.append("]");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1085a(AbstractC1086a aVar) {
        this(aVar, (byte) 0);
    }

    private C1085a(AbstractC1086a aVar, byte b) {
        this.f4737g = new C0683e.C0685b(30);
        this.f4731a = new ArrayList<>();
        this.f4732b = new ArrayList<>();
        this.f4738h = 0;
        this.f4733c = aVar;
        this.f4735e = false;
        this.f4736f = new C1146x(this);
    }

    /* renamed from: a */
    private void m6877a(C1087b bVar, int i) {
        this.f4733c.mo6858a(bVar);
        int i2 = bVar.f4739a;
        if (i2 == 2) {
            this.f4733c.mo6860a(i, bVar.f4742d);
        } else if (i2 == 4) {
            this.f4733c.mo6859a(i, bVar.f4742d, bVar.f4741c);
        } else {
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    /* renamed from: a */
    private void m6876a(List<C1087b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            mo6718a(list.get(i));
        }
        list.clear();
    }

    /* renamed from: b */
    private void m6872b(C1087b bVar) {
        int i;
        if (bVar.f4739a == 1 || bVar.f4739a == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int e = m6863e(bVar.f4740b, bVar.f4739a);
        int i2 = bVar.f4740b;
        int i3 = bVar.f4739a;
        if (i3 == 2) {
            i = 0;
        } else if (i3 == 4) {
            i = 1;
        } else {
            throw new IllegalArgumentException("op should be remove or update.".concat(String.valueOf(bVar)));
        }
        int i4 = 1;
        for (int i5 = 1; i5 < bVar.f4742d; i5++) {
            int e2 = m6863e(bVar.f4740b + (i * i5), bVar.f4739a);
            int i6 = bVar.f4739a;
            if (i6 == 2 ? e2 == e : i6 == 4 && e2 == e + 1) {
                i4++;
            } else {
                C1087b a = mo6719a(bVar.f4739a, e, i4, bVar.f4741c);
                m6877a(a, i2);
                mo6718a(a);
                i2 = i2;
                if (bVar.f4739a == 4) {
                    i2 += i4;
                }
                i4 = 1;
                e = e2;
            }
        }
        Object obj = bVar.f4741c;
        mo6718a(bVar);
        if (i4 > 0) {
            C1087b a2 = mo6719a(bVar.f4739a, e, i4, obj);
            m6877a(a2, i2);
            mo6718a(a2);
        }
    }

    /* renamed from: c */
    private void m6868c(C1087b bVar) {
        this.f4732b.add(bVar);
        int i = bVar.f4739a;
        if (i == 1) {
            this.f4733c.mo6855c(bVar.f4740b, bVar.f4742d);
        } else if (i == 2) {
            this.f4733c.mo6857b(bVar.f4740b, bVar.f4742d);
        } else if (i == 4) {
            this.f4733c.mo6859a(bVar.f4740b, bVar.f4742d, bVar.f4741c);
        } else if (i == 8) {
            this.f4733c.mo6853d(bVar.f4740b, bVar.f4742d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for ".concat(String.valueOf(bVar)));
        }
    }

    /* renamed from: d */
    private boolean m6866d(int i) {
        int size = this.f4732b.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1087b bVar = this.f4732b.get(i2);
            if (bVar.f4739a == 8) {
                if (m6879a(bVar.f4742d, i2 + 1) == i) {
                    return true;
                }
            } else if (bVar.f4739a == 1) {
                int i3 = bVar.f4740b;
                int i4 = bVar.f4742d;
                for (int i5 = bVar.f4740b; i5 < i3 + i4; i5++) {
                    if (m6879a(i5, i2 + 1) == i) {
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

    /* renamed from: e */
    private int m6863e(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        for (int size = this.f4732b.size() - 1; size >= 0; size--) {
            C1087b bVar = this.f4732b.get(size);
            if (bVar.f4739a == 8) {
                if (bVar.f4740b < bVar.f4742d) {
                    i4 = bVar.f4740b;
                    i5 = bVar.f4742d;
                } else {
                    i4 = bVar.f4742d;
                    i5 = bVar.f4740b;
                }
                if (i < i4 || i > i5) {
                    i = i;
                    if (i < bVar.f4740b) {
                        if (i2 == 1) {
                            bVar.f4740b++;
                            i6 = bVar.f4742d + 1;
                        } else {
                            i = i;
                            if (i2 == 2) {
                                bVar.f4740b--;
                                i6 = bVar.f4742d - 1;
                            }
                        }
                        bVar.f4742d = i6;
                        i = i;
                    }
                } else if (i4 == bVar.f4740b) {
                    if (i2 == 1) {
                        i8 = bVar.f4742d + 1;
                    } else {
                        if (i2 == 2) {
                            i8 = bVar.f4742d - 1;
                        }
                        i++;
                    }
                    bVar.f4742d = i8;
                    i++;
                } else {
                    if (i2 == 1) {
                        i7 = bVar.f4740b + 1;
                    } else {
                        if (i2 == 2) {
                            i7 = bVar.f4740b - 1;
                        }
                        i--;
                    }
                    bVar.f4740b = i7;
                    i--;
                }
            } else if (bVar.f4740b > i) {
                if (i2 == 1) {
                    i3 = bVar.f4740b + 1;
                } else {
                    i = i;
                    if (i2 == 2) {
                        i3 = bVar.f4740b - 1;
                    }
                }
                bVar.f4740b = i3;
                i = i;
            } else if (bVar.f4739a == 1) {
                i -= bVar.f4742d;
            } else {
                i = i;
                if (bVar.f4739a == 2) {
                    i += bVar.f4742d;
                }
            }
        }
        for (int size2 = this.f4732b.size() - 1; size2 >= 0; size2--) {
            C1087b bVar2 = this.f4732b.get(size2);
            if (bVar2.f4739a == 8) {
                if (bVar2.f4742d != bVar2.f4740b && bVar2.f4742d >= 0) {
                }
                this.f4732b.remove(size2);
                mo6718a(bVar2);
            } else {
                if (bVar2.f4742d > 0) {
                }
                this.f4732b.remove(size2);
                mo6718a(bVar2);
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m6879a(int i, int i2) {
        int size = this.f4732b.size();
        for (int i3 = i2; i3 < size; i3++) {
            C1087b bVar = this.f4732b.get(i3);
            if (bVar.f4739a != 8) {
                i = i;
                if (bVar.f4740b > i) {
                    continue;
                } else if (bVar.f4739a != 2) {
                    i = i;
                    if (bVar.f4739a == 1) {
                        i += bVar.f4742d;
                    }
                } else if (i < bVar.f4740b + bVar.f4742d) {
                    return -1;
                } else {
                    i -= bVar.f4742d;
                }
            } else if (bVar.f4740b == i) {
                i = bVar.f4742d;
            } else {
                int i4 = i;
                if (bVar.f4740b < i) {
                    i4 = i - 1;
                }
                i = i4;
                if (bVar.f4742d <= i4) {
                    i = i4 + 1;
                }
            }
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.C1146x.AbstractC1147a
    /* renamed from: a */
    public final C1087b mo6719a(int i, int i2, int i3, Object obj) {
        C1087b bVar;
        C1087b a = this.f4737g.mo8552a();
        if (a == null) {
            bVar = new C1087b(i, i2, i3, obj);
        } else {
            a.f4739a = i;
            a.f4740b = i2;
            a.f4742d = i3;
            a.f4741c = obj;
            bVar = a;
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6881a() {
        m6876a(this.f4731a);
        m6876a(this.f4732b);
        this.f4738h = 0;
    }

    @Override // androidx.recyclerview.widget.C1146x.AbstractC1147a
    /* renamed from: a */
    public final void mo6718a(C1087b bVar) {
        if (!this.f4735e) {
            bVar.f4741c = null;
            this.f4737g.mo8551a(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m6880a(int i) {
        return (this.f4738h & i) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m6878a(int i, int i2, Object obj) {
        if (i2 <= 0) {
            return false;
        }
        this.f4731a.add(mo6719a(4, i, i2, obj));
        this.f4738h |= 4;
        return this.f4731a.size() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final int m6874b(int i) {
        return m6879a(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x03e2, code lost:
        if (r0.f4742d >= r0.f4740b) goto L_0x03e5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x03e5, code lost:
        r0.f4742d -= r0.f4742d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x03f5, code lost:
        r0.set(r11, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x040a, code lost:
        if (r0.f4740b == r0.f4742d) goto L_0x041b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x040d, code lost:
        r0.set(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x041b, code lost:
        r0.remove(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0426, code lost:
        if (r13 == null) goto L_0x000a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0429, code lost:
        r0.add(r11, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x04fe, code lost:
        if (r0 != 8) goto L_0x06d2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x05e7, code lost:
        if (r24 == 0) goto L_0x06c4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x06c1, code lost:
        if (r12 == 0) goto L_0x06c4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x06c4, code lost:
        m6872b(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0376, code lost:
        if (r0.f4742d > r0.f4740b) goto L_0x03e5;
     */
    /* JADX WARN: Removed duplicated region for block: B:191:0x06dd  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0199 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x000a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x06e4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x018a  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6875b() {
        /*
            Method dump skipped, instructions count: 1778
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C1085a.m6875b():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m6873b(int i, int i2) {
        if (i2 <= 0) {
            return false;
        }
        this.f4731a.add(mo6719a(1, i, i2, null));
        this.f4738h |= 1;
        return this.f4731a.size() == 1;
    }

    /* renamed from: c */
    public final int m6870c(int i) {
        int size = this.f4731a.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1087b bVar = this.f4731a.get(i2);
            int i3 = bVar.f4739a;
            if (i3 == 1) {
                i = i;
                if (bVar.f4740b <= i) {
                    i += bVar.f4742d;
                }
            } else if (i3 == 2) {
                i = i;
                if (bVar.f4740b > i) {
                    continue;
                } else if (bVar.f4740b + bVar.f4742d > i) {
                    return -1;
                } else {
                    i -= bVar.f4742d;
                }
            } else if (i3 != 8) {
                i = i;
            } else if (bVar.f4740b == i) {
                i = bVar.f4742d;
            } else {
                int i4 = i;
                if (bVar.f4740b < i) {
                    i4 = i - 1;
                }
                i = i4;
                if (bVar.f4742d <= i4) {
                    i = i4 + 1;
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m6871c() {
        int size = this.f4732b.size();
        for (int i = 0; i < size; i++) {
            this.f4733c.mo6856b(this.f4732b.get(i));
        }
        m6876a(this.f4732b);
        this.f4738h = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final boolean m6869c(int i, int i2) {
        if (i2 <= 0) {
            return false;
        }
        this.f4731a.add(mo6719a(2, i, i2, null));
        this.f4738h |= 2;
        return this.f4731a.size() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final boolean m6867d() {
        return this.f4731a.size() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final boolean m6865d(int i, int i2) {
        if (i == i2) {
            return false;
        }
        this.f4731a.add(mo6719a(8, i, i2, null));
        this.f4738h |= 8;
        return this.f4731a.size() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m6864e() {
        m6871c();
        int size = this.f4731a.size();
        for (int i = 0; i < size; i++) {
            C1087b bVar = this.f4731a.get(i);
            int i2 = bVar.f4739a;
            if (i2 == 1) {
                this.f4733c.mo6856b(bVar);
                this.f4733c.mo6855c(bVar.f4740b, bVar.f4742d);
            } else if (i2 == 2) {
                this.f4733c.mo6856b(bVar);
                this.f4733c.mo6860a(bVar.f4740b, bVar.f4742d);
            } else if (i2 == 4) {
                this.f4733c.mo6856b(bVar);
                this.f4733c.mo6859a(bVar.f4740b, bVar.f4742d, bVar.f4741c);
            } else if (i2 == 8) {
                this.f4733c.mo6856b(bVar);
                this.f4733c.mo6853d(bVar.f4740b, bVar.f4742d);
            }
            Runnable runnable = this.f4734d;
            if (runnable != null) {
                runnable.run();
            }
        }
        m6876a(this.f4731a);
        this.f4738h = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final boolean m6862f() {
        return !this.f4732b.isEmpty() && !this.f4731a.isEmpty();
    }
}
