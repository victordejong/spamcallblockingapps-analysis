package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.core.content.p033a.C0645i;
import androidx.core.p037g.C0741t;
import androidx.p026b.C0529a;
import androidx.p026b.C0534f;
import androidx.transition.C1187a;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/Transition.class */
public abstract class Transition implements Cloneable {

    /* renamed from: H */
    private AbstractC1182b f5122H;

    /* renamed from: I */
    private C0529a<String, String> f5123I;

    /* renamed from: h */
    AbstractC1220bc f5131h;

    /* renamed from: y */
    private ArrayList<C1224bf> f5147y;

    /* renamed from: z */
    private ArrayList<C1224bf> f5148z;

    /* renamed from: a */
    private static final int[] f5114a = {2, 1, 3, 4};

    /* renamed from: i */
    private static final PathMotion f5115i = new C1212aw();

    /* renamed from: A */
    private static ThreadLocal<C0529a<Animator, C1181a>> f5113A = new ThreadLocal<>();

    /* renamed from: j */
    private String f5132j = getClass().getName();

    /* renamed from: k */
    private long f5133k = -1;

    /* renamed from: b */
    long f5125b = -1;

    /* renamed from: l */
    private TimeInterpolator f5134l = null;

    /* renamed from: c */
    ArrayList<Integer> f5126c = new ArrayList<>();

    /* renamed from: d */
    ArrayList<View> f5127d = new ArrayList<>();

    /* renamed from: m */
    private ArrayList<String> f5135m = null;

    /* renamed from: n */
    private ArrayList<Class> f5136n = null;

    /* renamed from: o */
    private ArrayList<Integer> f5137o = null;

    /* renamed from: p */
    private ArrayList<View> f5138p = null;

    /* renamed from: q */
    private ArrayList<Class> f5139q = null;

    /* renamed from: r */
    private ArrayList<String> f5140r = null;

    /* renamed from: s */
    private ArrayList<Integer> f5141s = null;

    /* renamed from: t */
    private ArrayList<View> f5142t = null;

    /* renamed from: u */
    private ArrayList<Class> f5143u = null;

    /* renamed from: v */
    private C1225bg f5144v = new C1225bg();

    /* renamed from: w */
    private C1225bg f5145w = new C1225bg();

    /* renamed from: e */
    TransitionSet f5128e = null;

    /* renamed from: x */
    private int[] f5146x = f5114a;

    /* renamed from: B */
    private ViewGroup f5116B = null;

    /* renamed from: f */
    boolean f5129f = false;

    /* renamed from: g */
    ArrayList<Animator> f5130g = new ArrayList<>();

    /* renamed from: C */
    private int f5117C = 0;

    /* renamed from: D */
    private boolean f5118D = false;

    /* renamed from: E */
    private boolean f5119E = false;

    /* renamed from: F */
    private ArrayList<AbstractC1183c> f5120F = null;

    /* renamed from: G */
    private ArrayList<Animator> f5121G = new ArrayList<>();

    /* renamed from: J */
    private PathMotion f5124J = f5115i;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.transition.Transition$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$a.class */
    public static final class C1181a {

        /* renamed from: a */
        View f5149a;

        /* renamed from: b */
        String f5150b;

        /* renamed from: c */
        C1224bf f5151c;

        /* renamed from: d */
        AbstractC1251cd f5152d;

        /* renamed from: e */
        Transition f5153e;

        C1181a(View view, String str, Transition transition, AbstractC1251cd cdVar, C1224bf bfVar) {
            this.f5149a = view;
            this.f5150b = str;
            this.f5151c = bfVar;
            this.f5152d = cdVar;
            this.f5153e = transition;
        }
    }

    /* renamed from: androidx.transition.Transition$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$b.class */
    public static abstract class AbstractC1182b {
        /* renamed from: a */
        public abstract Rect mo6475a();
    }

    /* renamed from: androidx.transition.Transition$c */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$c.class */
    public interface AbstractC1183c {
        /* renamed from: a */
        void mo6479a();

        /* renamed from: a */
        void mo6478a(Transition transition);

        /* renamed from: b */
        void mo6477b();

        /* renamed from: c */
        void mo6476c();
    }

    public Transition() {
    }

    public Transition(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1211av.f5217c);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long a = C0645i.m8628a(obtainStyledAttributes, (XmlPullParser) xmlResourceParser, "duration", 1, -1);
        if (a >= 0) {
            mo6591a(a);
        }
        long a2 = C0645i.m8628a(obtainStyledAttributes, (XmlPullParser) xmlResourceParser, "startDelay", 2, -1);
        if (a2 > 0) {
            mo6581b(a2);
        }
        int b = C0645i.m8624b(obtainStyledAttributes, xmlResourceParser, "interpolator", 0);
        if (b > 0) {
            mo6590a(AnimationUtils.loadInterpolator(context, b));
        }
        String c = C0645i.m8622c(obtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (c != null) {
            m6608a(m6603b(c));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private static void m6611a(C1225bg bgVar, View view, C1224bf bfVar) {
        bgVar.f5248a.put(view, bfVar);
        int id = view.getId();
        if (id >= 0) {
            if (bgVar.f5249b.indexOfKey(id) >= 0) {
                bgVar.f5249b.put(id, null);
            } else {
                bgVar.f5249b.put(id, view);
            }
        }
        String q = C0741t.m8314q(view);
        if (q != null) {
            if (bgVar.f5251d.containsKey(q)) {
                bgVar.f5251d.put(q, null);
            } else {
                bgVar.f5251d.put(q, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (bgVar.f5250c.m8930c(itemIdAtPosition) >= 0) {
                    View a = bgVar.f5250c.m8938a(itemIdAtPosition);
                    if (a != null) {
                        C0741t.m8341a(a, false);
                        bgVar.f5250c.m8933b(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                C0741t.m8341a(view, true);
                bgVar.f5250c.m8933b(itemIdAtPosition, view);
            }
        }
    }

    /* renamed from: a */
    private void m6610a(C1225bg bgVar, C1225bg bgVar2) {
        C1224bf bfVar;
        View view;
        View view2;
        View a;
        C0529a aVar = new C0529a(bgVar.f5248a);
        C0529a aVar2 = new C0529a(bgVar2.f5248a);
        int i = 0;
        while (true) {
            int[] iArr = this.f5146x;
            if (i >= iArr.length) {
                break;
            }
            int i2 = iArr[i];
            if (i2 == 1) {
                for (int size = aVar.size() - 1; size >= 0; size--) {
                    View view3 = (View) aVar.m8905b(size);
                    if (!(view3 == null || !m6605b(view3) || (bfVar = (C1224bf) aVar2.remove(view3)) == null || bfVar.f5246b == null || !m6605b(bfVar.f5246b))) {
                        this.f5147y.add((C1224bf) aVar.m8902d(size));
                        this.f5148z.add(bfVar);
                    }
                }
            } else if (i2 == 2) {
                C0529a<String, View> aVar3 = bgVar.f5251d;
                C0529a<String, View> aVar4 = bgVar2.f5251d;
                int size2 = aVar3.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    View c = aVar3.m8903c(i3);
                    if (c != null && m6605b(c) && (view = aVar4.get(aVar3.m8905b(i3))) != null && m6605b(view)) {
                        C1224bf bfVar2 = (C1224bf) aVar.get(c);
                        C1224bf bfVar3 = (C1224bf) aVar2.get(view);
                        if (!(bfVar2 == null || bfVar3 == null)) {
                            this.f5147y.add(bfVar2);
                            this.f5148z.add(bfVar3);
                            aVar.remove(c);
                            aVar2.remove(view);
                        }
                    }
                }
            } else if (i2 == 3) {
                SparseArray<View> sparseArray = bgVar.f5249b;
                SparseArray<View> sparseArray2 = bgVar2.f5249b;
                int size3 = sparseArray.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    View valueAt = sparseArray.valueAt(i4);
                    if (valueAt != null && m6605b(valueAt) && (view2 = sparseArray2.get(sparseArray.keyAt(i4))) != null && m6605b(view2)) {
                        C1224bf bfVar4 = (C1224bf) aVar.get(valueAt);
                        C1224bf bfVar5 = (C1224bf) aVar2.get(view2);
                        if (!(bfVar4 == null || bfVar5 == null)) {
                            this.f5147y.add(bfVar4);
                            this.f5148z.add(bfVar5);
                            aVar.remove(valueAt);
                            aVar2.remove(view2);
                        }
                    }
                }
            } else if (i2 == 4) {
                C0534f<View> fVar = bgVar.f5250c;
                C0534f<View> fVar2 = bgVar2.f5250c;
                int b = fVar.m8936b();
                for (int i5 = 0; i5 < b; i5++) {
                    View c2 = fVar.m8931c(i5);
                    if (c2 != null && m6605b(c2) && (a = fVar2.m8938a(fVar.m8935b(i5))) != null && m6605b(a)) {
                        C1224bf bfVar6 = (C1224bf) aVar.get(c2);
                        C1224bf bfVar7 = (C1224bf) aVar2.get(a);
                        if (!(bfVar6 == null || bfVar7 == null)) {
                            this.f5147y.add(bfVar6);
                            this.f5148z.add(bfVar7);
                            aVar.remove(c2);
                            aVar2.remove(a);
                        }
                    }
                }
            }
            i++;
        }
        for (int i6 = 0; i6 < aVar.size(); i6++) {
            C1224bf bfVar8 = (C1224bf) aVar.m8903c(i6);
            if (m6605b(bfVar8.f5246b)) {
                this.f5147y.add(bfVar8);
                this.f5148z.add(null);
            }
        }
        for (int i7 = 0; i7 < aVar2.size(); i7++) {
            C1224bf bfVar9 = (C1224bf) aVar2.m8903c(i7);
            if (m6605b(bfVar9.f5246b)) {
                this.f5148z.add(bfVar9);
                this.f5147y.add(null);
            }
        }
    }

    /* renamed from: a */
    private void m6608a(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.f5146x = f5114a;
            return;
        }
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr[i];
            if (!(i2 > 0 && i2 <= 4)) {
                throw new IllegalArgumentException("matches contains invalid value");
            } else if (m6607a(iArr, i)) {
                throw new IllegalArgumentException("matches contains a duplicate value");
            }
        }
        this.f5146x = (int[]) iArr.clone();
    }

    /* renamed from: a */
    private static boolean m6612a(C1224bf bfVar, C1224bf bfVar2, String str) {
        Object obj = bfVar.f5245a.get(str);
        Object obj2 = bfVar2.f5245a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        return obj == null || obj2 == null || !obj.equals(obj2);
    }

    /* renamed from: a */
    private static boolean m6607a(int[] iArr, int i) {
        int i2 = iArr[i];
        for (int i3 = 0; i3 < i; i3++) {
            if (iArr[i3] == i2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private static int[] m6603b(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String trim = stringTokenizer.nextToken().trim();
            if ("id".equalsIgnoreCase(trim)) {
                iArr[i] = 3;
            } else if ("instance".equalsIgnoreCase(trim)) {
                iArr[i] = 1;
            } else if (AppMeasurementSdk.ConditionalUserProperty.NAME.equalsIgnoreCase(trim)) {
                iArr[i] = 2;
            } else if ("itemId".equalsIgnoreCase(trim)) {
                iArr[i] = 4;
            } else if (trim.isEmpty()) {
                int[] iArr2 = new int[iArr.length - 1];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                i--;
                iArr = iArr2;
            } else {
                throw new InflateException("Unknown match type in matchOrder: '" + trim + "'");
            }
            i++;
        }
        return iArr;
    }

    /* renamed from: c */
    private void m6601c(View view, boolean z) {
        if (view != null) {
            int id = view.getId();
            ArrayList<Integer> arrayList = this.f5137o;
            if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
                ArrayList<View> arrayList2 = this.f5138p;
                if (arrayList2 == null || !arrayList2.contains(view)) {
                    ArrayList<Class> arrayList3 = this.f5139q;
                    if (arrayList3 != null) {
                        int size = arrayList3.size();
                        for (int i = 0; i < size; i++) {
                            if (this.f5139q.get(i).isInstance(view)) {
                                return;
                            }
                        }
                    }
                    if (view.getParent() instanceof ViewGroup) {
                        C1224bf bfVar = new C1224bf();
                        bfVar.f5246b = view;
                        if (z) {
                            mo966a(bfVar);
                        } else {
                            mo965b(bfVar);
                        }
                        bfVar.f5247c.add(this);
                        mo6576c(bfVar);
                        m6611a(z ? this.f5144v : this.f5145w, view, bfVar);
                    }
                    if (view instanceof ViewGroup) {
                        ArrayList<Integer> arrayList4 = this.f5141s;
                        if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                            ArrayList<View> arrayList5 = this.f5142t;
                            if (arrayList5 == null || !arrayList5.contains(view)) {
                                ArrayList<Class> arrayList6 = this.f5143u;
                                if (arrayList6 != null) {
                                    int size2 = arrayList6.size();
                                    for (int i2 = 0; i2 < size2; i2++) {
                                        if (this.f5143u.get(i2).isInstance(view)) {
                                            return;
                                        }
                                    }
                                }
                                ViewGroup viewGroup = (ViewGroup) view;
                                for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                                    m6601c(viewGroup.getChildAt(i3), z);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: m */
    private static C0529a<Animator, C1181a> m6593m() {
        C0529a<Animator, C1181a> aVar = f5113A.get();
        C0529a<Animator, C1181a> aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new C0529a<>();
            f5113A.set(aVar2);
        }
        return aVar2;
    }

    /* renamed from: a */
    public Animator mo967a(ViewGroup viewGroup, C1224bf bfVar, C1224bf bfVar2) {
        return null;
    }

    /* renamed from: a */
    public Transition mo6591a(long j) {
        this.f5125b = j;
        return this;
    }

    /* renamed from: a */
    public Transition mo6590a(TimeInterpolator timeInterpolator) {
        this.f5134l = timeInterpolator;
        return this;
    }

    /* renamed from: a */
    public Transition mo6586a(AbstractC1183c cVar) {
        if (this.f5120F == null) {
            this.f5120F = new ArrayList<>();
        }
        this.f5120F.add(cVar);
        return this;
    }

    /* renamed from: a */
    public final C1224bf m6615a(View view, boolean z) {
        TransitionSet transitionSet = this;
        while (true) {
            TransitionSet transitionSet2 = transitionSet.f5128e;
            if (transitionSet2 == null) {
                break;
            }
            transitionSet = transitionSet2;
        }
        return (z ? transitionSet.f5144v : transitionSet.f5145w).f5248a.get(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00f5, code lost:
        if (r5.f5127d.size() > 0) goto L_0x00f8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo6583a(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.mo6583a(java.lang.String):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6614a(ViewGroup viewGroup) {
        C1181a aVar;
        this.f5147y = new ArrayList<>();
        this.f5148z = new ArrayList<>();
        m6610a(this.f5144v, this.f5145w);
        C0529a<Animator, C1181a> m = m6593m();
        int size = m.size();
        AbstractC1251cd b = C1239bs.m6519b(viewGroup);
        while (true) {
            size--;
            if (size >= 0) {
                Animator b2 = m.m8905b(size);
                if (!(b2 == null || (aVar = m.get(b2)) == null || aVar.f5149a == null || !b.equals(aVar.f5152d))) {
                    C1224bf bfVar = aVar.f5151c;
                    View view = aVar.f5149a;
                    C1224bf a = m6615a(view, true);
                    C1224bf b3 = m6604b(view, true);
                    if (!(a == null && b3 == null) && aVar.f5153e.mo6565a(bfVar, b3)) {
                        if (b2.isRunning() || b2.isStarted()) {
                            b2.cancel();
                        } else {
                            m.remove(b2);
                        }
                    }
                }
            } else {
                mo6589a(viewGroup, this.f5144v, this.f5145w, this.f5147y, this.f5148z);
                mo6575d();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [long] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Type inference failed for: r25v6 */
    /* JADX WARN: Type inference failed for: r25v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo6589a(android.view.ViewGroup r11, androidx.transition.C1225bg r12, androidx.transition.C1225bg r13, java.util.ArrayList<androidx.transition.C1224bf> r14, java.util.ArrayList<androidx.transition.C1224bf> r15) {
        /*
            Method dump skipped, instructions count: 633
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.mo6589a(android.view.ViewGroup, androidx.transition.bg, androidx.transition.bg, java.util.ArrayList, java.util.ArrayList):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6613a(ViewGroup viewGroup, boolean z) {
        C0529a<String, String> aVar;
        ArrayList<String> arrayList;
        ArrayList<Class> arrayList2;
        m6609a(z);
        if ((this.f5126c.size() > 0 || this.f5127d.size() > 0) && (((arrayList = this.f5135m) == null || arrayList.isEmpty()) && ((arrayList2 = this.f5136n) == null || arrayList2.isEmpty()))) {
            for (int i = 0; i < this.f5126c.size(); i++) {
                View findViewById = viewGroup.findViewById(this.f5126c.get(i).intValue());
                if (findViewById != null) {
                    C1224bf bfVar = new C1224bf();
                    bfVar.f5246b = findViewById;
                    if (z) {
                        mo966a(bfVar);
                    } else {
                        mo965b(bfVar);
                    }
                    bfVar.f5247c.add(this);
                    mo6576c(bfVar);
                    m6611a(z ? this.f5144v : this.f5145w, findViewById, bfVar);
                }
            }
            for (int i2 = 0; i2 < this.f5127d.size(); i2++) {
                View view = this.f5127d.get(i2);
                C1224bf bfVar2 = new C1224bf();
                bfVar2.f5246b = view;
                if (z) {
                    mo966a(bfVar2);
                } else {
                    mo965b(bfVar2);
                }
                bfVar2.f5247c.add(this);
                mo6576c(bfVar2);
                m6611a(z ? this.f5144v : this.f5145w, view, bfVar2);
            }
        } else {
            m6601c(viewGroup, z);
        }
        if (!(z || (aVar = this.f5123I) == null)) {
            int size = aVar.size();
            ArrayList arrayList3 = new ArrayList(size);
            for (int i3 = 0; i3 < size; i3++) {
                arrayList3.add(this.f5144v.f5251d.remove(this.f5123I.m8905b(i3)));
            }
            for (int i4 = 0; i4 < size; i4++) {
                View view2 = (View) arrayList3.get(i4);
                if (view2 != null) {
                    this.f5144v.f5251d.put(this.f5123I.m8903c(i4), view2);
                }
            }
        }
    }

    /* renamed from: a */
    public void mo6588a(PathMotion pathMotion) {
        if (pathMotion == null) {
            this.f5124J = f5115i;
        } else {
            this.f5124J = pathMotion;
        }
    }

    /* renamed from: a */
    public void mo6587a(AbstractC1182b bVar) {
        this.f5122H = bVar;
    }

    /* renamed from: a */
    public void mo6584a(AbstractC1220bc bcVar) {
        this.f5131h = bcVar;
    }

    /* renamed from: a */
    public abstract void mo966a(C1224bf bfVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6609a(boolean z) {
        C1225bg bgVar;
        if (z) {
            this.f5144v.f5248a.clear();
            this.f5144v.f5249b.clear();
            bgVar = this.f5144v;
        } else {
            this.f5145w.f5248a.clear();
            this.f5145w.f5249b.clear();
            bgVar = this.f5145w;
        }
        bgVar.f5250c.m8932c();
    }

    /* renamed from: a */
    public boolean mo6565a(C1224bf bfVar, C1224bf bfVar2) {
        boolean z = true;
        if (!(bfVar == null || bfVar2 == null)) {
            String[] a = mo6569a();
            if (a == null) {
                for (String str : bfVar.f5245a.keySet()) {
                    if (m6612a(bfVar, bfVar2, str)) {
                        break;
                    }
                }
            } else {
                for (String str2 : a) {
                    if (m6612a(bfVar, bfVar2, str2)) {
                        break;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    public String[] mo6569a() {
        return null;
    }

    /* renamed from: b */
    public final long m6606b() {
        return this.f5133k;
    }

    /* renamed from: b */
    public Transition mo6581b(long j) {
        this.f5133k = j;
        return this;
    }

    /* renamed from: b */
    public Transition mo6579b(AbstractC1183c cVar) {
        ArrayList<AbstractC1183c> arrayList = this.f5120F;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(cVar);
        if (this.f5120F.size() == 0) {
            this.f5120F = null;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0076, code lost:
        if (r12 < 0) goto L_0x0094;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007a, code lost:
        if (r5 == false) goto L_0x0085;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007d, code lost:
        r4 = r0.f5148z;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0085, code lost:
        r4 = r0.f5147y;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x008a, code lost:
        r4 = r4.get(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0095, code lost:
        return r4;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.transition.C1224bf m6604b(android.view.View r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            r6 = r0
        L_0x0002:
            r0 = r6
            androidx.transition.TransitionSet r0 = r0.f5128e
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0013
            r0 = r7
            r6 = r0
            goto L_0x0002
        L_0x0013:
            r0 = r5
            if (r0 == 0) goto L_0x0020
            r0 = r6
            java.util.ArrayList<androidx.transition.bf> r0 = r0.f5147y
            r7 = r0
            goto L_0x0026
        L_0x0020:
            r0 = r6
            java.util.ArrayList<androidx.transition.bf> r0 = r0.f5148z
            r7 = r0
        L_0x0026:
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0030
            r0 = 0
            return r0
        L_0x0030:
            r0 = r7
            int r0 = r0.size()
            r9 = r0
            r0 = -1
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x003d:
            r0 = r10
            r12 = r0
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L_0x0071
            r0 = r7
            r1 = r11
            java.lang.Object r0 = r0.get(r1)
            androidx.transition.bf r0 = (androidx.transition.C1224bf) r0
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L_0x005b
            r0 = 0
            return r0
        L_0x005b:
            r0 = r13
            android.view.View r0 = r0.f5246b
            r1 = r4
            if (r0 != r1) goto L_0x006b
            r0 = r11
            r12 = r0
            goto L_0x0071
        L_0x006b:
            int r11 = r11 + 1
            goto L_0x003d
        L_0x0071:
            r0 = r8
            r4 = r0
            r0 = r12
            if (r0 < 0) goto L_0x0094
            r0 = r5
            if (r0 == 0) goto L_0x0085
            r0 = r6
            java.util.ArrayList<androidx.transition.bf> r0 = r0.f5148z
            r4 = r0
            goto L_0x008a
        L_0x0085:
            r0 = r6
            java.util.ArrayList<androidx.transition.bf> r0 = r0.f5147y
            r4 = r0
        L_0x008a:
            r0 = r4
            r1 = r12
            java.lang.Object r0 = r0.get(r1)
            androidx.transition.bf r0 = (androidx.transition.C1224bf) r0
            r4 = r0
        L_0x0094:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.m6604b(android.view.View, boolean):androidx.transition.bf");
    }

    /* renamed from: b */
    public abstract void mo965b(C1224bf bfVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m6605b(View view) {
        ArrayList<Class> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.f5137o;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.f5138p;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class> arrayList5 = this.f5139q;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i = 0; i < size; i++) {
                if (this.f5139q.get(i).isInstance(view)) {
                    return false;
                }
            }
        }
        if (!(this.f5140r == null || C0741t.m8314q(view) == null || !this.f5140r.contains(C0741t.m8314q(view)))) {
            return false;
        }
        if ((this.f5126c.size() == 0 && this.f5127d.size() == 0 && (((arrayList = this.f5136n) == null || arrayList.isEmpty()) && ((arrayList2 = this.f5135m) == null || arrayList2.isEmpty()))) || this.f5126c.contains(Integer.valueOf(id)) || this.f5127d.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.f5135m;
        if (arrayList6 != null && arrayList6.contains(C0741t.m8314q(view))) {
            return true;
        }
        if (this.f5136n == null) {
            return false;
        }
        for (int i2 = 0; i2 < this.f5136n.size(); i2++) {
            if (this.f5136n.get(i2).isInstance(view)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public final TimeInterpolator m6602c() {
        return this.f5134l;
    }

    /* renamed from: c */
    public Transition mo6577c(View view) {
        this.f5127d.add(view);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void mo6576c(C1224bf bfVar) {
        String[] a;
        if (this.f5131h != null && !bfVar.f5245a.isEmpty() && (a = this.f5131h.mo6505a()) != null) {
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= a.length) {
                    z = true;
                    break;
                } else if (!bfVar.f5245a.containsKey(a[i])) {
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                this.f5131h.mo6504a(bfVar);
            }
        }
    }

    /* renamed from: d */
    public Transition mo6574d(View view) {
        this.f5127d.remove(view);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public void mo6575d() {
        m6598g();
        C0529a<Animator, C1181a> m = m6593m();
        Iterator<Animator> it = this.f5121G.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (m.containsKey(next)) {
                m6598g();
                if (next != null) {
                    next.addListener(new C1213ax(this, m));
                    if (next == null) {
                        m6597h();
                    } else {
                        long j = this.f5125b;
                        if (j >= 0) {
                            next.setDuration(j);
                        }
                        long j2 = this.f5133k;
                        if (j2 >= 0) {
                            next.setStartDelay(j2);
                        }
                        TimeInterpolator timeInterpolator = this.f5134l;
                        if (timeInterpolator != null) {
                            next.setInterpolator(timeInterpolator);
                        }
                        next.addListener(new C1214ay(this));
                        next.start();
                    }
                }
            }
        }
        this.f5121G.clear();
        m6597h();
    }

    /* renamed from: e */
    public final List<String> m6600e() {
        return this.f5135m;
    }

    /* renamed from: e */
    public void mo6573e(View view) {
        int i;
        if (!this.f5119E) {
            C0529a<Animator, C1181a> m = m6593m();
            int size = m.size();
            AbstractC1251cd b = C1239bs.m6519b(view);
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                C1181a c = m.m8903c(size);
                if (c.f5149a != null && b.equals(c.f5152d)) {
                    Animator b2 = m.m8905b(size);
                    if (Build.VERSION.SDK_INT >= 19) {
                        b2.pause();
                    } else {
                        ArrayList<Animator.AnimatorListener> listeners = b2.getListeners();
                        if (listeners != null) {
                            int size2 = listeners.size();
                            for (int i2 = 0; i2 < size2; i2++) {
                                Animator.AnimatorListener animatorListener = listeners.get(i2);
                                if (animatorListener instanceof C1187a.AbstractC1188a) {
                                    ((C1187a.AbstractC1188a) animatorListener).onAnimationPause(b2);
                                }
                            }
                        }
                    }
                }
            }
            ArrayList<AbstractC1183c> arrayList = this.f5120F;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f5120F.clone();
                int size3 = arrayList2.size();
                for (i = 0; i < size3; i++) {
                    ((AbstractC1183c) arrayList2.get(i)).mo6479a();
                }
            }
            this.f5118D = true;
        }
    }

    /* renamed from: f */
    public final List<Class> m6599f() {
        return this.f5136n;
    }

    /* renamed from: f */
    public void mo6572f(View view) {
        if (this.f5118D) {
            if (!this.f5119E) {
                C0529a<Animator, C1181a> m = m6593m();
                int size = m.size();
                AbstractC1251cd b = C1239bs.m6519b(view);
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    C1181a c = m.m8903c(size);
                    if (c.f5149a != null && b.equals(c.f5152d)) {
                        Animator b2 = m.m8905b(size);
                        if (Build.VERSION.SDK_INT >= 19) {
                            b2.resume();
                        } else {
                            ArrayList<Animator.AnimatorListener> listeners = b2.getListeners();
                            if (listeners != null) {
                                int size2 = listeners.size();
                                for (int i = 0; i < size2; i++) {
                                    Animator.AnimatorListener animatorListener = listeners.get(i);
                                    if (animatorListener instanceof C1187a.AbstractC1188a) {
                                        ((C1187a.AbstractC1188a) animatorListener).onAnimationResume(b2);
                                    }
                                }
                            }
                        }
                    }
                }
                ArrayList<AbstractC1183c> arrayList = this.f5120F;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.f5120F.clone();
                    int size3 = arrayList2.size();
                    for (int i2 = 0; i2 < size3; i2++) {
                        ((AbstractC1183c) arrayList2.get(i2)).mo6477b();
                    }
                }
            }
            this.f5118D = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public final void m6598g() {
        if (this.f5117C == 0) {
            ArrayList<AbstractC1183c> arrayList = this.f5120F;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f5120F.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC1183c) arrayList2.get(i)).mo6476c();
                }
            }
            this.f5119E = false;
        }
        this.f5117C++;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final void m6597h() {
        this.f5117C--;
        if (this.f5117C == 0) {
            ArrayList<AbstractC1183c> arrayList = this.f5120F;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f5120F.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC1183c) arrayList2.get(i)).mo6478a(this);
                }
            }
            for (int i2 = 0; i2 < this.f5144v.f5250c.m8936b(); i2++) {
                View c = this.f5144v.f5250c.m8931c(i2);
                if (c != null) {
                    C0741t.m8341a(c, false);
                }
            }
            for (int i3 = 0; i3 < this.f5145w.f5250c.m8936b(); i3++) {
                View c2 = this.f5145w.f5250c.m8931c(i3);
                if (c2 != null) {
                    C0741t.m8341a(c2, false);
                }
            }
            this.f5119E = true;
        }
    }

    /* renamed from: i */
    public final PathMotion m6596i() {
        return this.f5124J;
    }

    /* renamed from: j */
    public final AbstractC1182b m6595j() {
        return this.f5122H;
    }

    /* renamed from: k */
    public final Rect m6594k() {
        AbstractC1182b bVar = this.f5122H;
        if (bVar == null) {
            return null;
        }
        return bVar.mo6475a();
    }

    /* renamed from: l */
    public Transition clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.f5121G = new ArrayList<>();
            transition.f5144v = new C1225bg();
            transition.f5145w = new C1225bg();
            transition.f5147y = null;
            transition.f5148z = null;
            return transition;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    public String toString() {
        return mo6583a("");
    }
}
