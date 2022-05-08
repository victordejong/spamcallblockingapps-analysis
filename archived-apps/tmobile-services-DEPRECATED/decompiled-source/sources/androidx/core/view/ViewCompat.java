package androidx.core.view;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
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
import androidx.annotation.AbstractC0040Px;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.core.C0189R;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:androidx/core/view/ViewCompat.class */
public class ViewCompat {

    /* renamed from: b */
    private static Field f3276b;

    /* renamed from: c */
    private static boolean f3277c;

    /* renamed from: d */
    private static Field f3278d;

    /* renamed from: e */
    private static boolean f3279e;

    /* renamed from: f */
    private static WeakHashMap<View, String> f3280f;

    /* renamed from: h */
    private static Field f3282h;

    /* renamed from: j */
    private static ThreadLocal<Rect> f3284j;

    /* renamed from: a */
    private static final AtomicInteger f3275a = new AtomicInteger(1);

    /* renamed from: g */
    private static WeakHashMap<View, ViewPropertyAnimatorCompat> f3281g = null;

    /* renamed from: i */
    private static boolean f3283i = false;

    /* renamed from: androidx.core.view.ViewCompat$2 */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ViewCompat$2.class */
    class View$OnUnhandledKeyEventListenerC02302 implements View.OnUnhandledKeyEventListener {

        /* renamed from: a */
        final /* synthetic */ OnUnhandledKeyEventListenerCompat f3286a;

        @Override // android.view.View.OnUnhandledKeyEventListener
        public boolean onUnhandledKeyEvent(View view, KeyEvent keyEvent) {
            return this.f3286a.onUnhandledKeyEvent(view, keyEvent);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager.class */
    static class AccessibilityPaneVisibilityManager implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* renamed from: f */
        private WeakHashMap<View, Boolean> f3287f = new WeakHashMap<>();

        AccessibilityPaneVisibilityManager() {
        }

        @RequiresApi
        /* renamed from: a */
        private void m19149a(View view, boolean z) {
            boolean z2 = view.getVisibility() == 0;
            if (z != z2) {
                if (z2) {
                    ViewCompat.m19214W(view, 16);
                }
                this.f3287f.put(view, Boolean.valueOf(z2));
            }
        }

        @RequiresApi
        /* renamed from: b */
        private void m19148b(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        @RequiresApi
        public void onGlobalLayout() {
            for (Map.Entry<View, Boolean> entry : this.f3287f.entrySet()) {
                m19149a(entry.getKey(), entry.getValue().booleanValue());
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        @RequiresApi
        public void onViewAttachedToWindow(View view) {
            m19148b(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ViewCompat$AccessibilityViewProperty.class */
    public static abstract class AccessibilityViewProperty<T> {

        /* renamed from: a */
        private final int f3288a;

        /* renamed from: b */
        private final Class<T> f3289b;

        /* renamed from: c */
        private final int f3290c;

        AccessibilityViewProperty(int i, Class<T> cls, int i2) {
            this(i, cls, 0, i2);
        }

        AccessibilityViewProperty(int i, Class<T> cls, int i2, int i3) {
            this.f3288a = i;
            this.f3289b = cls;
            this.f3290c = i3;
        }

        /* renamed from: b */
        private boolean m19146b() {
            return Build.VERSION.SDK_INT >= 19;
        }

        /* renamed from: c */
        private boolean m19145c() {
            return Build.VERSION.SDK_INT >= this.f3290c;
        }

        /* renamed from: a */
        boolean m19147a(Boolean bool, Boolean bool2) {
            boolean z = false;
            if ((bool == null ? false : bool.booleanValue()) == (bool2 == null ? false : bool2.booleanValue())) {
                z = true;
            }
            return z;
        }

        /* renamed from: d */
        abstract T mo19144d(View view);

        /* renamed from: e */
        abstract void mo19143e(View view, T t);

        /* renamed from: f */
        T m19142f(View view) {
            if (m19145c()) {
                return mo19144d(view);
            }
            if (!m19146b()) {
                return null;
            }
            T t = (T) view.getTag(this.f3288a);
            if (this.f3289b.isInstance(t)) {
                return t;
            }
            return null;
        }

        /* renamed from: g */
        void m19141g(View view, T t) {
            if (m19145c()) {
                mo19143e(view, t);
            } else if (m19146b() && mo19140h(m19142f(view), t)) {
                ViewCompat.m19238D(view);
                view.setTag(this.f3288a, t);
                ViewCompat.m19214W(view, 0);
            }
        }

        /* renamed from: h */
        boolean mo19140h(T t, T t2) {
            return !t2.equals(t);
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ViewCompat$Api21Impl.class */
    private static class Api21Impl {
        private Api21Impl() {
        }

        /* renamed from: a */
        static WindowInsetsCompat m19139a(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Rect rect) {
            WindowInsets o = windowInsetsCompat.m19086o();
            if (o != null) {
                return WindowInsetsCompat.m19085p(view.computeSystemWindowInsets(o, rect));
            }
            rect.setEmpty();
            return windowInsetsCompat;
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ViewCompat$Api23Impl.class */
    private static class Api23Impl {
        private Api23Impl() {
        }

        /* renamed from: a */
        public static WindowInsets m19138a(View view) {
            return view.getRootWindowInsets();
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ViewCompat$Api29Impl.class */
    private static class Api29Impl {
        private Api29Impl() {
        }

        /* renamed from: a */
        static void m19137a(@NonNull View view, @NonNull Context context, @NonNull int[] iArr, @Nullable AttributeSet attributeSet, @NonNull TypedArray typedArray, int i, int i2) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ViewCompat$FocusDirection.class */
    public @interface FocusDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ViewCompat$FocusRealDirection.class */
    public @interface FocusRealDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ViewCompat$FocusRelativeDirection.class */
    public @interface FocusRelativeDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ViewCompat$NestedScrollType.class */
    public @interface NestedScrollType {
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat.class */
    public interface OnUnhandledKeyEventListenerCompat {
        boolean onUnhandledKeyEvent(View view, KeyEvent keyEvent);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ViewCompat$ScrollAxis.class */
    public @interface ScrollAxis {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ViewCompat$ScrollIndicators.class */
    public @interface ScrollIndicators {
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/ViewCompat$UnhandledKeyEventManager.class */
    static class UnhandledKeyEventManager {

        /* renamed from: d */
        private static final ArrayList<WeakReference<View>> f3291d = new ArrayList<>();
        @Nullable

        /* renamed from: a */
        private WeakHashMap<View, Boolean> f3292a = null;

        /* renamed from: b */
        private SparseArray<WeakReference<View>> f3293b = null;

        /* renamed from: c */
        private WeakReference<KeyEvent> f3294c = null;

        UnhandledKeyEventManager() {
        }

        /* renamed from: a */
        static UnhandledKeyEventManager m19136a(View view) {
            UnhandledKeyEventManager unhandledKeyEventManager = (UnhandledKeyEventManager) view.getTag(C0189R.C0192id.tag_unhandled_key_event_manager);
            UnhandledKeyEventManager unhandledKeyEventManager2 = unhandledKeyEventManager;
            if (unhandledKeyEventManager == null) {
                unhandledKeyEventManager2 = new UnhandledKeyEventManager();
                view.setTag(C0189R.C0192id.tag_unhandled_key_event_manager, unhandledKeyEventManager2);
            }
            return unhandledKeyEventManager2;
        }

        @Nullable
        /* renamed from: c */
        private View m19134c(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f3292a;
            if (weakHashMap == null || !weakHashMap.containsKey(view)) {
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View c = m19134c(viewGroup.getChildAt(childCount), keyEvent);
                    if (c != null) {
                        return c;
                    }
                }
            }
            if (m19132e(view, keyEvent)) {
                return view;
            }
            return null;
        }

        /* renamed from: d */
        private SparseArray<WeakReference<View>> m19133d() {
            if (this.f3293b == null) {
                this.f3293b = new SparseArray<>();
            }
            return this.f3293b;
        }

        /* renamed from: e */
        private boolean m19132e(@NonNull View view, @NonNull KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(C0189R.C0192id.tag_unhandled_key_listeners);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((OnUnhandledKeyEventListenerCompat) arrayList.get(size)).onUnhandledKeyEvent(view, keyEvent)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: g */
        private void m19130g() {
            WeakHashMap<View, Boolean> weakHashMap = this.f3292a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            if (!f3291d.isEmpty()) {
                synchronized (f3291d) {
                    if (this.f3292a == null) {
                        this.f3292a = new WeakHashMap<>();
                    }
                    for (int size = f3291d.size() - 1; size >= 0; size--) {
                        View view = f3291d.get(size).get();
                        if (view == null) {
                            f3291d.remove(size);
                        } else {
                            this.f3292a.put(view, Boolean.TRUE);
                            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                                this.f3292a.put((View) parent, Boolean.TRUE);
                            }
                        }
                    }
                }
            }
        }

        /* renamed from: b */
        boolean m19135b(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                m19130g();
            }
            View c = m19134c(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (c != null && !KeyEvent.isModifierKey(keyCode)) {
                    m19133d().put(keyCode, new WeakReference<>(c));
                }
            }
            return c != null;
        }

        /* renamed from: f */
        boolean m19131f(KeyEvent keyEvent) {
            WeakReference<KeyEvent> weakReference = this.f3294c;
            if (weakReference != null && weakReference.get() == keyEvent) {
                return false;
            }
            this.f3294c = new WeakReference<>(keyEvent);
            SparseArray<WeakReference<View>> d = m19133d();
            WeakReference<View> weakReference2 = null;
            if (keyEvent.getAction() == 1) {
                int indexOfKey = d.indexOfKey(keyEvent.getKeyCode());
                weakReference2 = null;
                if (indexOfKey >= 0) {
                    weakReference2 = d.valueAt(indexOfKey);
                    d.removeAt(indexOfKey);
                }
            }
            WeakReference<View> weakReference3 = weakReference2;
            if (weakReference2 == null) {
                weakReference3 = d.get(keyEvent.getKeyCode());
            }
            if (weakReference3 == null) {
                return false;
            }
            View view = weakReference3.get();
            if (view == null || !ViewCompat.m19219R(view)) {
                return true;
            }
            m19132e(view, keyEvent);
            return true;
        }
    }

    static {
        new AccessibilityPaneVisibilityManager();
    }

    protected ViewCompat() {
    }

    /* renamed from: A */
    public static int m19244A(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getLayoutDirection();
        }
        return 0;
    }

    /* renamed from: A0 */
    public static void m19243A0(@NonNull View view, @Nullable final OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (onApplyWindowInsetsListener == null) {
            view.setOnApplyWindowInsetsListener(null);
        } else {
            view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.core.view.ViewCompat.1
                @Override // android.view.View.OnApplyWindowInsetsListener
                public WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                    return OnApplyWindowInsetsListener.this.mo9036a(view2, WindowInsetsCompat.m19085p(windowInsets)).m19086o();
                }
            });
        }
    }

    /* renamed from: B */
    public static int m19242B(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumHeight();
        }
        if (!f3279e) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinHeight");
                f3278d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f3279e = true;
        }
        Field field = f3278d;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception e2) {
            return 0;
        }
    }

    /* renamed from: B0 */
    public static void m19241B0(@NonNull View view, @AbstractC0040Px int i, @AbstractC0040Px int i2, @AbstractC0040Px int i3, @AbstractC0040Px int i4) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setPaddingRelative(i, i2, i3, i4);
        } else {
            view.setPadding(i, i2, i3, i4);
        }
    }

    /* renamed from: C */
    public static int m19240C(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumWidth();
        }
        if (!f3277c) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinWidth");
                f3276b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f3277c = true;
        }
        Field field = f3276b;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception e2) {
            return 0;
        }
    }

    /* renamed from: C0 */
    public static void m19239C0(@NonNull View view, PointerIconCompat pointerIconCompat) {
        if (Build.VERSION.SDK_INT >= 24) {
            view.setPointerIcon((PointerIcon) (pointerIconCompat != null ? pointerIconCompat.m19247a() : null));
        }
    }

    /* renamed from: D */
    static AccessibilityDelegateCompat m19238D(@NonNull View view) {
        AccessibilityDelegateCompat l = m19188l(view);
        AccessibilityDelegateCompat accessibilityDelegateCompat = l;
        if (l == null) {
            accessibilityDelegateCompat = new AccessibilityDelegateCompat();
        }
        m19183n0(view, accessibilityDelegateCompat);
        return accessibilityDelegateCompat;
    }

    /* renamed from: D0 */
    public static void m19237D0(@NonNull View view, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i, i2);
        }
    }

    @Deprecated
    /* renamed from: E */
    public static int m19236E(View view) {
        return view.getOverScrollMode();
    }

    /* renamed from: E0 */
    public static void m19235E0(@NonNull View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (f3280f == null) {
            f3280f = new WeakHashMap<>();
        }
        f3280f.put(view, str);
    }

    @AbstractC0040Px
    /* renamed from: F */
    public static int m19234F(@NonNull View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingEnd() : view.getPaddingRight();
    }

    /* renamed from: F0 */
    public static void m19233F0(@NonNull View view, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTranslationZ(f);
        }
    }

    @AbstractC0040Px
    /* renamed from: G */
    public static int m19232G(@NonNull View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingStart() : view.getPaddingLeft();
    }

    /* renamed from: G0 */
    public static void m19231G0(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.stopNestedScroll();
        } else if (view instanceof NestedScrollingChild) {
            ((NestedScrollingChild) view).stopNestedScroll();
        }
    }

    /* renamed from: H */
    public static ViewParent m19230H(@NonNull View view) {
        return Build.VERSION.SDK_INT >= 16 ? view.getParentForAccessibility() : view.getParent();
    }

    /* renamed from: H0 */
    private static void m19229H0(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    @Nullable
    /* renamed from: I */
    public static WindowInsetsCompat m19228I(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 23) {
            return WindowInsetsCompat.m19085p(Api23Impl.m19138a(view));
        }
        return null;
    }

    @Nullable
    /* renamed from: J */
    public static String m19227J(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTransitionName();
        }
        WeakHashMap<View, String> weakHashMap = f3280f;
        if (weakHashMap == null) {
            return null;
        }
        return weakHashMap.get(view);
    }

    /* renamed from: K */
    public static float m19226K(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTranslationZ();
        }
        return 0.0f;
    }

    /* renamed from: L */
    public static int m19225L(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getWindowSystemUiVisibility();
        }
        return 0;
    }

    /* renamed from: M */
    public static float m19224M(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getZ();
        }
        return 0.0f;
    }

    /* renamed from: N */
    public static boolean m19223N(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 15) {
            return view.hasOnClickListeners();
        }
        return false;
    }

    /* renamed from: O */
    public static boolean m19222O(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasOverlappingRendering();
        }
        return true;
    }

    /* renamed from: P */
    public static boolean m19221P(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasTransientState();
        }
        return false;
    }

    @UiThread
    /* renamed from: Q */
    public static boolean m19220Q(View view) {
        Boolean f = m19210a().m19142f(view);
        return f == null ? false : f.booleanValue();
    }

    /* renamed from: R */
    public static boolean m19219R(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.isAttachedToWindow();
        }
        return view.getWindowToken() != null;
    }

    /* renamed from: S */
    public static boolean m19218S(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.isLaidOut();
        }
        return view.getWidth() > 0 && view.getHeight() > 0;
    }

    /* renamed from: T */
    public static boolean m19217T(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.isNestedScrollingEnabled();
        }
        if (view instanceof NestedScrollingChild) {
            return ((NestedScrollingChild) view).isNestedScrollingEnabled();
        }
        return false;
    }

    /* renamed from: U */
    public static boolean m19216U(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.isPaddingRelative();
        }
        return false;
    }

    @UiThread
    /* renamed from: V */
    public static boolean m19215V(View view) {
        Boolean f = m19185m0().m19142f(view);
        return f == null ? false : f.booleanValue();
    }

    @RequiresApi
    /* renamed from: W */
    static void m19214W(View view, int i) {
        if (((AccessibilityManager) view.getContext().getSystemService("accessibility")).isEnabled()) {
            boolean z = m19180p(view) != null;
            if (m19182o(view) != 0 || (z && view.getVisibility() == 0)) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z ? 32 : 2048);
                obtain.setContentChangeTypes(i);
                view.sendAccessibilityEventUnchecked(obtain);
            } else if (view.getParent() != null) {
                try {
                    view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
                } catch (AbstractMethodError e) {
                    Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e);
                }
            }
        }
    }

    /* renamed from: X */
    public static void m19213X(@NonNull View view, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            view.offsetLeftAndRight(i);
        } else if (i2 >= 21) {
            Rect w = m19166w();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                w.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !w.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            m19202e(view, i);
            if (z && w.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(w);
            }
        } else {
            m19202e(view, i);
        }
    }

    /* renamed from: Y */
    public static void m19212Y(@NonNull View view, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            view.offsetTopAndBottom(i);
        } else if (i2 >= 21) {
            Rect w = m19166w();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                w.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !w.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            m19200f(view, i);
            if (z && w.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(w);
            }
        } else {
            m19200f(view, i);
        }
    }

    @NonNull
    /* renamed from: Z */
    public static WindowInsetsCompat m19211Z(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsets o;
        if (Build.VERSION.SDK_INT >= 21 && (o = windowInsetsCompat.m19086o()) != null) {
            WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(o);
            if (!onApplyWindowInsets.equals(o)) {
                return WindowInsetsCompat.m19085p(onApplyWindowInsets);
            }
        }
        return windowInsetsCompat;
    }

    /* renamed from: a */
    private static AccessibilityViewProperty<Boolean> m19210a() {
        return new AccessibilityViewProperty<Boolean>(C0189R.C0192id.tag_accessibility_heading, Boolean.class, 28) { // from class: androidx.core.view.ViewCompat.5
            /* JADX INFO: Access modifiers changed from: package-private */
            @RequiresApi
            /* renamed from: i */
            public Boolean mo19144d(View view) {
                return Boolean.valueOf(view.isAccessibilityHeading());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @RequiresApi
            /* renamed from: j */
            public void mo19143e(View view, Boolean bool) {
                view.setAccessibilityHeading(bool.booleanValue());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: k */
            public boolean mo19140h(Boolean bool, Boolean bool2) {
                return !m19147a(bool, bool2);
            }
        };
    }

    /* renamed from: a0 */
    public static void m19209a0(@NonNull View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        view.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat.m19053F0());
    }

    /* renamed from: b */
    private static void m19208b(@NonNull View view, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat) {
        if (Build.VERSION.SDK_INT >= 21) {
            m19238D(view);
            m19193i0(accessibilityActionCompat.m18978b(), view);
            m19178q(view).add(accessibilityActionCompat);
            m19214W(view, 0);
        }
    }

    /* renamed from: b0 */
    private static AccessibilityViewProperty<CharSequence> m19207b0() {
        return new AccessibilityViewProperty<CharSequence>(C0189R.C0192id.tag_accessibility_pane_title, CharSequence.class, 8, 28) { // from class: androidx.core.view.ViewCompat.4
            /* JADX INFO: Access modifiers changed from: package-private */
            @RequiresApi
            /* renamed from: i */
            public CharSequence mo19144d(View view) {
                return view.getAccessibilityPaneTitle();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @RequiresApi
            /* renamed from: j */
            public void mo19143e(View view, CharSequence charSequence) {
                view.setAccessibilityPaneTitle(charSequence);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: k */
            public boolean mo19140h(CharSequence charSequence, CharSequence charSequence2) {
                return !TextUtils.equals(charSequence, charSequence2);
            }
        };
    }

    @NonNull
    /* renamed from: c */
    public static ViewPropertyAnimatorCompat m19206c(@NonNull View view) {
        if (f3281g == null) {
            f3281g = new WeakHashMap<>();
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = f3281g.get(view);
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = viewPropertyAnimatorCompat;
        if (viewPropertyAnimatorCompat == null) {
            viewPropertyAnimatorCompat2 = new ViewPropertyAnimatorCompat(view);
            f3281g.put(view, viewPropertyAnimatorCompat2);
        }
        return viewPropertyAnimatorCompat2;
    }

    /* renamed from: c0 */
    public static boolean m19205c0(@NonNull View view, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.performAccessibilityAction(i, bundle);
        }
        return false;
    }

    @Deprecated
    /* renamed from: d */
    public static boolean m19204d(View view, int i) {
        return view.canScrollVertically(i);
    }

    /* renamed from: d0 */
    public static void m19203d0(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.postInvalidate();
        }
    }

    /* renamed from: e */
    private static void m19202e(View view, int i) {
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            m19229H0(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                m19229H0((View) parent);
            }
        }
    }

    /* renamed from: e0 */
    public static void m19201e0(@NonNull View view, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation(i, i2, i3, i4);
        } else {
            view.postInvalidate(i, i2, i3, i4);
        }
    }

    /* renamed from: f */
    private static void m19200f(View view, int i) {
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            m19229H0(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                m19229H0((View) parent);
            }
        }
    }

    /* renamed from: f0 */
    public static void m19199f0(@NonNull View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    @NonNull
    /* renamed from: g */
    public static WindowInsetsCompat m19198g(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Rect rect) {
        return Build.VERSION.SDK_INT >= 21 ? Api21Impl.m19139a(view, windowInsetsCompat, rect) : windowInsetsCompat;
    }

    /* renamed from: g0 */
    public static void m19197g0(@NonNull View view, Runnable runnable, long j) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimationDelayed(runnable, j);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j);
        }
    }

    @NonNull
    /* renamed from: h */
    public static WindowInsetsCompat m19196h(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsets o;
        return (Build.VERSION.SDK_INT < 21 || (o = windowInsetsCompat.m19086o()) == null || view.dispatchApplyWindowInsets(o).equals(o)) ? windowInsetsCompat : WindowInsetsCompat.m19085p(o);
    }

    /* renamed from: h0 */
    public static void m19195h0(@NonNull View view, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            m19193i0(i, view);
            m19214W(view, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    /* renamed from: i */
    public static boolean m19194i(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return UnhandledKeyEventManager.m19136a(view).m19135b(view, keyEvent);
    }

    /* renamed from: i0 */
    private static void m19193i0(int i, View view) {
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> q = m19178q(view);
        for (int i2 = 0; i2 < q.size(); i2++) {
            if (q.get(i2).m18978b() == i) {
                q.remove(i2);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    /* renamed from: j */
    public static boolean m19192j(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return UnhandledKeyEventManager.m19136a(view).m19131f(keyEvent);
    }

    /* renamed from: j0 */
    public static void m19191j0(@NonNull View view, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, @Nullable CharSequence charSequence, @Nullable AccessibilityViewCommand accessibilityViewCommand) {
        if (accessibilityViewCommand == null && charSequence == null) {
            m19195h0(view, accessibilityActionCompat.m18978b());
        } else {
            m19208b(view, accessibilityActionCompat.m18979a(charSequence, accessibilityViewCommand));
        }
    }

    /* renamed from: k */
    public static int m19190k() {
        int i;
        int i2;
        if (Build.VERSION.SDK_INT >= 17) {
            return View.generateViewId();
        }
        do {
            i = f3275a.get();
            int i3 = i + 1;
            i2 = i3;
            if (i3 > 16777215) {
                i2 = 1;
            }
        } while (!f3275a.compareAndSet(i, i2));
        return i;
    }

    /* renamed from: k0 */
    public static void m19189k0(@NonNull View view) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 20) {
            view.requestApplyInsets();
        } else if (i >= 16) {
            view.requestFitSystemWindows();
        }
    }

    @Nullable
    /* renamed from: l */
    public static AccessibilityDelegateCompat m19188l(@NonNull View view) {
        View.AccessibilityDelegate m = m19186m(view);
        if (m == null) {
            return null;
        }
        return m instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter ? ((AccessibilityDelegateCompat.AccessibilityDelegateAdapter) m).f3219a : new AccessibilityDelegateCompat(m);
    }

    /* renamed from: l0 */
    public static void m19187l0(@NonNull View view, @NonNull @SuppressLint({"ContextFirst"}) Context context, @NonNull int[] iArr, @Nullable AttributeSet attributeSet, @NonNull TypedArray typedArray, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 29) {
            Api29Impl.m19137a(view, context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    @Nullable
    /* renamed from: m */
    private static View.AccessibilityDelegate m19186m(@NonNull View view) {
        return Build.VERSION.SDK_INT >= 29 ? view.getAccessibilityDelegate() : m19184n(view);
    }

    /* renamed from: m0 */
    private static AccessibilityViewProperty<Boolean> m19185m0() {
        return new AccessibilityViewProperty<Boolean>(C0189R.C0192id.tag_screen_reader_focusable, Boolean.class, 28) { // from class: androidx.core.view.ViewCompat.3
            /* JADX INFO: Access modifiers changed from: package-private */
            @RequiresApi
            /* renamed from: i */
            public Boolean mo19144d(View view) {
                return Boolean.valueOf(view.isScreenReaderFocusable());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @RequiresApi
            /* renamed from: j */
            public void mo19143e(View view, Boolean bool) {
                view.setScreenReaderFocusable(bool.booleanValue());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: k */
            public boolean mo19140h(Boolean bool, Boolean bool2) {
                return !m19147a(bool, bool2);
            }
        };
    }

    @Nullable
    /* renamed from: n */
    private static View.AccessibilityDelegate m19184n(@NonNull View view) {
        if (f3283i) {
            return null;
        }
        if (f3282h == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f3282h = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable th) {
                f3283i = true;
                return null;
            }
        }
        try {
            Object obj = f3282h.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable th2) {
            f3283i = true;
            return null;
        }
    }

    /* renamed from: n0 */
    public static void m19183n0(@NonNull View view, AccessibilityDelegateCompat accessibilityDelegateCompat) {
        AccessibilityDelegateCompat accessibilityDelegateCompat2 = accessibilityDelegateCompat;
        if (accessibilityDelegateCompat == null) {
            accessibilityDelegateCompat2 = accessibilityDelegateCompat;
            if (m19186m(view) instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter) {
                accessibilityDelegateCompat2 = new AccessibilityDelegateCompat();
            }
        }
        view.setAccessibilityDelegate(accessibilityDelegateCompat2 == null ? null : accessibilityDelegateCompat2.getBridge());
    }

    /* renamed from: o */
    public static int m19182o(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.getAccessibilityLiveRegion();
        }
        return 0;
    }

    @UiThread
    /* renamed from: o0 */
    public static void m19181o0(View view, boolean z) {
        m19210a().m19141g(view, Boolean.valueOf(z));
    }

    @UiThread
    /* renamed from: p */
    public static CharSequence m19180p(View view) {
        return m19207b0().m19142f(view);
    }

    /* renamed from: p0 */
    public static void m19179p0(@NonNull View view, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setAccessibilityLiveRegion(i);
        }
    }

    /* renamed from: q */
    private static List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> m19178q(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(C0189R.C0192id.tag_accessibility_actions);
        ArrayList arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList();
            view.setTag(C0189R.C0192id.tag_accessibility_actions, arrayList2);
        }
        return arrayList2;
    }

    /* renamed from: q0 */
    public static void m19177q0(@NonNull View view, @Nullable Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    /* renamed from: r */
    public static ColorStateList m19176r(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintList();
        }
        return view instanceof TintableBackgroundView ? ((TintableBackgroundView) view).getSupportBackgroundTintList() : null;
    }

    /* renamed from: r0 */
    public static void m19175r0(@NonNull View view, ColorStateList colorStateList) {
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
        } else if (view instanceof TintableBackgroundView) {
            ((TintableBackgroundView) view).setSupportBackgroundTintList(colorStateList);
        }
    }

    /* renamed from: s */
    public static PorterDuff.Mode m19174s(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintMode();
        }
        return view instanceof TintableBackgroundView ? ((TintableBackgroundView) view).getSupportBackgroundTintMode() : null;
    }

    /* renamed from: s0 */
    public static void m19173s0(@NonNull View view, PorterDuff.Mode mode) {
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
        } else if (view instanceof TintableBackgroundView) {
            ((TintableBackgroundView) view).setSupportBackgroundTintMode(mode);
        }
    }

    @Nullable
    /* renamed from: t */
    public static Rect m19172t(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return view.getClipBounds();
        }
        return null;
    }

    /* renamed from: t0 */
    public static void m19171t0(@NonNull View view, Rect rect) {
        if (Build.VERSION.SDK_INT >= 18) {
            view.setClipBounds(rect);
        }
    }

    @Nullable
    /* renamed from: u */
    public static Display m19170u(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getDisplay();
        }
        if (m19219R(view)) {
            return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
        }
        return null;
    }

    /* renamed from: u0 */
    public static void m19169u0(@NonNull View view, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f);
        }
    }

    /* renamed from: v */
    public static float m19168v(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getElevation();
        }
        return 0.0f;
    }

    @Deprecated
    /* renamed from: v0 */
    public static void m19167v0(View view, boolean z) {
        view.setFitsSystemWindows(z);
    }

    /* renamed from: w */
    private static Rect m19166w() {
        if (f3284j == null) {
            f3284j = new ThreadLocal<>();
        }
        Rect rect = f3284j.get();
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
            f3284j.set(rect2);
        }
        rect2.setEmpty();
        return rect2;
    }

    /* renamed from: w0 */
    public static void m19165w0(@NonNull View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setHasTransientState(z);
        }
    }

    /* renamed from: x */
    public static boolean m19164x(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getFitsSystemWindows();
        }
        return false;
    }

    /* renamed from: x0 */
    public static void m19163x0(@NonNull View view, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            view.setImportantForAccessibility(i);
        } else if (i2 >= 16) {
            int i3 = i;
            if (i == 4) {
                i3 = 2;
            }
            view.setImportantForAccessibility(i3);
        }
    }

    /* renamed from: y */
    public static int m19162y(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getImportantForAccessibility();
        }
        return 0;
    }

    /* renamed from: y0 */
    public static void m19161y0(@NonNull View view, int i) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setImportantForAutofill(i);
        }
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: z */
    public static int m19160z(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return view.getImportantForAutofill();
        }
        return 0;
    }

    /* renamed from: z0 */
    public static void m19159z0(@NonNull View view, Paint paint) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setLayerPaint(paint);
            return;
        }
        view.setLayerType(view.getLayerType(), paint);
        view.invalidate();
    }
}
