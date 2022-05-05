package androidx.core.p037g;

import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.C0590a;
import androidx.core.p037g.C0689a;
import androidx.core.p037g.p038a.C0696d;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: androidx.core.g.t */
/* loaded from: classes-dex2jar.jar:androidx/core/g/t.class */
public final class C0741t {

    /* renamed from: b */
    private static Field f3103b;

    /* renamed from: c */
    private static boolean f3104c;

    /* renamed from: d */
    private static Field f3105d;

    /* renamed from: e */
    private static boolean f3106e;

    /* renamed from: f */
    private static WeakHashMap<View, String> f3107f;

    /* renamed from: h */
    private static Field f3109h;

    /* renamed from: j */
    private static ThreadLocal<Rect> f3111j;

    /* renamed from: a */
    private static final AtomicInteger f3102a = new AtomicInteger(1);

    /* renamed from: g */
    private static WeakHashMap<View, C0712aa> f3108g = null;

    /* renamed from: i */
    private static boolean f3110i = false;

    /* renamed from: k */
    private static final int[] f3112k = {C0590a.C0592b.f2702b, C0590a.C0592b.f2703c, C0590a.C0592b.f2714n, C0590a.C0592b.f2725y, C0590a.C0592b.f2687B, C0590a.C0592b.f2688C, C0590a.C0592b.f2689D, C0590a.C0592b.f2690E, C0590a.C0592b.f2691F, C0590a.C0592b.f2692G, C0590a.C0592b.f2704d, C0590a.C0592b.f2705e, C0590a.C0592b.f2706f, C0590a.C0592b.f2707g, C0590a.C0592b.f2708h, C0590a.C0592b.f2709i, C0590a.C0592b.f2710j, C0590a.C0592b.f2711k, C0590a.C0592b.f2712l, C0590a.C0592b.f2713m, C0590a.C0592b.f2715o, C0590a.C0592b.f2716p, C0590a.C0592b.f2717q, C0590a.C0592b.f2718r, C0590a.C0592b.f2719s, C0590a.C0592b.f2720t, C0590a.C0592b.f2721u, C0590a.C0592b.f2722v, C0590a.C0592b.f2723w, C0590a.C0592b.f2724x, C0590a.C0592b.f2726z, C0590a.C0592b.f2686A};

    /* renamed from: l */
    private static View$OnAttachStateChangeListenerC0742a f3113l = new View$OnAttachStateChangeListenerC0742a();

    /* renamed from: androidx.core.g.t$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/t$a.class */
    static final class View$OnAttachStateChangeListenerC0742a implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        private WeakHashMap<View, Boolean> f3114a = new WeakHashMap<>();

        View$OnAttachStateChangeListenerC0742a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            for (Map.Entry<View, Boolean> entry : this.f3114a.entrySet()) {
                View key = entry.getKey();
                boolean booleanValue = entry.getValue().booleanValue();
                boolean z = key.getVisibility() == 0;
                if (booleanValue != z) {
                    if (z) {
                        C0741t.m8364K(key);
                    }
                    this.f3114a.put(key, Boolean.valueOf(z));
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.g.t$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/t$b.class */
    public static abstract class AbstractC0743b<T> {

        /* renamed from: a */
        private final int f3115a;

        /* renamed from: b */
        private final Class<T> f3116b;

        /* renamed from: c */
        private final int f3117c;

        /* renamed from: d */
        private final int f3118d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC0743b(int i, Class<T> cls) {
            this(i, cls, 0);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC0743b(int i, Class<T> cls, int i2) {
            this.f3115a = i;
            this.f3116b = cls;
            this.f3118d = i2;
            this.f3117c = 28;
        }

        /* renamed from: a */
        abstract T mo8296a(View view);

        /* renamed from: b */
        final T m8304b(View view) {
            boolean z = true;
            if (Build.VERSION.SDK_INT >= this.f3117c) {
                return mo8296a(view);
            }
            if (Build.VERSION.SDK_INT < 19) {
                z = false;
            }
            if (!z) {
                return null;
            }
            T t = (T) view.getTag(this.f3115a);
            if (this.f3116b.isInstance(t)) {
                return t;
            }
            return null;
        }
    }

    /* renamed from: androidx.core.g.t$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/t$c.class */
    public interface AbstractC0744c {
        /* renamed from: a */
        boolean m8303a();
    }

    /* renamed from: androidx.core.g.t$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/t$d.class */
    static final class C0745d {

        /* renamed from: a */
        private static final ArrayList<WeakReference<View>> f3119a = new ArrayList<>();

        /* renamed from: b */
        private WeakHashMap<View, Boolean> f3120b = null;

        /* renamed from: c */
        private SparseArray<WeakReference<View>> f3121c = null;

        /* renamed from: d */
        private WeakReference<KeyEvent> f3122d = null;

        C0745d() {
        }

        /* renamed from: a */
        private SparseArray<WeakReference<View>> m8302a() {
            if (this.f3121c == null) {
                this.f3121c = new SparseArray<>();
            }
            return this.f3121c;
        }

        /* renamed from: a */
        static C0745d m8300a(View view) {
            C0745d dVar = (C0745d) view.getTag(C0590a.C0592b.f2699N);
            C0745d dVar2 = dVar;
            if (dVar == null) {
                dVar2 = new C0745d();
                view.setTag(C0590a.C0592b.f2699N, dVar2);
            }
            return dVar2;
        }

        /* renamed from: b */
        private View m8297b(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f3120b;
            if (weakHashMap == null || !weakHashMap.containsKey(view)) {
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View b = m8297b(viewGroup.getChildAt(childCount), keyEvent);
                    if (b != null) {
                        return b;
                    }
                }
            }
            if (m8298b(view)) {
                return view;
            }
            return null;
        }

        /* renamed from: b */
        private static boolean m8298b(View view) {
            ArrayList arrayList = (ArrayList) view.getTag(C0590a.C0592b.f2700O);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((AbstractC0744c) arrayList.get(size)).m8303a()) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: a */
        final boolean m8301a(KeyEvent keyEvent) {
            WeakReference<KeyEvent> weakReference = this.f3122d;
            if (weakReference != null && weakReference.get() == keyEvent) {
                return false;
            }
            this.f3122d = new WeakReference<>(keyEvent);
            SparseArray<WeakReference<View>> a = m8302a();
            WeakReference<View> weakReference2 = null;
            if (keyEvent.getAction() == 1) {
                int indexOfKey = a.indexOfKey(keyEvent.getKeyCode());
                weakReference2 = null;
                if (indexOfKey >= 0) {
                    weakReference2 = a.valueAt(indexOfKey);
                    a.removeAt(indexOfKey);
                }
            }
            WeakReference<View> weakReference3 = weakReference2;
            if (weakReference2 == null) {
                weakReference3 = a.get(keyEvent.getKeyCode());
            }
            if (weakReference3 == null) {
                return false;
            }
            View view = weakReference3.get();
            if (view == null || !C0741t.m8370E(view)) {
                return true;
            }
            m8298b(view);
            return true;
        }

        /* renamed from: a */
        final boolean m8299a(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                WeakHashMap<View, Boolean> weakHashMap = this.f3120b;
                if (weakHashMap != null) {
                    weakHashMap.clear();
                }
                if (!f3119a.isEmpty()) {
                    synchronized (f3119a) {
                        if (this.f3120b == null) {
                            this.f3120b = new WeakHashMap<>();
                        }
                        for (int size = f3119a.size() - 1; size >= 0; size--) {
                            View view2 = f3119a.get(size).get();
                            if (view2 == null) {
                                f3119a.remove(size);
                            } else {
                                this.f3120b.put(view2, Boolean.TRUE);
                                for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                    this.f3120b.put((View) parent, Boolean.TRUE);
                                }
                            }
                        }
                    }
                }
            }
            View b = m8297b(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (b != null && !KeyEvent.isModifierKey(keyCode)) {
                    m8302a().put(keyCode, new WeakReference<>(b));
                }
            }
            return b != null;
        }
    }

    /* renamed from: A */
    public static void m8374A(View view) {
        if (view instanceof AbstractC0730i) {
            ((AbstractC0730i) view).mo7266a(1);
        }
    }

    /* renamed from: B */
    public static boolean m8373B(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view.isLaidOut() : view.getWidth() > 0 && view.getHeight() > 0;
    }

    /* renamed from: C */
    public static float m8372C(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getZ();
        }
        return 0.0f;
    }

    /* renamed from: D */
    public static Rect m8371D(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return view.getClipBounds();
        }
        return null;
    }

    /* renamed from: E */
    public static boolean m8370E(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view.isAttachedToWindow() : view.getWindowToken() != null;
    }

    /* renamed from: F */
    public static boolean m8369F(View view) {
        if (Build.VERSION.SDK_INT >= 15) {
            return view.hasOnClickListeners();
        }
        return false;
    }

    /* renamed from: G */
    public static Display m8368G(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getDisplay();
        }
        if (m8370E(view)) {
            return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
        }
        return null;
    }

    /* renamed from: H */
    public static boolean m8367H(View view) {
        Boolean b = new C0747v(C0590a.C0592b.f2697L, Boolean.class).m8304b(view);
        if (b == null) {
            return false;
        }
        return b.booleanValue();
    }

    /* renamed from: I */
    public static CharSequence m8366I(View view) {
        return new C0748w(C0590a.C0592b.f2696K, CharSequence.class).m8304b(view);
    }

    /* renamed from: J */
    public static boolean m8365J(View view) {
        Boolean b = new C0749x(C0590a.C0592b.f2695J, Boolean.class).m8304b(view);
        if (b == null) {
            return false;
        }
        return b.booleanValue();
    }

    /* renamed from: K */
    static void m8364K(View view) {
        if (((AccessibilityManager) view.getContext().getSystemService("accessibility")).isEnabled()) {
            boolean z = m8366I(view) != null;
            if (m8322i(view) != 0 || (z && view.getVisibility() == 0)) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z ? 32 : 2048);
                obtain.setContentChangeTypes(16);
                view.sendAccessibilityEventUnchecked(obtain);
            } else if (view.getParent() != null) {
                try {
                    view.getParent().notifySubtreeAccessibilityStateChanged(view, view, 16);
                } catch (AbstractMethodError e) {
                    Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e);
                }
            }
        }
    }

    /* renamed from: L */
    private static View.AccessibilityDelegate m8363L(View view) {
        if (f3110i) {
            return null;
        }
        if (f3109h == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f3109h = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable th) {
                f3110i = true;
                return null;
            }
        }
        try {
            Object obj = f3109h.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable th2) {
            f3110i = true;
            return null;
        }
    }

    /* renamed from: M */
    private static void m8362M(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    /* renamed from: a */
    public static int m8360a(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return view.getImportantForAutofill();
        }
        return 0;
    }

    /* renamed from: a */
    private static Rect m8361a() {
        if (f3111j == null) {
            f3111j = new ThreadLocal<>();
        }
        Rect rect = f3111j.get();
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
            f3111j.set(rect2);
        }
        rect2.setEmpty();
        return rect2;
    }

    /* renamed from: a */
    public static C0719ag m8347a(View view, C0719ag agVar) {
        if (Build.VERSION.SDK_INT < 21) {
            return agVar;
        }
        WindowInsets windowInsets = (WindowInsets) C0719ag.m8436a(agVar);
        WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        WindowInsets windowInsets2 = windowInsets;
        if (!onApplyWindowInsets.equals(windowInsets)) {
            windowInsets2 = new WindowInsets(onApplyWindowInsets);
        }
        return C0719ag.m8435a(windowInsets2);
    }

    /* renamed from: a */
    public static void m8359a(View view, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f);
        }
    }

    /* renamed from: a */
    public static void m8358a(View view, int i) {
        int i2 = i;
        if (Build.VERSION.SDK_INT < 19) {
            if (Build.VERSION.SDK_INT >= 16) {
                i2 = i;
                if (i == 4) {
                    i2 = 2;
                }
            } else {
                return;
            }
        }
        view.setImportantForAccessibility(i2);
    }

    /* renamed from: a */
    public static void m8357a(View view, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation(i, i2, i3, i4);
        } else {
            view.postInvalidate(i, i2, i3, i4);
        }
    }

    /* renamed from: a */
    public static void m8355a(View view, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setBackgroundTintList(colorStateList);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable background = view.getBackground();
                boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
                if (background != null && z) {
                    if (background.isStateful()) {
                        background.setState(view.getDrawableState());
                    }
                    view.setBackground(background);
                }
            }
        } else if (view instanceof AbstractC0740s) {
            ((AbstractC0740s) view).mo1175a(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m8354a(View view, Paint paint) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setLayerPaint(paint);
            return;
        }
        view.setLayerType(view.getLayerType(), paint);
        view.invalidate();
    }

    /* renamed from: a */
    public static void m8353a(View view, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setBackgroundTintMode(mode);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable background = view.getBackground();
                boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
                if (background != null && z) {
                    if (background.isStateful()) {
                        background.setState(view.getDrawableState());
                    }
                    view.setBackground(background);
                }
            }
        } else if (view instanceof AbstractC0740s) {
            ((AbstractC0740s) view).mo1174a(mode);
        }
    }

    /* renamed from: a */
    public static void m8352a(View view, Rect rect) {
        if (Build.VERSION.SDK_INT >= 18) {
            view.setClipBounds(rect);
        }
    }

    /* renamed from: a */
    public static void m8351a(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    /* renamed from: a */
    public static void m8349a(View view, C0696d dVar) {
        view.onInitializeAccessibilityNodeInfo(dVar.m8536a());
    }

    /* renamed from: a */
    public static void m8348a(View view, C0689a aVar) {
        C0689a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = aVar;
            if (m8363L(view) instanceof C0689a.C0690a) {
                aVar2 = new C0689a();
            }
        }
        view.setAccessibilityDelegate(aVar2 == null ? null : aVar2.m8543a());
    }

    /* renamed from: a */
    public static void m8346a(View view, AbstractC0737p pVar) {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (pVar == null) {
            view.setOnApplyWindowInsetsListener(null);
        } else {
            view.setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC0746u(pVar));
        }
    }

    /* renamed from: a */
    public static void m8345a(View view, C0739r rVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            view.setPointerIcon((PointerIcon) (rVar != null ? rVar.m8376a() : null));
        }
    }

    /* renamed from: a */
    public static void m8344a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    /* renamed from: a */
    public static void m8343a(View view, Runnable runnable, long j) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimationDelayed(runnable, j);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j);
        }
    }

    /* renamed from: a */
    public static void m8342a(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (f3107f == null) {
            f3107f = new WeakHashMap<>();
        }
        f3107f.put(view, str);
    }

    /* renamed from: a */
    public static void m8341a(View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setHasTransientState(z);
        }
    }

    /* renamed from: a */
    public static boolean m8356a(View view, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.performAccessibilityAction(i, bundle);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m8350a(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return C0745d.m8300a(view).m8301a(keyEvent);
    }

    /* renamed from: b */
    public static C0719ag m8335b(View view, C0719ag agVar) {
        if (Build.VERSION.SDK_INT < 21) {
            return agVar;
        }
        WindowInsets windowInsets = (WindowInsets) C0719ag.m8436a(agVar);
        WindowInsets dispatchApplyWindowInsets = view.dispatchApplyWindowInsets(windowInsets);
        WindowInsets windowInsets2 = windowInsets;
        if (!dispatchApplyWindowInsets.equals(windowInsets)) {
            windowInsets2 = new WindowInsets(dispatchApplyWindowInsets);
        }
        return C0719ag.m8435a(windowInsets2);
    }

    /* renamed from: b */
    public static void m8340b(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setImportantForAutofill(8);
        }
    }

    /* renamed from: b */
    public static void m8339b(View view, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTranslationZ(f);
        }
    }

    /* renamed from: b */
    public static void m8338b(View view, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setAccessibilityLiveRegion(i);
        }
    }

    /* renamed from: b */
    public static void m8337b(View view, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setPaddingRelative(i, i2, i3, i4);
        } else {
            view.setPadding(i, i2, i3, i4);
        }
    }

    @Deprecated
    /* renamed from: b */
    public static void m8334b(View view, boolean z) {
        view.setFitsSystemWindows(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static boolean m8336b(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return C0745d.m8300a(view).m8299a(view, keyEvent);
    }

    /* renamed from: c */
    public static void m8332c(View view, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetTopAndBottom(i);
        } else if (Build.VERSION.SDK_INT >= 21) {
            Rect a = m8361a();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                a.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !a.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            m8326f(view, i);
            if (z && a.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(a);
            }
        } else {
            m8326f(view, i);
        }
    }

    /* renamed from: c */
    public static boolean m8333c(View view) {
        return m8363L(view) != null;
    }

    /* renamed from: d */
    public static void m8330d(View view, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetLeftAndRight(i);
        } else if (Build.VERSION.SDK_INT >= 21) {
            Rect a = m8361a();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                a.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !a.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            m8324g(view, i);
            if (z && a.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(a);
            }
        } else {
            m8324g(view, i);
        }
    }

    /* renamed from: d */
    public static boolean m8331d(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasTransientState();
        }
        return false;
    }

    /* renamed from: e */
    public static void m8329e(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.postInvalidate();
        }
    }

    /* renamed from: e */
    public static void m8328e(View view, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i, 3);
        }
    }

    /* renamed from: f */
    public static int m8327f(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getImportantForAccessibility();
        }
        return 0;
    }

    /* renamed from: f */
    private static void m8326f(View view, int i) {
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            m8362M(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                m8362M((View) parent);
            }
        }
    }

    /* renamed from: g */
    public static int m8325g(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getLayoutDirection();
        }
        return 0;
    }

    /* renamed from: g */
    private static void m8324g(View view, int i) {
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            m8362M(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                m8362M((View) parent);
            }
        }
    }

    /* renamed from: h */
    public static ViewParent m8323h(View view) {
        return Build.VERSION.SDK_INT >= 16 ? view.getParentForAccessibility() : view.getParent();
    }

    /* renamed from: i */
    public static int m8322i(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.getAccessibilityLiveRegion();
        }
        return 0;
    }

    /* renamed from: j */
    public static int m8321j(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingStart() : view.getPaddingLeft();
    }

    /* renamed from: k */
    public static int m8320k(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingEnd() : view.getPaddingRight();
    }

    /* renamed from: l */
    public static int m8319l(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumWidth();
        }
        if (!f3104c) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinWidth");
                f3103b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f3104c = true;
        }
        Field field = f3103b;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception e2) {
            return 0;
        }
    }

    /* renamed from: m */
    public static int m8318m(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumHeight();
        }
        if (!f3106e) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinHeight");
                f3105d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f3106e = true;
        }
        Field field = f3105d;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception e2) {
            return 0;
        }
    }

    /* renamed from: n */
    public static C0712aa m8317n(View view) {
        if (f3108g == null) {
            f3108g = new WeakHashMap<>();
        }
        C0712aa aaVar = f3108g.get(view);
        C0712aa aaVar2 = aaVar;
        if (aaVar == null) {
            aaVar2 = new C0712aa(view);
            f3108g.put(view, aaVar2);
        }
        return aaVar2;
    }

    /* renamed from: o */
    public static float m8316o(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getElevation();
        }
        return 0.0f;
    }

    /* renamed from: p */
    public static float m8315p(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTranslationZ();
        }
        return 0.0f;
    }

    /* renamed from: q */
    public static String m8314q(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTransitionName();
        }
        WeakHashMap<View, String> weakHashMap = f3107f;
        if (weakHashMap == null) {
            return null;
        }
        return weakHashMap.get(view);
    }

    /* renamed from: r */
    public static int m8313r(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getWindowSystemUiVisibility();
        }
        return 0;
    }

    /* renamed from: s */
    public static void m8312s(View view) {
        if (Build.VERSION.SDK_INT >= 20) {
            view.requestApplyInsets();
        } else if (Build.VERSION.SDK_INT >= 16) {
            view.requestFitSystemWindows();
        }
    }

    /* renamed from: t */
    public static boolean m8311t(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getFitsSystemWindows();
        }
        return false;
    }

    /* renamed from: u */
    public static boolean m8310u(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasOverlappingRendering();
        }
        return true;
    }

    /* renamed from: v */
    public static boolean m8309v(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.isPaddingRelative();
        }
        return false;
    }

    /* renamed from: w */
    public static ColorStateList m8308w(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintList();
        }
        if (view instanceof AbstractC0740s) {
            return ((AbstractC0740s) view).mo1159c_();
        }
        return null;
    }

    /* renamed from: x */
    public static PorterDuff.Mode m8307x(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintMode();
        }
        if (view instanceof AbstractC0740s) {
            return ((AbstractC0740s) view).mo1169b();
        }
        return null;
    }

    /* renamed from: y */
    public static boolean m8306y(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.isNestedScrollingEnabled();
        }
        if (view instanceof AbstractC0729h) {
            return ((AbstractC0729h) view).isNestedScrollingEnabled();
        }
        return false;
    }

    /* renamed from: z */
    public static void m8305z(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.stopNestedScroll();
        } else if (view instanceof AbstractC0729h) {
            ((AbstractC0729h) view).stopNestedScroll();
        }
    }
}
