package androidx.fragment.app;

import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.fragment.app.x */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/x.class */
public class C0299x {

    /* renamed from: a */
    private final ArrayList<Fragment> f1601a = new ArrayList<>();

    /* renamed from: b */
    private final HashMap<String, C0296v> f1602b = new HashMap<>();

    /* renamed from: c */
    private q f1603c;

    /* renamed from: a */
    public void m5564a(Fragment fragment) {
        if (this.f1601a.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f1601a) {
            this.f1601a.add(fragment);
        }
        fragment.mAdded = true;
    }

    /* renamed from: b */
    public void m5563b() {
        this.f1602b.values().removeAll(Collections.singleton(null));
    }

    /* renamed from: c */
    public boolean m5562c(String str) {
        return this.f1602b.get(str) != null;
    }

    /* renamed from: d */
    public void m5561d(int i) {
        for (C0296v c0296v : this.f1602b.values()) {
            if (c0296v != null) {
                c0296v.m5567u(i);
            }
        }
    }

    /* renamed from: e */
    public void m5560e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.f1602b.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments:");
            for (C0296v c0296v : this.f1602b.values()) {
                printWriter.print(str);
                if (c0296v != null) {
                    Fragment m5577k = c0296v.m5577k();
                    printWriter.println(m5577k);
                    m5577k.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size = this.f1601a.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.f1601a.get(i).toString());
            }
        }
    }

    /* renamed from: f */
    public Fragment m5559f(String str) {
        C0296v c0296v = this.f1602b.get(str);
        if (c0296v != null) {
            return c0296v.m5577k();
        }
        return null;
    }

    /* renamed from: g */
    public Fragment m5558g(int i) {
        for (int size = this.f1601a.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f1601a.get(size);
            if (fragment != null && fragment.mFragmentId == i) {
                return fragment;
            }
        }
        for (C0296v c0296v : this.f1602b.values()) {
            if (c0296v != null) {
                Fragment m5577k = c0296v.m5577k();
                if (m5577k.mFragmentId == i) {
                    return m5577k;
                }
            }
        }
        return null;
    }

    /* renamed from: h */
    public Fragment m5557h(String str) {
        if (str != null) {
            for (int size = this.f1601a.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f1601a.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str != null) {
            for (C0296v c0296v : this.f1602b.values()) {
                if (c0296v != null) {
                    Fragment m5577k = c0296v.m5577k();
                    if (str.equals(m5577k.mTag)) {
                        return m5577k;
                    }
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: i */
    public Fragment m5556i(String str) {
        Fragment findFragmentByWho;
        for (C0296v c0296v : this.f1602b.values()) {
            if (c0296v != null && (findFragmentByWho = c0296v.m5577k().findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004d, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
        if (r8 >= r3.f1601a.size()) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005c, code lost:
        r0 = r3.f1601a.get(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006e, code lost:
        if (r0.mContainer != r0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0071, code lost:
        r0 = r0.mView;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0077, code lost:
        if (r0 == null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007f, code lost:
        return r0.indexOfChild(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
        return -1;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m5555j(androidx.fragment.app.Fragment r4) {
        /*
            r3 = this;
            r0 = r4
            android.view.ViewGroup r0 = r0.mContainer
            r5 = r0
            r0 = r5
            if (r0 != 0) goto Lb
            r0 = -1
            return r0
        Lb:
            r0 = r3
            java.util.ArrayList<androidx.fragment.app.Fragment> r0 = r0.f1601a
            r1 = r4
            int r0 = r0.indexOf(r1)
            r6 = r0
            r0 = r6
            r1 = 1
            int r0 = r0 - r1
            r7 = r0
        L19:
            r0 = r6
            r8 = r0
            r0 = r7
            if (r0 < 0) goto L4d
            r0 = r3
            java.util.ArrayList<androidx.fragment.app.Fragment> r0 = r0.f1601a
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            r4 = r0
            r0 = r4
            android.view.ViewGroup r0 = r0.mContainer
            r1 = r5
            if (r0 != r1) goto L47
            r0 = r4
            android.view.View r0 = r0.mView
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L47
            r0 = r5
            r1 = r4
            int r0 = r0.indexOfChild(r1)
            r1 = 1
            int r0 = r0 + r1
            return r0
        L47:
            int r7 = r7 + (-1)
            goto L19
        L4d:
            int r8 = r8 + 1
            r0 = r8
            r1 = r3
            java.util.ArrayList<androidx.fragment.app.Fragment> r1 = r1.f1601a
            int r1 = r1.size()
            if (r0 >= r1) goto L83
            r0 = r3
            java.util.ArrayList<androidx.fragment.app.Fragment> r0 = r0.f1601a
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            r4 = r0
            r0 = r4
            android.view.ViewGroup r0 = r0.mContainer
            r1 = r5
            if (r0 != r1) goto L80
            r0 = r4
            android.view.View r0 = r0.mView
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L80
            r0 = r5
            r1 = r4
            int r0 = r0.indexOfChild(r1)
            return r0
        L80:
            goto L4d
        L83:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C0299x.m5555j(androidx.fragment.app.Fragment):int");
    }

    /* renamed from: k */
    public List<C0296v> m5554k() {
        ArrayList arrayList = new ArrayList();
        for (C0296v c0296v : this.f1602b.values()) {
            if (c0296v != null) {
                arrayList.add(c0296v);
            }
        }
        return arrayList;
    }

    /* renamed from: l */
    public List<Fragment> m5553l() {
        ArrayList arrayList = new ArrayList();
        for (C0296v c0296v : this.f1602b.values()) {
            if (c0296v != null) {
                arrayList.add(c0296v.m5577k());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    /* renamed from: m */
    public C0296v m5552m(String str) {
        return this.f1602b.get(str);
    }

    /* renamed from: n */
    public List<Fragment> m5551n() {
        ArrayList arrayList;
        if (this.f1601a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f1601a) {
            arrayList = new ArrayList(this.f1601a);
        }
        return arrayList;
    }

    /* renamed from: o */
    public q m5550o() {
        return this.f1603c;
    }

    /* renamed from: p */
    public void m5549p(C0296v c0296v) {
        Fragment m5577k = c0296v.m5577k();
        if (m5562c(m5577k.mWho)) {
            return;
        }
        this.f1602b.put(m5577k.mWho, c0296v);
        if (m5577k.mRetainInstanceChangedWhileDetached) {
            if (m5577k.mRetainInstance) {
                this.f1603c.f(m5577k);
            } else {
                this.f1603c.n(m5577k);
            }
            m5577k.mRetainInstanceChangedWhileDetached = false;
        }
        if (!AbstractC0281n.m5720H0(2)) {
            return;
        }
        Log.v("FragmentManager", "Added fragment to active set " + m5577k);
    }

    /* renamed from: q */
    public void m5548q(C0296v c0296v) {
        Fragment m5577k = c0296v.m5577k();
        if (m5577k.mRetainInstance) {
            this.f1603c.n(m5577k);
        }
        if (this.f1602b.put(m5577k.mWho, null) != null && AbstractC0281n.m5720H0(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + m5577k);
        }
    }

    /* renamed from: r */
    public void m5547r() {
        Iterator<Fragment> it = this.f1601a.iterator();
        while (it.hasNext()) {
            C0296v c0296v = this.f1602b.get(it.next().mWho);
            if (c0296v != null) {
                c0296v.m5575m();
            }
        }
        for (C0296v c0296v2 : this.f1602b.values()) {
            if (c0296v2 != null) {
                c0296v2.m5575m();
                Fragment m5577k = c0296v2.m5577k();
                if (m5577k.mRemoving && !m5577k.isInBackStack()) {
                    m5548q(c0296v2);
                }
            }
        }
    }

    /* renamed from: s */
    public void m5546s(Fragment fragment) {
        synchronized (this.f1601a) {
            this.f1601a.remove(fragment);
        }
        fragment.mAdded = false;
    }

    /* renamed from: t */
    public void m5545t() {
        this.f1602b.clear();
    }

    /* renamed from: u */
    public void m5544u(List<String> list) {
        this.f1601a.clear();
        if (list != null) {
            for (String str : list) {
                Fragment m5559f = m5559f(str);
                if (m5559f == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (AbstractC0281n.m5720H0(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + m5559f);
                }
                m5564a(m5559f);
            }
        }
    }

    /* renamed from: v */
    public ArrayList<C0294u> m5543v() {
        ArrayList<C0294u> arrayList = new ArrayList<>(this.f1602b.size());
        for (C0296v c0296v : this.f1602b.values()) {
            if (c0296v != null) {
                Fragment m5577k = c0296v.m5577k();
                C0294u m5569s = c0296v.m5569s();
                arrayList.add(m5569s);
                if (AbstractC0281n.m5720H0(2)) {
                    Log.v("FragmentManager", "Saved state of " + m5577k + ": " + m5569s.f1593r);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: w */
    public ArrayList<String> m5542w() {
        synchronized (this.f1601a) {
            if (this.f1601a.isEmpty()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(this.f1601a.size());
            Iterator<Fragment> it = this.f1601a.iterator();
            while (it.hasNext()) {
                Fragment next = it.next();
                arrayList.add(next.mWho);
                if (AbstractC0281n.m5720H0(2)) {
                    Log.v("FragmentManager", "saveAllState: adding fragment (" + next.mWho + "): " + next);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: x */
    public void m5541x(q qVar) {
        this.f1603c = qVar;
    }
}
