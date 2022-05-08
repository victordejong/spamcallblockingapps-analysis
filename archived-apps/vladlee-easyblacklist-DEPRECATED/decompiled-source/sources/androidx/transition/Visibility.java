package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.p033a.C0645i;
import androidx.transition.C1187a;
import androidx.transition.Transition;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/Visibility.class */
public abstract class Visibility extends Transition {

    /* renamed from: a */
    private static final String[] f5160a = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: i */
    private int f5161i = 3;

    /* renamed from: androidx.transition.Visibility$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Visibility$a.class */
    private static final class C1185a extends AnimatorListenerAdapter implements Transition.AbstractC1183c, C1187a.AbstractC1188a {

        /* renamed from: b */
        private final View f5163b;

        /* renamed from: c */
        private final int f5164c;

        /* renamed from: d */
        private final ViewGroup f5165d;

        /* renamed from: f */
        private boolean f5167f;

        /* renamed from: a */
        boolean f5162a = false;

        /* renamed from: e */
        private final boolean f5166e = true;

        C1185a(View view, int i) {
            this.f5163b = view;
            this.f5164c = i;
            this.f5165d = (ViewGroup) view.getParent();
            m6561a(true);
        }

        /* renamed from: a */
        private void m6561a(boolean z) {
            ViewGroup viewGroup;
            if (this.f5166e && this.f5167f != z && (viewGroup = this.f5165d) != null) {
                this.f5167f = z;
                C1231bl.m6532a(viewGroup, z);
            }
        }

        /* renamed from: d */
        private void m6560d() {
            if (!this.f5162a) {
                C1239bs.m6522a(this.f5163b, this.f5164c);
                ViewGroup viewGroup = this.f5165d;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            m6561a(false);
        }

        @Override // androidx.transition.Transition.AbstractC1183c
        /* renamed from: a */
        public final void mo6479a() {
            m6561a(false);
        }

        @Override // androidx.transition.Transition.AbstractC1183c
        /* renamed from: a */
        public final void mo6478a(Transition transition) {
            m6560d();
            transition.mo6579b(this);
        }

        @Override // androidx.transition.Transition.AbstractC1183c
        /* renamed from: b */
        public final void mo6477b() {
            m6561a(true);
        }

        @Override // androidx.transition.Transition.AbstractC1183c
        /* renamed from: c */
        public final void mo6476c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f5162a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            m6560d();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.transition.C1187a.AbstractC1188a
        public final void onAnimationPause(Animator animator) {
            if (!this.f5162a) {
                C1239bs.m6522a(this.f5163b, this.f5164c);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.transition.C1187a.AbstractC1188a
        public final void onAnimationResume(Animator animator) {
            if (!this.f5162a) {
                C1239bs.m6522a(this.f5163b, 0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.transition.Visibility$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Visibility$b.class */
    public static final class C1186b {

        /* renamed from: a */
        boolean f5168a;

        /* renamed from: b */
        boolean f5169b;

        /* renamed from: c */
        int f5170c;

        /* renamed from: d */
        int f5171d;

        /* renamed from: e */
        ViewGroup f5172e;

        /* renamed from: f */
        ViewGroup f5173f;

        C1186b() {
        }
    }

    public Visibility() {
    }

    public Visibility(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1211av.f5219e);
        int a = C0645i.m8628a(obtainStyledAttributes, (XmlPullParser) ((XmlResourceParser) attributeSet), "transitionVisibilityMode", 0, 0);
        obtainStyledAttributes.recycle();
        if (a != 0) {
            m6568a(a);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d7, code lost:
        if (r0.f5171d == 0) goto L_0x00fc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00eb, code lost:
        if (r0.f5172e == null) goto L_0x00fc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0111, code lost:
        if (r0.f5170c == 0) goto L_0x0114;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.transition.Visibility.C1186b m6564b(androidx.transition.C1224bf r4, androidx.transition.C1224bf r5) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.m6564b(androidx.transition.bf, androidx.transition.bf):androidx.transition.Visibility$b");
    }

    /* renamed from: d */
    private static void m6563d(C1224bf bfVar) {
        bfVar.f5245a.put("android:visibility:visibility", Integer.valueOf(bfVar.f5246b.getVisibility()));
        bfVar.f5245a.put("android:visibility:parent", bfVar.f5246b.getParent());
        int[] iArr = new int[2];
        bfVar.f5246b.getLocationOnScreen(iArr);
        bfVar.f5245a.put("android:visibility:screenLocation", iArr);
    }

    /* renamed from: a */
    public Animator mo6567a(ViewGroup viewGroup, View view, C1224bf bfVar) {
        return null;
    }

    /* renamed from: a */
    public Animator mo6566a(ViewGroup viewGroup, View view, C1224bf bfVar, C1224bf bfVar2) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:93:? A[RETURN, SYNTHETIC] */
    @Override // androidx.transition.Transition
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator mo967a(android.view.ViewGroup r8, androidx.transition.C1224bf r9, androidx.transition.C1224bf r10) {
        /*
            Method dump skipped, instructions count: 581
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.mo967a(android.view.ViewGroup, androidx.transition.bf, androidx.transition.bf):android.animation.Animator");
    }

    /* renamed from: a */
    public final void m6568a(int i) {
        if ((i & (-4)) == 0) {
            this.f5161i = i;
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public void mo966a(C1224bf bfVar) {
        m6563d(bfVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004d, code lost:
        if (r0.f5171d == 0) goto L_0x0050;
     */
    @Override // androidx.transition.Transition
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo6565a(androidx.transition.C1224bf r5, androidx.transition.C1224bf r6) {
        /*
            r4 = this;
            r0 = 0
            r7 = r0
            r0 = r5
            if (r0 != 0) goto L_0x000c
            r0 = r6
            if (r0 != 0) goto L_0x000c
            r0 = 0
            return r0
        L_0x000c:
            r0 = r5
            if (r0 == 0) goto L_0x002f
            r0 = r6
            if (r0 == 0) goto L_0x002f
            r0 = r6
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.f5245a
            java.lang.String r1 = "android:visibility:visibility"
            boolean r0 = r0.containsKey(r1)
            r1 = r5
            java.util.Map<java.lang.String, java.lang.Object> r1 = r1.f5245a
            java.lang.String r2 = "android:visibility:visibility"
            boolean r1 = r1.containsKey(r2)
            if (r0 == r1) goto L_0x002f
            r0 = 0
            return r0
        L_0x002f:
            r0 = r5
            r1 = r6
            androidx.transition.Visibility$b r0 = m6564b(r0, r1)
            r5 = r0
            r0 = r7
            r8 = r0
            r0 = r5
            boolean r0 = r0.f5168a
            if (r0 == 0) goto L_0x0053
            r0 = r5
            int r0 = r0.f5170c
            if (r0 == 0) goto L_0x0050
            r0 = r7
            r8 = r0
            r0 = r5
            int r0 = r0.f5171d
            if (r0 != 0) goto L_0x0053
        L_0x0050:
            r0 = 1
            r8 = r0
        L_0x0053:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.mo6565a(androidx.transition.bf, androidx.transition.bf):boolean");
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final String[] mo6569a() {
        return f5160a;
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public void mo965b(C1224bf bfVar) {
        m6563d(bfVar);
    }

    /* renamed from: m */
    public final int m6562m() {
        return this.f5161i;
    }
}
