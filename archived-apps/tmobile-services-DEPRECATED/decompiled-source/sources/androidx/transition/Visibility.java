package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.transition.AnimatorUtils;
import androidx.transition.Transition;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:androidx/transition/Visibility.class */
public abstract class Visibility extends Transition {

    /* renamed from: P */
    private static final String[] f5317P = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: O */
    private int f5318O = 3;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Visibility$DisappearListener.class */
    public static class DisappearListener extends AnimatorListenerAdapter implements Transition.TransitionListener, AnimatorUtils.AnimatorPauseListenerCompat {

        /* renamed from: a */
        private final View f5323a;

        /* renamed from: b */
        private final int f5324b;

        /* renamed from: c */
        private final ViewGroup f5325c;

        /* renamed from: d */
        private final boolean f5326d;

        /* renamed from: e */
        private boolean f5327e;

        /* renamed from: f */
        boolean f5328f = false;

        DisappearListener(View view, int i, boolean z) {
            this.f5323a = view;
            this.f5324b = i;
            this.f5325c = (ViewGroup) view.getParent();
            this.f5326d = z;
            m16658g(true);
        }

        /* renamed from: f */
        private void m16659f() {
            if (!this.f5328f) {
                ViewUtils.m16683i(this.f5323a, this.f5324b);
                ViewGroup viewGroup = this.f5325c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            m16658g(false);
        }

        /* renamed from: g */
        private void m16658g(boolean z) {
            ViewGroup viewGroup;
            if (this.f5326d && this.f5327e != z && (viewGroup = this.f5325c) != null) {
                this.f5327e = z;
                ViewGroupUtils.m16705d(viewGroup, z);
            }
        }

        @Override // androidx.transition.Transition.TransitionListener
        /* renamed from: a */
        public void mo8575a(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        /* renamed from: b */
        public void mo8574b(@NonNull Transition transition) {
            m16658g(false);
        }

        @Override // androidx.transition.Transition.TransitionListener
        /* renamed from: c */
        public void mo8573c(@NonNull Transition transition) {
            m16659f();
            transition.mo16743Z(this);
        }

        @Override // androidx.transition.Transition.TransitionListener
        /* renamed from: d */
        public void mo8572d(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        /* renamed from: e */
        public void mo8571e(@NonNull Transition transition) {
            m16658g(true);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f5328f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            m16659f();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.transition.AnimatorUtils.AnimatorPauseListenerCompat
        public void onAnimationPause(Animator animator) {
            if (!this.f5328f) {
                ViewUtils.m16683i(this.f5323a, this.f5324b);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.transition.AnimatorUtils.AnimatorPauseListenerCompat
        public void onAnimationResume(Animator animator) {
            if (!this.f5328f) {
                ViewUtils.m16683i(this.f5323a, 0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @SuppressLint({"UniqueConstants"})
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/transition/Visibility$Mode.class */
    public @interface Mode {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Visibility$VisibilityInfo.class */
    public static class VisibilityInfo {

        /* renamed from: a */
        boolean f5329a;

        /* renamed from: b */
        boolean f5330b;

        /* renamed from: c */
        int f5331c;

        /* renamed from: d */
        int f5332d;

        /* renamed from: e */
        ViewGroup f5333e;

        /* renamed from: f */
        ViewGroup f5334f;

        VisibilityInfo() {
        }
    }

    public Visibility() {
    }

    @SuppressLint({"RestrictedApi"})
    public Visibility(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f5201c);
        int g = TypedArrayUtils.m19596g(obtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionVisibilityMode", 0, 0);
        obtainStyledAttributes.recycle();
        if (g != 0) {
            m16660w0(g);
        }
    }

    /* renamed from: p0 */
    private void m16665p0(TransitionValues transitionValues) {
        transitionValues.f5271a.put("android:visibility:visibility", Integer.valueOf(transitionValues.f5272b.getVisibility()));
        transitionValues.f5271a.put("android:visibility:parent", transitionValues.f5272b.getParent());
        int[] iArr = new int[2];
        transitionValues.f5272b.getLocationOnScreen(iArr);
        transitionValues.f5271a.put("android:visibility:screenLocation", iArr);
    }

    /* renamed from: r0 */
    private VisibilityInfo m16663r0(TransitionValues transitionValues, TransitionValues transitionValues2) {
        VisibilityInfo visibilityInfo = new VisibilityInfo();
        visibilityInfo.f5329a = false;
        visibilityInfo.f5330b = false;
        if (transitionValues == null || !transitionValues.f5271a.containsKey("android:visibility:visibility")) {
            visibilityInfo.f5331c = -1;
            visibilityInfo.f5333e = null;
        } else {
            visibilityInfo.f5331c = ((Integer) transitionValues.f5271a.get("android:visibility:visibility")).intValue();
            visibilityInfo.f5333e = (ViewGroup) transitionValues.f5271a.get("android:visibility:parent");
        }
        if (transitionValues2 == null || !transitionValues2.f5271a.containsKey("android:visibility:visibility")) {
            visibilityInfo.f5332d = -1;
            visibilityInfo.f5334f = null;
        } else {
            visibilityInfo.f5332d = ((Integer) transitionValues2.f5271a.get("android:visibility:visibility")).intValue();
            visibilityInfo.f5334f = (ViewGroup) transitionValues2.f5271a.get("android:visibility:parent");
        }
        if (transitionValues == null || transitionValues2 == null) {
            if (transitionValues == null && visibilityInfo.f5332d == 0) {
                visibilityInfo.f5330b = true;
                visibilityInfo.f5329a = true;
            } else if (transitionValues2 == null && visibilityInfo.f5331c == 0) {
                visibilityInfo.f5330b = false;
                visibilityInfo.f5329a = true;
            }
        } else if (visibilityInfo.f5331c == visibilityInfo.f5332d && visibilityInfo.f5333e == visibilityInfo.f5334f) {
            return visibilityInfo;
        } else {
            int i = visibilityInfo.f5331c;
            int i2 = visibilityInfo.f5332d;
            if (i != i2) {
                if (i == 0) {
                    visibilityInfo.f5330b = false;
                    visibilityInfo.f5329a = true;
                } else if (i2 == 0) {
                    visibilityInfo.f5330b = true;
                    visibilityInfo.f5329a = true;
                }
            } else if (visibilityInfo.f5334f == null) {
                visibilityInfo.f5330b = false;
                visibilityInfo.f5329a = true;
            } else if (visibilityInfo.f5333e == null) {
                visibilityInfo.f5330b = true;
                visibilityInfo.f5329a = true;
            }
        }
        return visibilityInfo;
    }

    @Override // androidx.transition.Transition
    @Nullable
    /* renamed from: J */
    public String[] mo8629J() {
        return f5317P;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
        if (r0.f5332d == 0) goto L_0x0051;
     */
    @Override // androidx.transition.Transition
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo16666L(androidx.transition.TransitionValues r5, androidx.transition.TransitionValues r6) {
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
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.f5271a
            java.lang.String r1 = "android:visibility:visibility"
            boolean r0 = r0.containsKey(r1)
            r1 = r5
            java.util.Map<java.lang.String, java.lang.Object> r1 = r1.f5271a
            java.lang.String r2 = "android:visibility:visibility"
            boolean r1 = r1.containsKey(r2)
            if (r0 == r1) goto L_0x002f
            r0 = 0
            return r0
        L_0x002f:
            r0 = r4
            r1 = r5
            r2 = r6
            androidx.transition.Visibility$VisibilityInfo r0 = r0.m16663r0(r1, r2)
            r5 = r0
            r0 = r7
            r8 = r0
            r0 = r5
            boolean r0 = r0.f5329a
            if (r0 == 0) goto L_0x0054
            r0 = r5
            int r0 = r0.f5331c
            if (r0 == 0) goto L_0x0051
            r0 = r7
            r8 = r0
            r0 = r5
            int r0 = r0.f5332d
            if (r0 != 0) goto L_0x0054
        L_0x0051:
            r0 = 1
            r8 = r0
        L_0x0054:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.mo16666L(androidx.transition.TransitionValues, androidx.transition.TransitionValues):boolean");
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo8628i(@NonNull TransitionValues transitionValues) {
        m16665p0(transitionValues);
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo8627m(@NonNull TransitionValues transitionValues) {
        m16665p0(transitionValues);
    }

    @Override // androidx.transition.Transition
    @Nullable
    /* renamed from: q */
    public Animator mo8625q(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        VisibilityInfo r0 = m16663r0(transitionValues, transitionValues2);
        if (!r0.f5329a) {
            return null;
        }
        if (r0.f5333e == null && r0.f5334f == null) {
            return null;
        }
        return r0.f5330b ? m16662t0(viewGroup, transitionValues, r0.f5331c, transitionValues2, r0.f5332d) : m16661v0(viewGroup, transitionValues, r0.f5331c, transitionValues2, r0.f5332d);
    }

    /* renamed from: q0 */
    public int m16664q0() {
        return this.f5318O;
    }

    /* renamed from: s0 */
    public Animator mo8587s0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    /* renamed from: t0 */
    public Animator m16662t0(ViewGroup viewGroup, TransitionValues transitionValues, int i, TransitionValues transitionValues2, int i2) {
        if ((this.f5318O & 1) != 1 || transitionValues2 == null) {
            return null;
        }
        if (transitionValues == null) {
            View view = (View) transitionValues2.f5272b.getParent();
            if (m16663r0(m16756x(view, false), m16782K(view, false)).f5329a) {
                return null;
            }
        }
        return mo8587s0(viewGroup, transitionValues2.f5272b, transitionValues, transitionValues2);
    }

    /* renamed from: u0 */
    public Animator mo8586u0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0106, code lost:
        if (r8.f5211A != false) goto L_0x0109;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008e  */
    /* renamed from: v0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator m16661v0(final android.view.ViewGroup r9, androidx.transition.TransitionValues r10, int r11, androidx.transition.TransitionValues r12, int r13) {
        /*
            Method dump skipped, instructions count: 520
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.m16661v0(android.view.ViewGroup, androidx.transition.TransitionValues, int, androidx.transition.TransitionValues, int):android.animation.Animator");
    }

    /* renamed from: w0 */
    public void m16660w0(int i) {
        if ((i & (-4)) == 0) {
            this.f5318O = i;
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }
}
