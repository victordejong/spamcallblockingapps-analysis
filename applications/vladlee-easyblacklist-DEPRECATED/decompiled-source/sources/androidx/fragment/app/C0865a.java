package androidx.fragment.app;

import android.util.Log;
import androidx.core.p036f.C0680b;
import androidx.fragment.app.AbstractC0867ab;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.LayoutInflater$Factory2C0898n;
import androidx.lifecycle.AbstractC0927f;
import java.io.PrintWriter;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.a */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/a.class */
public final class C0865a extends AbstractC0867ab implements LayoutInflater$Factory2C0898n.AbstractC0902d {

    /* renamed from: a */
    final LayoutInflater$Factory2C0898n f3658a;

    /* renamed from: b */
    boolean f3659b;

    /* renamed from: c */
    int f3660c = -1;

    public C0865a(LayoutInflater$Factory2C0898n nVar) {
        this.f3658a = nVar;
    }

    /* renamed from: b */
    private int m7836b(boolean z) {
        if (!this.f3659b) {
            if (LayoutInflater$Factory2C0898n.f3777b) {
                Log.v("FragmentManager", "Commit: ".concat(String.valueOf(this)));
                PrintWriter printWriter = new PrintWriter(new C0680b("FragmentManager"));
                m7844a("  ", printWriter);
                printWriter.close();
            }
            this.f3659b = true;
            this.f3660c = this.f3668k ? this.f3658a.m7704a(this) : -1;
            this.f3658a.m7701a(this, z);
            return this.f3660c;
        }
        throw new IllegalStateException("commit already called");
    }

    /* renamed from: b */
    private static boolean m7838b(AbstractC0867ab.C0868a aVar) {
        Fragment fragment = aVar.f3680b;
        return fragment != null && fragment.f3588t && fragment.f3560O != null && !fragment.f3554I && !fragment.f3553H && fragment.m7866v();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Fragment m7841a(ArrayList<Fragment> arrayList, Fragment fragment) {
        int i;
        int i2 = 0;
        while (i2 < this.f3661d.size()) {
            AbstractC0867ab.C0868a aVar = this.f3661d.get(i2);
            int i3 = aVar.f3679a;
            if (i3 != 1) {
                if (i3 == 2) {
                    Fragment fragment2 = aVar.f3680b;
                    int i4 = fragment2.f3551F;
                    fragment = fragment;
                    boolean z = false;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        Fragment fragment3 = arrayList.get(size);
                        z = z;
                        i2 = i2;
                        fragment = fragment;
                        if (fragment3.f3551F == i4) {
                            if (fragment3 == fragment2) {
                                z = true;
                                i2 = i2;
                                fragment = fragment;
                            } else {
                                int i5 = i2;
                                fragment = fragment;
                                if (fragment3 == fragment) {
                                    this.f3661d.add(i2, new AbstractC0867ab.C0868a(9, fragment3));
                                    i5 = i2 + 1;
                                    fragment = null;
                                }
                                AbstractC0867ab.C0868a aVar2 = new AbstractC0867ab.C0868a(3, fragment3);
                                aVar2.f3681c = aVar.f3681c;
                                aVar2.f3683e = aVar.f3683e;
                                aVar2.f3682d = aVar.f3682d;
                                aVar2.f3684f = aVar.f3684f;
                                this.f3661d.add(i5, aVar2);
                                arrayList.remove(fragment3);
                                i2 = i5 + 1;
                                z = z;
                            }
                        }
                    }
                    if (z) {
                        this.f3661d.remove(i2);
                        i = i2 - 1;
                    } else {
                        aVar.f3679a = 1;
                        arrayList.add(fragment2);
                        i = i2;
                    }
                } else if (i3 == 3 || i3 == 6) {
                    arrayList.remove(aVar.f3680b);
                    i = i2;
                    fragment = fragment;
                    if (aVar.f3680b == fragment) {
                        this.f3661d.add(i2, new AbstractC0867ab.C0868a(9, aVar.f3680b));
                        i = i2 + 1;
                        fragment = null;
                    }
                } else if (i3 != 7) {
                    if (i3 != 8) {
                        i = i2;
                        fragment = fragment;
                    } else {
                        this.f3661d.add(i2, new AbstractC0867ab.C0868a(9, fragment));
                        i = i2 + 1;
                        fragment = aVar.f3680b;
                    }
                }
                i2 = i + 1;
            }
            arrayList.add(aVar.f3680b);
            fragment = fragment;
            i = i2;
            i2 = i + 1;
        }
        return fragment;
    }

    @Override // androidx.fragment.app.AbstractC0867ab
    /* renamed from: a */
    public final AbstractC0867ab mo7830a(Fragment fragment) {
        if (fragment.f3546A == null || fragment.f3546A == this.f3658a) {
            return super.mo7830a(fragment);
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.AbstractC0867ab
    /* renamed from: a */
    public final AbstractC0867ab mo7829a(Fragment fragment, AbstractC0927f.EnumC0929b bVar) {
        if (fragment.f3546A != this.f3658a) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.f3658a);
        } else if (bVar.m7585a(AbstractC0927f.EnumC0929b.CREATED)) {
            return super.mo7829a(fragment, bVar);
        } else {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle below " + AbstractC0927f.EnumC0929b.CREATED);
        }
    }

    /* renamed from: a */
    public final void m7847a() {
        if (this.f3678u != null) {
            for (int i = 0; i < this.f3678u.size(); i++) {
                this.f3678u.get(i).run();
            }
            this.f3678u = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7846a(int i) {
        if (this.f3668k) {
            if (LayoutInflater$Factory2C0898n.f3777b) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            int size = this.f3661d.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0867ab.C0868a aVar = this.f3661d.get(i2);
                if (aVar.f3680b != null) {
                    aVar.f3680b.f3594z += i;
                    if (LayoutInflater$Factory2C0898n.f3777b) {
                        Log.v("FragmentManager", "Bump nesting of " + aVar.f3680b + " to " + aVar.f3680b.f3594z);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.fragment.app.AbstractC0867ab
    /* renamed from: a */
    public final void mo7831a(int i, Fragment fragment, String str, int i2) {
        super.mo7831a(i, fragment, str, i2);
        fragment.f3546A = this.f3658a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7845a(Fragment.AbstractC0862c cVar) {
        for (int i = 0; i < this.f3661d.size(); i++) {
            AbstractC0867ab.C0868a aVar = this.f3661d.get(i);
            if (m7838b(aVar)) {
                aVar.f3680b.m7899a(cVar);
            }
        }
    }

    /* renamed from: a */
    public final void m7844a(String str, PrintWriter printWriter) {
        m7843a(str, printWriter, true);
    }

    /* renamed from: a */
    public final void m7843a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f3670m);
            printWriter.print(" mIndex=");
            printWriter.print(this.f3660c);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f3659b);
            if (this.f3666i != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f3666i));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.f3667j));
            }
            if (!(this.f3662e == 0 && this.f3663f == 0)) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f3662e));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f3663f));
            }
            if (!(this.f3664g == 0 && this.f3665h == 0)) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f3664g));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f3665h));
            }
            if (!(this.f3671n == 0 && this.f3672o == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f3671n));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f3672o);
            }
            if (!(this.f3673p == 0 && this.f3674q == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f3673p));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f3674q);
            }
        }
        if (!this.f3661d.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.f3661d.size();
            for (int i = 0; i < size; i++) {
                AbstractC0867ab.C0868a aVar = this.f3661d.get(i);
                switch (aVar.f3679a) {
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
                        str2 = "cmd=" + aVar.f3679a;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(aVar.f3680b);
                if (z) {
                    if (!(aVar.f3681c == 0 && aVar.f3682d == 0)) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.f3681c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f3682d));
                    }
                    if (aVar.f3683e != 0 || aVar.f3684f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.f3683e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f3684f));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7840a(boolean z) {
        for (int size = this.f3661d.size() - 1; size >= 0; size--) {
            AbstractC0867ab.C0868a aVar = this.f3661d.get(size);
            Fragment fragment = aVar.f3680b;
            if (fragment != null) {
                fragment.m7908a(LayoutInflater$Factory2C0898n.m7691b(this.f3666i), this.f3667j);
            }
            switch (aVar.f3679a) {
                case 1:
                    fragment.m7909a(aVar.f3684f);
                    this.f3658a.m7660i(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f3679a);
                case 3:
                    fragment.m7909a(aVar.f3683e);
                    this.f3658a.m7705a(fragment, false);
                    break;
                case 4:
                    fragment.m7909a(aVar.f3683e);
                    LayoutInflater$Factory2C0898n.m7656k(fragment);
                    break;
                case 5:
                    fragment.m7909a(aVar.f3684f);
                    LayoutInflater$Factory2C0898n.m7658j(fragment);
                    break;
                case 6:
                    fragment.m7909a(aVar.f3683e);
                    this.f3658a.m7652m(fragment);
                    break;
                case 7:
                    fragment.m7909a(aVar.f3684f);
                    this.f3658a.m7654l(fragment);
                    break;
                case 8:
                    this.f3658a.m7650n(null);
                    break;
                case 9:
                    this.f3658a.m7650n(fragment);
                    break;
                case 10:
                    this.f3658a.m7706a(fragment, aVar.f3685g);
                    break;
            }
            if (!(this.f3677t || aVar.f3679a == 3 || fragment == null)) {
                this.f3658a.m7664g(fragment);
            }
        }
        if (!this.f3677t && z) {
            LayoutInflater$Factory2C0898n nVar = this.f3658a;
            nVar.m7722a(nVar.f3795m, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m7842a(ArrayList<C0865a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.f3661d.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            AbstractC0867ab.C0868a aVar = this.f3661d.get(i4);
            int i5 = aVar.f3680b != null ? aVar.f3680b.f3551F : 0;
            i3 = i3;
            if (i5 != 0) {
                i3 = i3;
                if (i5 != i3) {
                    for (int i6 = i; i6 < i2; i6++) {
                        C0865a aVar2 = arrayList.get(i6);
                        int size2 = aVar2.f3661d.size();
                        for (int i7 = 0; i7 < size2; i7++) {
                            AbstractC0867ab.C0868a aVar3 = aVar2.f3661d.get(i7);
                            if ((aVar3.f3680b != null ? aVar3.f3680b.f3551F : 0) == i5) {
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

    @Override // androidx.fragment.app.LayoutInflater$Factory2C0898n.AbstractC0902d
    /* renamed from: a */
    public final boolean mo7625a(ArrayList<C0865a> arrayList, ArrayList<Boolean> arrayList2) {
        if (LayoutInflater$Factory2C0898n.f3777b) {
            Log.v("FragmentManager", "Run: ".concat(String.valueOf(this)));
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f3668k) {
            return true;
        }
        LayoutInflater$Factory2C0898n nVar = this.f3658a;
        if (nVar.f3790h == null) {
            nVar.f3790h = new ArrayList<>();
        }
        nVar.f3790h.add(this);
        return true;
    }

    @Override // androidx.fragment.app.AbstractC0867ab
    /* renamed from: b */
    public final int mo7825b() {
        return m7836b(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final Fragment m7837b(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.f3661d.size() - 1; size >= 0; size--) {
            AbstractC0867ab.C0868a aVar = this.f3661d.get(size);
            int i = aVar.f3679a;
            if (i != 1) {
                if (i != 3) {
                    switch (i) {
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = aVar.f3680b;
                            break;
                        case 10:
                            aVar.f3686h = aVar.f3685g;
                            break;
                    }
                }
                arrayList.add(aVar.f3680b);
            }
            arrayList.remove(aVar.f3680b);
        }
        return fragment;
    }

    @Override // androidx.fragment.app.AbstractC0867ab
    /* renamed from: b */
    public final AbstractC0867ab mo7823b(Fragment fragment) {
        if (fragment.f3546A == null || fragment.f3546A == this.f3658a) {
            return super.mo7823b(fragment);
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m7839b(int i) {
        int size = this.f3661d.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC0867ab.C0868a aVar = this.f3661d.get(i2);
            int i3 = aVar.f3680b != null ? aVar.f3680b.f3551F : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.fragment.app.AbstractC0867ab
    /* renamed from: c */
    public final int mo7822c() {
        return m7836b(true);
    }

    @Override // androidx.fragment.app.AbstractC0867ab
    /* renamed from: d */
    public final void mo7820d() {
        m7818h();
        this.f3658a.m7684b((LayoutInflater$Factory2C0898n.AbstractC0902d) this, false);
    }

    @Override // androidx.fragment.app.AbstractC0867ab
    /* renamed from: e */
    public final void mo7819e() {
        m7818h();
        this.f3658a.m7684b((LayoutInflater$Factory2C0898n.AbstractC0902d) this, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m7835f() {
        int size = this.f3661d.size();
        for (int i = 0; i < size; i++) {
            AbstractC0867ab.C0868a aVar = this.f3661d.get(i);
            Fragment fragment = aVar.f3680b;
            if (fragment != null) {
                fragment.m7908a(this.f3666i, this.f3667j);
            }
            switch (aVar.f3679a) {
                case 1:
                    fragment.m7909a(aVar.f3681c);
                    this.f3658a.m7705a(fragment, false);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f3679a);
                case 3:
                    fragment.m7909a(aVar.f3682d);
                    this.f3658a.m7660i(fragment);
                    break;
                case 4:
                    fragment.m7909a(aVar.f3682d);
                    LayoutInflater$Factory2C0898n.m7658j(fragment);
                    break;
                case 5:
                    fragment.m7909a(aVar.f3681c);
                    LayoutInflater$Factory2C0898n.m7656k(fragment);
                    break;
                case 6:
                    fragment.m7909a(aVar.f3682d);
                    this.f3658a.m7654l(fragment);
                    break;
                case 7:
                    fragment.m7909a(aVar.f3681c);
                    this.f3658a.m7652m(fragment);
                    break;
                case 8:
                    this.f3658a.m7650n(fragment);
                    break;
                case 9:
                    this.f3658a.m7650n(null);
                    break;
                case 10:
                    this.f3658a.m7706a(fragment, aVar.f3686h);
                    break;
            }
            if (!(this.f3677t || aVar.f3679a == 1 || fragment == null)) {
                this.f3658a.m7664g(fragment);
            }
        }
        if (!this.f3677t) {
            LayoutInflater$Factory2C0898n nVar = this.f3658a;
            nVar.m7722a(nVar.f3795m, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final boolean m7834g() {
        for (int i = 0; i < this.f3661d.size(); i++) {
            if (m7838b(this.f3661d.get(i))) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f3660c >= 0) {
            sb.append(" #");
            sb.append(this.f3660c);
        }
        if (this.f3670m != null) {
            sb.append(" ");
            sb.append(this.f3670m);
        }
        sb.append("}");
        return sb.toString();
    }
}
