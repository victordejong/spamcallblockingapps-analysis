package p012b.p063m.p064a;

import android.util.Log;
import androidx.fragment.app.Fragment;
import java.io.PrintWriter;
import java.util.ArrayList;
import p012b.p042i.p053o.C0942b;
import p012b.p063m.p064a.AbstractC1079j;
import p012b.p063m.p064a.LayoutInflater$Factory2C1062h;
/* renamed from: b.m.a.a */
/* loaded from: classes-dex2jar.jar:b/m/a/a.class */
public final class C1052a extends AbstractC1079j implements LayoutInflater$Factory2C1062h.AbstractC1074k {

    /* renamed from: r */
    public final LayoutInflater$Factory2C1062h f4418r;

    /* renamed from: s */
    public boolean f4419s;

    /* renamed from: t */
    public int f4420t = -1;

    public C1052a(LayoutInflater$Factory2C1062h hVar) {
        this.f4418r = hVar;
    }

    /* renamed from: b */
    public static boolean m34962b(AbstractC1079j.C1080a aVar) {
        Fragment fragment = aVar.f4532b;
        return fragment != null && fragment.f1292k && fragment.f1266G != null && !fragment.f1307z && !fragment.f1306y && fragment.m38441U();
    }

    @Override // p012b.p063m.p064a.AbstractC1079j
    /* renamed from: a */
    public int mo34750a() {
        return m34964a(false);
    }

    /* renamed from: a */
    public int m34964a(boolean z) {
        if (!this.f4419s) {
            if (LayoutInflater$Factory2C1062h.f4442H) {
                Log.v("FragmentManager", "Commit: " + this);
                PrintWriter printWriter = new PrintWriter(new C0942b("FragmentManager"));
                m34968a("  ", printWriter);
                printWriter.close();
            }
            this.f4419s = true;
            if (this.f4521h) {
                this.f4420t = this.f4418r.m34831b(this);
            } else {
                this.f4420t = -1;
            }
            this.f4418r.m34851a(this, z);
            return this.f4420t;
        }
        throw new IllegalStateException("commit already called");
    }

    /* renamed from: a */
    public Fragment m34965a(ArrayList<Fragment> arrayList, Fragment fragment) {
        int i;
        for (int i2 = 0; i2 < this.f4514a.size(); i2 = i + 1) {
            AbstractC1079j.C1080a aVar = this.f4514a.get(i2);
            int i3 = aVar.f4531a;
            if (i3 != 1) {
                if (i3 == 2) {
                    Fragment fragment2 = aVar.f4532b;
                    int i4 = fragment2.f1304w;
                    boolean z = false;
                    i = i2;
                    fragment = fragment;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        Fragment fragment3 = arrayList.get(size);
                        fragment = fragment;
                        i = i;
                        z = z;
                        if (fragment3.f1304w == i4) {
                            if (fragment3 == fragment2) {
                                z = true;
                                fragment = fragment;
                                i = i;
                            } else {
                                fragment = fragment;
                                int i5 = i;
                                if (fragment3 == fragment) {
                                    this.f4514a.add(i, new AbstractC1079j.C1080a(9, fragment3));
                                    i5 = i + 1;
                                    fragment = null;
                                }
                                AbstractC1079j.C1080a aVar2 = new AbstractC1079j.C1080a(3, fragment3);
                                aVar2.f4533c = aVar.f4533c;
                                aVar2.f4535e = aVar.f4535e;
                                aVar2.f4534d = aVar.f4534d;
                                aVar2.f4536f = aVar.f4536f;
                                this.f4514a.add(i5, aVar2);
                                arrayList.remove(fragment3);
                                i = i5 + 1;
                                z = z;
                            }
                        }
                    }
                    if (z) {
                        this.f4514a.remove(i);
                        i--;
                    } else {
                        aVar.f4531a = 1;
                        arrayList.add(fragment2);
                    }
                } else if (i3 == 3 || i3 == 6) {
                    arrayList.remove(aVar.f4532b);
                    Fragment fragment4 = aVar.f4532b;
                    fragment = fragment;
                    i = i2;
                    if (fragment4 == fragment) {
                        this.f4514a.add(i2, new AbstractC1079j.C1080a(9, fragment4));
                        i = i2 + 1;
                        fragment = null;
                    }
                } else if (i3 != 7) {
                    if (i3 != 8) {
                        fragment = fragment;
                        i = i2;
                    } else {
                        this.f4514a.add(i2, new AbstractC1079j.C1080a(9, fragment));
                        i = i2 + 1;
                        fragment = aVar.f4532b;
                    }
                }
            }
            arrayList.add(aVar.f4532b);
            i = i2;
            fragment = fragment;
        }
        return fragment;
    }

    /* renamed from: a */
    public void m34970a(int i) {
        AbstractC1079j.C1080a aVar;
        if (this.f4521h) {
            if (LayoutInflater$Factory2C1062h.f4442H) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            int size = this.f4514a.size();
            for (int i2 = 0; i2 < size; i2++) {
                Fragment fragment = this.f4514a.get(i2).f4532b;
                if (fragment != null) {
                    fragment.f1298q += i;
                    if (LayoutInflater$Factory2C1062h.f4442H) {
                        Log.v("FragmentManager", "Bump nesting of " + aVar.f4532b + " to " + aVar.f4532b.f1298q);
                    }
                }
            }
        }
    }

    @Override // p012b.p063m.p064a.AbstractC1079j
    /* renamed from: a */
    public void mo34748a(int i, Fragment fragment, String str, int i2) {
        super.mo34748a(i, fragment, str, i2);
        fragment.f1299r = this.f4418r;
    }

    /* renamed from: a */
    public void m34969a(Fragment.AbstractC0225e eVar) {
        for (int i = 0; i < this.f4514a.size(); i++) {
            AbstractC1079j.C1080a aVar = this.f4514a.get(i);
            if (m34962b(aVar)) {
                aVar.f4532b.m38416a(eVar);
            }
        }
    }

    /* renamed from: a */
    public void m34968a(String str, PrintWriter printWriter) {
        m34967a(str, printWriter, true);
    }

    /* renamed from: a */
    public void m34967a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f4522i);
            printWriter.print(" mIndex=");
            printWriter.print(this.f4420t);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f4419s);
            if (this.f4519f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f4519f));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.f4520g));
            }
            if (!(this.f4515b == 0 && this.f4516c == 0)) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f4515b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f4516c));
            }
            if (!(this.f4517d == 0 && this.f4518e == 0)) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f4517d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f4518e));
            }
            if (!(this.f4523j == 0 && this.f4524k == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f4523j));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f4524k);
            }
            if (!(this.f4525l == 0 && this.f4526m == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f4525l));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f4526m);
            }
        }
        if (!this.f4514a.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.f4514a.size();
            for (int i = 0; i < size; i++) {
                AbstractC1079j.C1080a aVar = this.f4514a.get(i);
                switch (aVar.f4531a) {
                    case 0:
                        str2 = "NULL";
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    case 8:
                        str2 = "SET_PRIMARY_NAV";
                        break;
                    case 9:
                        str2 = "UNSET_PRIMARY_NAV";
                        break;
                    case 10:
                        str2 = "OP_SET_MAX_LIFECYCLE";
                        break;
                    default:
                        str2 = "cmd=" + aVar.f4531a;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(aVar.f4532b);
                if (z) {
                    if (!(aVar.f4533c == 0 && aVar.f4534d == 0)) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.f4533c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f4534d));
                    }
                    if (aVar.f4535e != 0 || aVar.f4536f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.f4535e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f4536f));
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public boolean m34966a(ArrayList<C1052a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.f4514a.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            Fragment fragment = this.f4514a.get(i4).f4532b;
            int i5 = fragment != null ? fragment.f1304w : 0;
            i3 = i3;
            if (i5 != 0) {
                i3 = i3;
                if (i5 != i3) {
                    for (int i6 = i; i6 < i2; i6++) {
                        C1052a aVar = arrayList.get(i6);
                        int size2 = aVar.f4514a.size();
                        for (int i7 = 0; i7 < size2; i7++) {
                            Fragment fragment2 = aVar.f4514a.get(i7).f4532b;
                            if ((fragment2 != null ? fragment2.f1304w : 0) == i5) {
                                return true;
                            }
                        }
                    }
                    i3 = i5;
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    @Override // p012b.p063m.p064a.LayoutInflater$Factory2C1062h.AbstractC1074k
    /* renamed from: a */
    public boolean mo34765a(ArrayList<C1052a> arrayList, ArrayList<Boolean> arrayList2) {
        if (LayoutInflater$Factory2C1062h.f4442H) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (!this.f4521h) {
            return true;
        }
        this.f4418r.m34854a(this);
        return true;
    }

    @Override // p012b.p063m.p064a.AbstractC1079j
    /* renamed from: b */
    public int mo34744b() {
        return m34964a(true);
    }

    /* renamed from: b */
    public Fragment m34961b(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.f4514a.size() - 1; size >= 0; size--) {
            AbstractC1079j.C1080a aVar = this.f4514a.get(size);
            int i = aVar.f4531a;
            if (i != 1) {
                if (i != 3) {
                    switch (i) {
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = aVar.f4532b;
                            break;
                        case 10:
                            aVar.f4538h = aVar.f4537g;
                            break;
                    }
                }
                arrayList.add(aVar.f4532b);
            }
            arrayList.remove(aVar.f4532b);
        }
        return fragment;
    }

    @Override // p012b.p063m.p064a.AbstractC1079j
    /* renamed from: b */
    public AbstractC1079j mo34743b(Fragment fragment) {
        LayoutInflater$Factory2C1062h hVar = fragment.f1299r;
        if (hVar == null || hVar == this.f4418r) {
            super.mo34743b(fragment);
            return this;
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    /* renamed from: b */
    public void m34960b(boolean z) {
        for (int size = this.f4514a.size() - 1; size >= 0; size--) {
            AbstractC1079j.C1080a aVar = this.f4514a.get(size);
            Fragment fragment = aVar.f4532b;
            if (fragment != null) {
                fragment.m38434a(LayoutInflater$Factory2C1062h.m34812e(this.f4519f), this.f4520g);
            }
            switch (aVar.f4531a) {
                case 1:
                    fragment.m38435a(aVar.f4536f);
                    this.f4418r.m34781r(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f4531a);
                case 3:
                    fragment.m38435a(aVar.f4535e);
                    this.f4418r.m34856a(fragment, false);
                    break;
                case 4:
                    fragment.m38435a(aVar.f4535e);
                    this.f4418r.m34771w(fragment);
                    break;
                case 5:
                    fragment.m38435a(aVar.f4536f);
                    this.f4418r.m34797j(fragment);
                    break;
                case 6:
                    fragment.m38435a(aVar.f4535e);
                    this.f4418r.m34836b(fragment);
                    break;
                case 7:
                    fragment.m38435a(aVar.f4536f);
                    this.f4418r.m34816d(fragment);
                    break;
                case 8:
                    this.f4418r.m34773v(null);
                    break;
                case 9:
                    this.f4418r.m34773v(fragment);
                    break;
                case 10:
                    this.f4418r.m34858a(fragment, aVar.f4537g);
                    break;
            }
            if (!(this.f4529p || aVar.f4531a == 3 || fragment == null)) {
                this.f4418r.m34787o(fragment);
            }
        }
        if (!this.f4529p && z) {
            LayoutInflater$Factory2C1062h hVar = this.f4418r;
            hVar.m34872a(hVar.f4465p, true);
        }
    }

    /* renamed from: b */
    public boolean m34963b(int i) {
        int size = this.f4514a.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.f4514a.get(i2).f4532b;
            int i3 = fragment != null ? fragment.f1304w : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    @Override // p012b.p063m.p064a.AbstractC1079j
    /* renamed from: c */
    public AbstractC1079j mo34741c(Fragment fragment) {
        LayoutInflater$Factory2C1062h hVar = fragment.f1299r;
        if (hVar == null || hVar == this.f4418r) {
            super.mo34741c(fragment);
            return this;
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // p012b.p063m.p064a.AbstractC1079j
    /* renamed from: c */
    public void mo34742c() {
        m34740d();
        this.f4418r.m34830b((LayoutInflater$Factory2C1062h.AbstractC1074k) this, true);
    }

    /* renamed from: e */
    public void m34959e() {
        int size = this.f4514a.size();
        for (int i = 0; i < size; i++) {
            AbstractC1079j.C1080a aVar = this.f4514a.get(i);
            Fragment fragment = aVar.f4532b;
            if (fragment != null) {
                fragment.m38434a(this.f4519f, this.f4520g);
            }
            switch (aVar.f4531a) {
                case 1:
                    fragment.m38435a(aVar.f4533c);
                    this.f4418r.m34856a(fragment, false);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f4531a);
                case 3:
                    fragment.m38435a(aVar.f4534d);
                    this.f4418r.m34781r(fragment);
                    break;
                case 4:
                    fragment.m38435a(aVar.f4534d);
                    this.f4418r.m34797j(fragment);
                    break;
                case 5:
                    fragment.m38435a(aVar.f4533c);
                    this.f4418r.m34771w(fragment);
                    break;
                case 6:
                    fragment.m38435a(aVar.f4534d);
                    this.f4418r.m34816d(fragment);
                    break;
                case 7:
                    fragment.m38435a(aVar.f4533c);
                    this.f4418r.m34836b(fragment);
                    break;
                case 8:
                    this.f4418r.m34773v(fragment);
                    break;
                case 9:
                    this.f4418r.m34773v(null);
                    break;
                case 10:
                    this.f4418r.m34858a(fragment, aVar.f4538h);
                    break;
            }
            if (!(this.f4529p || aVar.f4531a == 1 || fragment == null)) {
                this.f4418r.m34787o(fragment);
            }
        }
        if (!this.f4529p) {
            LayoutInflater$Factory2C1062h hVar = this.f4418r;
            hVar.m34872a(hVar.f4465p, true);
        }
    }

    /* renamed from: f */
    public String m34958f() {
        return this.f4522i;
    }

    /* renamed from: g */
    public boolean m34957g() {
        for (int i = 0; i < this.f4514a.size(); i++) {
            if (m34962b(this.f4514a.get(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    public void m34956h() {
        if (this.f4530q != null) {
            for (int i = 0; i < this.f4530q.size(); i++) {
                this.f4530q.get(i).run();
            }
            this.f4530q = null;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f4420t >= 0) {
            sb.append(" #");
            sb.append(this.f4420t);
        }
        if (this.f4522i != null) {
            sb.append(" ");
            sb.append(this.f4522i);
        }
        sb.append("}");
        return sb.toString();
    }
}
