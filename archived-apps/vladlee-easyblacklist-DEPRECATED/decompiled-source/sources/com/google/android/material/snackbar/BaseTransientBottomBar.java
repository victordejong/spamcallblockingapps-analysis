package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p037g.C0741t;
import androidx.core.p037g.p038a.C0693c;
import com.google.android.material.C2913a;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.p060a.C2925a;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.C3072l;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar.class */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    /* renamed from: a */
    static final Handler f18504a;

    /* renamed from: d */
    private static final boolean f18505d;

    /* renamed from: e */
    private static final int[] f18506e;

    /* renamed from: b */
    protected final C3060d f18507b;

    /* renamed from: c */
    final C3072l.AbstractC3073a f18508c;

    /* renamed from: f */
    private final ViewGroup f18509f;

    /* renamed from: g */
    private final AbstractC3071k f18510g;

    /* renamed from: h */
    private List<Object<B>> f18511h;

    /* renamed from: i */
    private Behavior f18512i;

    /* renamed from: j */
    private final AccessibilityManager f18513j;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$Behavior.class */
    public static class Behavior extends SwipeDismissBehavior<View> {

        /* renamed from: g */
        private final C3057a f18514g = new C3057a(this);

        /* renamed from: a */
        static /* synthetic */ void m936a(Behavior behavior, BaseTransientBottomBar baseTransientBottomBar) {
            behavior.f18514g.m934a(baseTransientBottomBar);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        /* renamed from: a */
        public final boolean mo938a(View view) {
            return view instanceof C3060d;
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final boolean mo937a(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            this.f18514g.m935a(coordinatorLayout, view, motionEvent);
            return super.mo937a(coordinatorLayout, (CoordinatorLayout) view, motionEvent);
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$a.class */
    public static final class C3057a {

        /* renamed from: a */
        private C3072l.AbstractC3073a f18515a;

        public C3057a(SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.m1437b();
            swipeDismissBehavior.m1436c();
            swipeDismissBehavior.m1442a();
        }

        /* renamed from: a */
        public final void m935a(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    C3072l.m920a().m912e(this.f18515a);
                }
            } else if (coordinatorLayout.m8813a(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                C3072l.m920a().m913d(this.f18515a);
            }
        }

        /* renamed from: a */
        public final void m934a(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f18515a = baseTransientBottomBar.f18508c;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$b.class */
    public interface AbstractC3058b {
        /* renamed from: a */
        void mo925a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$c.class */
    public interface AbstractC3059c {
        /* renamed from: a */
        void mo924a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$d.class */
    public static class C3060d extends FrameLayout {

        /* renamed from: a */
        private final AccessibilityManager f18516a;

        /* renamed from: b */
        private final C0693c.AbstractC0694a f18517b;

        /* renamed from: c */
        private AbstractC3059c f18518c;

        /* renamed from: d */
        private AbstractC3058b f18519d;

        /* JADX INFO: Access modifiers changed from: protected */
        public C3060d(Context context) {
            this(context, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public C3060d(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2913a.C2924k.f17675cI);
            if (obtainStyledAttributes.hasValue(C2913a.C2924k.f17677cK)) {
                C0741t.m8359a(this, obtainStyledAttributes.getDimensionPixelSize(C2913a.C2924k.f17677cK, 0));
            }
            obtainStyledAttributes.recycle();
            this.f18516a = (AccessibilityManager) context.getSystemService("accessibility");
            this.f18517b = new C3070j(this);
            C0693c.m8538a(this.f18516a, this.f18517b);
            m930a(this.f18516a.isTouchExplorationEnabled());
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void m930a(boolean z) {
            setClickable(!z);
            setFocusable(z);
        }

        /* renamed from: a */
        final void m933a(AbstractC3058b bVar) {
            this.f18519d = bVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m932a(AbstractC3059c cVar) {
            this.f18518c = cVar;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            C0741t.m8312s(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            AbstractC3058b bVar = this.f18519d;
            if (bVar != null) {
                bVar.mo925a();
            }
            C0693c.m8537b(this.f18516a, this.f18517b);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            AbstractC3059c cVar = this.f18518c;
            if (cVar != null) {
                cVar.mo924a();
            }
        }
    }

    static {
        f18505d = Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT <= 19;
        f18506e = new int[]{C2913a.C2915b.f17447m};
        f18504a = new Handler(Looper.getMainLooper(), new C3061a());
    }

    /* renamed from: g */
    private int m939g() {
        int height = this.f18507b.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f18507b.getLayoutParams();
        int i = height;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            i = height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m947a() {
        if (this.f18507b.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f18507b.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.C0583d) {
                CoordinatorLayout.C0583d dVar = (CoordinatorLayout.C0583d) layoutParams;
                Behavior behavior = this.f18512i;
                Behavior behavior2 = behavior;
                if (behavior == null) {
                    behavior2 = new Behavior();
                }
                if (behavior2 instanceof Behavior) {
                    Behavior.m936a(behavior2, this);
                }
                behavior2.m1438a(new C3064d(this));
                dVar.m8789a(behavior2);
                dVar.f2665g = 80;
            }
            this.f18509f.addView(this.f18507b);
        }
        this.f18507b.m933a(new C3065e(this));
        if (!C0741t.m8373B(this.f18507b)) {
            this.f18507b.m932a(new C3067g(this));
        } else if (m941e()) {
            m944b();
        } else {
            m943c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m946a(int i) {
        if (!m941e() || this.f18507b.getVisibility() != 0) {
            m942d();
            return;
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, m939g());
        valueAnimator.setInterpolator(C2925a.f17811b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new C3062b(this, i));
        valueAnimator.addUpdateListener(new C3063c(this));
        valueAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m944b() {
        int g = m939g();
        if (f18505d) {
            C0741t.m8332c(this.f18507b, g);
        } else {
            this.f18507b.setTranslationY(g);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(g, 0);
        valueAnimator.setInterpolator(C2925a.f17811b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new C3068h(this));
        valueAnimator.addUpdateListener(new C3069i(this, g));
        valueAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m943c() {
        C3072l.m920a().m915c(this.f18508c);
        List<Object<B>> list = this.f18511h;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f18511h.get(size);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m942d() {
        C3072l.m920a().m917b(this.f18508c);
        List<Object<B>> list = this.f18511h;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f18511h.get(size);
            }
        }
        ViewParent parent = this.f18507b.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f18507b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final boolean m941e() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = this.f18513j.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }
}
