package androidx.core.p037g.p038a;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.C0590a;
import androidx.core.p037g.p038a.AbstractC0703f;
import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.gms.ads.AdRequest;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.core.g.a.d */
/* loaded from: classes-dex2jar.jar:androidx/core/g/a/d.class */
public final class C0696d {

    /* renamed from: d */
    private static int f3021d;

    /* renamed from: b */
    private final AccessibilityNodeInfo f3023b;

    /* renamed from: a */
    public int f3022a = -1;

    /* renamed from: c */
    private int f3024c = -1;

    /* renamed from: androidx.core.g.a.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/a/d$a.class */
    public static final class C0697a {

        /* renamed from: A */
        public static final C0697a f3025A;

        /* renamed from: B */
        public static final C0697a f3026B;

        /* renamed from: C */
        public static final C0697a f3027C;

        /* renamed from: D */
        public static final C0697a f3028D;

        /* renamed from: E */
        public static final C0697a f3029E;

        /* renamed from: F */
        public static final C0697a f3030F;

        /* renamed from: G */
        public static final C0697a f3031G;

        /* renamed from: a */
        public static final C0697a f3032a = new C0697a(1);

        /* renamed from: b */
        public static final C0697a f3033b = new C0697a(2);

        /* renamed from: c */
        public static final C0697a f3034c = new C0697a(4);

        /* renamed from: d */
        public static final C0697a f3035d = new C0697a(8);

        /* renamed from: e */
        public static final C0697a f3036e = new C0697a(16);

        /* renamed from: f */
        public static final C0697a f3037f = new C0697a(32);

        /* renamed from: g */
        public static final C0697a f3038g = new C0697a(64);

        /* renamed from: h */
        public static final C0697a f3039h = new C0697a(128);

        /* renamed from: i */
        public static final C0697a f3040i = new C0697a(256, AbstractC0703f.C0705b.class);

        /* renamed from: j */
        public static final C0697a f3041j = new C0697a(AdRequest.MAX_CONTENT_URL_LENGTH, AbstractC0703f.C0705b.class);

        /* renamed from: k */
        public static final C0697a f3042k = new C0697a(1024, AbstractC0703f.C0706c.class);

        /* renamed from: l */
        public static final C0697a f3043l = new C0697a(2048, AbstractC0703f.C0706c.class);

        /* renamed from: m */
        public static final C0697a f3044m = new C0697a(CodedOutputStream.DEFAULT_BUFFER_SIZE);

        /* renamed from: n */
        public static final C0697a f3045n = new C0697a(8192);

        /* renamed from: o */
        public static final C0697a f3046o = new C0697a(16384);

        /* renamed from: p */
        public static final C0697a f3047p = new C0697a(32768);

        /* renamed from: q */
        public static final C0697a f3048q = new C0697a(65536);

        /* renamed from: r */
        public static final C0697a f3049r = new C0697a(131072, AbstractC0703f.C0710g.class);

        /* renamed from: s */
        public static final C0697a f3050s = new C0697a(262144);

        /* renamed from: t */
        public static final C0697a f3051t = new C0697a(524288);

        /* renamed from: u */
        public static final C0697a f3052u = new C0697a(1048576);

        /* renamed from: v */
        public static final C0697a f3053v = new C0697a(2097152, AbstractC0703f.C0711h.class);

        /* renamed from: w */
        public static final C0697a f3054w;

        /* renamed from: x */
        public static final C0697a f3055x;

        /* renamed from: y */
        public static final C0697a f3056y;

        /* renamed from: z */
        public static final C0697a f3057z;

        /* renamed from: H */
        final Object f3058H;

        /* renamed from: I */
        protected final AbstractC0703f f3059I;

        /* renamed from: J */
        private final int f3060J;

        /* renamed from: K */
        private final CharSequence f3061K;

        /* renamed from: L */
        private final Class<? extends AbstractC0703f.AbstractC0704a> f3062L;

        static {
            f3054w = new C0697a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, 16908342, null);
            f3055x = new C0697a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, 16908343, AbstractC0703f.C0708e.class);
            f3056y = new C0697a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, 16908344, null);
            f3057z = new C0697a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, 16908345, null);
            f3025A = new C0697a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, 16908346, null);
            f3026B = new C0697a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, 16908347, null);
            f3027C = new C0697a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, 16908348, null);
            f3028D = new C0697a(Build.VERSION.SDK_INT >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, 16908349, AbstractC0703f.C0709f.class);
            f3029E = new C0697a(Build.VERSION.SDK_INT >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, 16908354, AbstractC0703f.C0707d.class);
            f3030F = new C0697a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, 16908356, null);
            f3031G = new C0697a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, 16908357, null);
        }

        private C0697a(int i) {
            this(null, i, null);
        }

        private C0697a(int i, Class<? extends AbstractC0703f.AbstractC0704a> cls) {
            this(null, i, cls);
        }

        private C0697a(Object obj, int i, Class<? extends AbstractC0703f.AbstractC0704a> cls) {
            this.f3060J = i;
            this.f3061K = null;
            this.f3059I = null;
            Object obj2 = obj;
            if (Build.VERSION.SDK_INT >= 21) {
                obj2 = obj;
                if (obj == null) {
                    obj2 = new AccessibilityNodeInfo.AccessibilityAction(i, null);
                }
            }
            this.f3058H = obj2;
            this.f3062L = cls;
        }

        /* renamed from: a */
        public final int m8464a() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f3058H).getId();
            }
            return 0;
        }

        /* renamed from: a */
        public final boolean m8463a(Bundle bundle) {
            if (this.f3059I == null) {
                return false;
            }
            Class<? extends AbstractC0703f.AbstractC0704a> cls = this.f3062L;
            if (cls != null) {
                try {
                    ((AbstractC0703f.AbstractC0704a) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0])).f3068a = bundle;
                } catch (Exception e) {
                    Class<? extends AbstractC0703f.AbstractC0704a> cls2 = this.f3062L;
                    Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: ".concat(String.valueOf(cls2 == null ? "null" : cls2.getName())), e);
                }
            }
            return this.f3059I.m8454a();
        }
    }

    /* renamed from: androidx.core.g.a.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/a/d$b.class */
    public static final class C0698b {

        /* renamed from: a */
        final Object f3063a;

        private C0698b(Object obj) {
            this.f3063a = obj;
        }

        /* renamed from: a */
        public static C0698b m8462a(int i, int i2) {
            return Build.VERSION.SDK_INT >= 21 ? new C0698b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, false, 0)) : Build.VERSION.SDK_INT >= 19 ? new C0698b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, false)) : new C0698b(null);
        }
    }

    /* renamed from: androidx.core.g.a.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/a/d$c.class */
    public static final class C0699c {

        /* renamed from: a */
        final Object f3064a;

        C0699c(Object obj) {
            this.f3064a = obj;
        }

        /* renamed from: a */
        public static C0699c m8460a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return Build.VERSION.SDK_INT >= 21 ? new C0699c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2)) : Build.VERSION.SDK_INT >= 19 ? new C0699c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z)) : new C0699c(null);
        }

        /* renamed from: a */
        public final int m8461a() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f3064a).getColumnIndex();
            }
            return 0;
        }

        /* renamed from: b */
        public final int m8459b() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f3064a).getColumnSpan();
            }
            return 0;
        }

        /* renamed from: c */
        public final int m8458c() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f3064a).getRowIndex();
            }
            return 0;
        }

        /* renamed from: d */
        public final int m8457d() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f3064a).getRowSpan();
            }
            return 0;
        }

        /* renamed from: e */
        public final boolean m8456e() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f3064a).isSelected();
            }
            return false;
        }
    }

    private C0696d(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f3023b = accessibilityNodeInfo;
    }

    /* renamed from: a */
    private static int m8531a(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i = 0; i < sparseArray.size(); i++) {
                if (clickableSpan.equals(sparseArray.valueAt(i).get())) {
                    return sparseArray.keyAt(i);
                }
            }
        }
        int i2 = f3021d;
        f3021d = i2 + 1;
        return i2;
    }

    /* renamed from: a */
    public static C0696d m8530a(View view) {
        return m8528a(AccessibilityNodeInfo.obtain(view));
    }

    /* renamed from: a */
    public static C0696d m8528a(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new C0696d(accessibilityNodeInfo);
    }

    /* renamed from: a */
    public static C0696d m8526a(C0696d dVar) {
        return m8528a(AccessibilityNodeInfo.obtain(dVar.f3023b));
    }

    /* renamed from: a */
    private List<Integer> m8522a(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.f3023b.getExtras().getIntegerArrayList(str);
        ArrayList<Integer> arrayList = integerArrayList;
        if (integerArrayList == null) {
            arrayList = new ArrayList<>();
            this.f3023b.getExtras().putIntegerArrayList(str, arrayList);
        }
        return arrayList;
    }

    /* renamed from: a */
    private void m8533a(int i, boolean z) {
        Bundle y = m8465y();
        if (y != null) {
            y.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", (z ? i : 0) | (y.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i ^ (-1))));
        }
    }

    /* renamed from: b */
    public static C0696d m8520b() {
        return m8528a(AccessibilityNodeInfo.obtain());
    }

    /* renamed from: d */
    public static ClickableSpan[] m8503d(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    /* renamed from: f */
    private static SparseArray<WeakReference<ClickableSpan>> m8496f(View view) {
        return (SparseArray) view.getTag(C0590a.C0592b.f2694I);
    }

    /* renamed from: y */
    private Bundle m8465y() {
        return Build.VERSION.SDK_INT >= 19 ? this.f3023b.getExtras() : new Bundle();
    }

    /* renamed from: a */
    public final AccessibilityNodeInfo m8536a() {
        return this.f3023b;
    }

    /* renamed from: a */
    public final void m8535a(int i) {
        this.f3023b.addAction(i);
    }

    /* renamed from: a */
    public final void m8532a(Rect rect) {
        this.f3023b.getBoundsInParent(rect);
    }

    /* renamed from: a */
    public final void m8529a(View view, int i) {
        this.f3024c = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3023b.setSource(view, i);
        }
    }

    /* renamed from: a */
    public final void m8527a(C0697a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f3023b.addAction((AccessibilityNodeInfo.AccessibilityAction) aVar.f3058H);
        }
    }

    /* renamed from: a */
    public final void m8525a(CharSequence charSequence) {
        this.f3023b.setPackageName(charSequence);
    }

    /* renamed from: a */
    public final void m8524a(CharSequence charSequence, View view) {
        if (Build.VERSION.SDK_INT >= 19 && Build.VERSION.SDK_INT < 26) {
            if (Build.VERSION.SDK_INT >= 19) {
                this.f3023b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
                this.f3023b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
                this.f3023b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
                this.f3023b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            }
            SparseArray<WeakReference<ClickableSpan>> f = m8496f(view);
            if (f != null) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < f.size(); i++) {
                    if (f.valueAt(i).get() == null) {
                        arrayList.add(Integer.valueOf(i));
                    }
                }
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    f.remove(((Integer) arrayList.get(i2)).intValue());
                }
            }
            ClickableSpan[] d = m8503d(charSequence);
            if (d != null && d.length > 0) {
                m8465y().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", C0590a.C0592b.f2701a);
                SparseArray<WeakReference<ClickableSpan>> f2 = m8496f(view);
                int i3 = 0;
                SparseArray<WeakReference<ClickableSpan>> sparseArray = f2;
                if (f2 == null) {
                    sparseArray = new SparseArray<>();
                    view.setTag(C0590a.C0592b.f2694I, sparseArray);
                    i3 = 0;
                }
                while (d != null && i3 < d.length) {
                    int a = m8531a(d[i3], sparseArray);
                    sparseArray.put(a, new WeakReference<>(d[i3]));
                    ClickableSpan clickableSpan = d[i3];
                    Spanned spanned = (Spanned) charSequence;
                    m8522a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
                    m8522a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
                    m8522a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
                    m8522a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(a));
                    i3++;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m8523a(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3023b.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((C0698b) obj).f3063a);
        }
    }

    /* renamed from: a */
    public final void m8521a(boolean z) {
        this.f3023b.setCheckable(z);
    }

    /* renamed from: a */
    public final boolean m8534a(int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f3023b.performAction(i, bundle);
        }
        return false;
    }

    /* renamed from: b */
    public final void m8519b(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3023b.setMovementGranularities(i);
        }
    }

    /* renamed from: b */
    public final void m8518b(Rect rect) {
        this.f3023b.setBoundsInParent(rect);
    }

    /* renamed from: b */
    public final void m8517b(View view) {
        this.f3024c = -1;
        this.f3023b.setSource(view);
    }

    /* renamed from: b */
    public final void m8516b(View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3023b.addChild(view, i);
        }
    }

    /* renamed from: b */
    public final void m8514b(CharSequence charSequence) {
        this.f3023b.setClassName(charSequence);
    }

    /* renamed from: b */
    public final void m8513b(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3023b.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((C0699c) obj).f3064a);
        }
    }

    /* renamed from: b */
    public final void m8512b(boolean z) {
        this.f3023b.setChecked(z);
    }

    /* renamed from: b */
    public final boolean m8515b(C0697a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.f3023b.removeAction((AccessibilityNodeInfo.AccessibilityAction) aVar.f3058H);
        }
        return false;
    }

    /* renamed from: c */
    public final int m8511c() {
        return this.f3023b.getChildCount();
    }

    /* renamed from: c */
    public final void m8510c(Rect rect) {
        this.f3023b.getBoundsInScreen(rect);
    }

    /* renamed from: c */
    public final void m8509c(View view) {
        this.f3023b.addChild(view);
    }

    /* renamed from: c */
    public final void m8508c(CharSequence charSequence) {
        this.f3023b.setText(charSequence);
    }

    /* renamed from: c */
    public final void m8507c(boolean z) {
        this.f3023b.setFocusable(z);
    }

    /* renamed from: d */
    public final int m8506d() {
        return this.f3023b.getActions();
    }

    /* renamed from: d */
    public final void m8505d(Rect rect) {
        this.f3023b.setBoundsInScreen(rect);
    }

    /* renamed from: d */
    public final void m8504d(View view) {
        this.f3022a = -1;
        this.f3023b.setParent(view);
    }

    /* renamed from: d */
    public final void m8502d(boolean z) {
        this.f3023b.setFocused(z);
    }

    /* renamed from: e */
    public final int m8501e() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f3023b.getMovementGranularities();
        }
        return 0;
    }

    /* renamed from: e */
    public final void m8500e(View view) {
        this.f3022a = -1;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3023b.setParent(view, -1);
        }
    }

    /* renamed from: e */
    public final void m8499e(CharSequence charSequence) {
        this.f3023b.setContentDescription(charSequence);
    }

    /* renamed from: e */
    public final void m8498e(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3023b.setVisibleToUser(z);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0696d dVar = (C0696d) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f3023b;
        if (accessibilityNodeInfo == null) {
            if (dVar.f3023b != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(dVar.f3023b)) {
            return false;
        }
        return this.f3024c == dVar.f3024c && this.f3022a == dVar.f3022a;
    }

    /* renamed from: f */
    public final void m8495f(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f3023b.setHintText(charSequence);
        } else if (Build.VERSION.SDK_INT >= 19) {
            this.f3023b.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    /* renamed from: f */
    public final void m8494f(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3023b.setAccessibilityFocused(z);
        }
    }

    /* renamed from: f */
    public final boolean m8497f() {
        return this.f3023b.isChecked();
    }

    /* renamed from: g */
    public final void m8492g(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f3023b.setError(charSequence);
        }
    }

    /* renamed from: g */
    public final void m8491g(boolean z) {
        this.f3023b.setSelected(z);
    }

    /* renamed from: g */
    public final boolean m8493g() {
        return this.f3023b.isFocusable();
    }

    /* renamed from: h */
    public final void m8489h(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f3023b.setPaneTitle(charSequence);
        } else if (Build.VERSION.SDK_INT >= 19) {
            this.f3023b.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    /* renamed from: h */
    public final void m8488h(boolean z) {
        this.f3023b.setClickable(z);
    }

    /* renamed from: h */
    public final boolean m8490h() {
        return this.f3023b.isFocused();
    }

    public final int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f3023b;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    /* renamed from: i */
    public final void m8486i(boolean z) {
        this.f3023b.setLongClickable(z);
    }

    /* renamed from: i */
    public final boolean m8487i() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f3023b.isVisibleToUser();
        }
        return false;
    }

    /* renamed from: j */
    public final void m8484j(boolean z) {
        this.f3023b.setEnabled(z);
    }

    /* renamed from: j */
    public final boolean m8485j() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f3023b.isAccessibilityFocused();
        }
        return false;
    }

    /* renamed from: k */
    public final void m8482k(boolean z) {
        this.f3023b.setScrollable(z);
    }

    /* renamed from: k */
    public final boolean m8483k() {
        return this.f3023b.isSelected();
    }

    /* renamed from: l */
    public final void m8480l(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f3023b.setScreenReaderFocusable(z);
        } else {
            m8533a(1, z);
        }
    }

    /* renamed from: l */
    public final boolean m8481l() {
        return this.f3023b.isClickable();
    }

    /* renamed from: m */
    public final void m8478m(boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f3023b.setShowingHintText(z);
        } else {
            m8533a(4, z);
        }
    }

    /* renamed from: m */
    public final boolean m8479m() {
        return this.f3023b.isLongClickable();
    }

    /* renamed from: n */
    public final void m8476n(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f3023b.setHeading(z);
        } else {
            m8533a(2, z);
        }
    }

    /* renamed from: n */
    public final boolean m8477n() {
        return this.f3023b.isEnabled();
    }

    /* renamed from: o */
    public final boolean m8475o() {
        return this.f3023b.isPassword();
    }

    /* renamed from: p */
    public final boolean m8474p() {
        return this.f3023b.isScrollable();
    }

    /* renamed from: q */
    public final CharSequence m8473q() {
        return this.f3023b.getPackageName();
    }

    /* renamed from: r */
    public final CharSequence m8472r() {
        return this.f3023b.getClassName();
    }

    /* renamed from: s */
    public final CharSequence m8471s() {
        if (!(!m8522a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty())) {
            return this.f3023b.getText();
        }
        List<Integer> a = m8522a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        List<Integer> a2 = m8522a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        List<Integer> a3 = m8522a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        List<Integer> a4 = m8522a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(this.f3023b.getText(), 0, this.f3023b.getText().length()));
        for (int i = 0; i < a.size(); i++) {
            spannableString.setSpan(new C0691a(a4.get(i).intValue(), this, m8465y().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), a.get(i).intValue(), a2.get(i).intValue(), a3.get(i).intValue());
        }
        return spannableString;
    }

    /* renamed from: t */
    public final CharSequence m8470t() {
        return this.f3023b.getContentDescription();
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        m8532a(rect);
        sb.append("; boundsInParent: ".concat(String.valueOf(rect)));
        m8510c(rect);
        sb.append("; boundsInScreen: ".concat(String.valueOf(rect)));
        sb.append("; packageName: ");
        sb.append(this.f3023b.getPackageName());
        sb.append("; className: ");
        sb.append(this.f3023b.getClassName());
        sb.append("; text: ");
        sb.append(m8471s());
        sb.append("; contentDescription: ");
        sb.append(this.f3023b.getContentDescription());
        sb.append("; viewId: ");
        sb.append(Build.VERSION.SDK_INT >= 18 ? this.f3023b.getViewIdResourceName() : null);
        sb.append("; checkable: ");
        sb.append(this.f3023b.isCheckable());
        sb.append("; checked: ");
        sb.append(this.f3023b.isChecked());
        sb.append("; focusable: ");
        sb.append(this.f3023b.isFocusable());
        sb.append("; focused: ");
        sb.append(this.f3023b.isFocused());
        sb.append("; selected: ");
        sb.append(this.f3023b.isSelected());
        sb.append("; clickable: ");
        sb.append(this.f3023b.isClickable());
        sb.append("; longClickable: ");
        sb.append(this.f3023b.isLongClickable());
        sb.append("; enabled: ");
        sb.append(this.f3023b.isEnabled());
        sb.append("; password: ");
        sb.append(this.f3023b.isPassword());
        sb.append("; scrollable: " + this.f3023b.isScrollable());
        sb.append("; [");
        int actions = this.f3023b.getActions();
        while (actions != 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(actions);
            int i = actions & (numberOfTrailingZeros ^ (-1));
            if (numberOfTrailingZeros == 1) {
                str = "ACTION_FOCUS";
            } else if (numberOfTrailingZeros != 2) {
                switch (numberOfTrailingZeros) {
                    case 4:
                        str = "ACTION_SELECT";
                        break;
                    case 8:
                        str = "ACTION_CLEAR_SELECTION";
                        break;
                    case 16:
                        str = "ACTION_CLICK";
                        break;
                    case 32:
                        str = "ACTION_LONG_CLICK";
                        break;
                    case 64:
                        str = "ACTION_ACCESSIBILITY_FOCUS";
                        break;
                    case 128:
                        str = "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
                        break;
                    case 256:
                        str = "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
                        break;
                    case AdRequest.MAX_CONTENT_URL_LENGTH /* 512 */:
                        str = "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
                        break;
                    case 1024:
                        str = "ACTION_NEXT_HTML_ELEMENT";
                        break;
                    case 2048:
                        str = "ACTION_PREVIOUS_HTML_ELEMENT";
                        break;
                    case CodedOutputStream.DEFAULT_BUFFER_SIZE /* 4096 */:
                        str = "ACTION_SCROLL_FORWARD";
                        break;
                    case 8192:
                        str = "ACTION_SCROLL_BACKWARD";
                        break;
                    case 16384:
                        str = "ACTION_COPY";
                        break;
                    case 32768:
                        str = "ACTION_PASTE";
                        break;
                    case 65536:
                        str = "ACTION_CUT";
                        break;
                    case 131072:
                        str = "ACTION_SET_SELECTION";
                        break;
                    default:
                        str = "ACTION_UNKNOWN";
                        break;
                }
            } else {
                str = "ACTION_CLEAR_FOCUS";
            }
            sb.append(str);
            actions = i;
            if (i != 0) {
                sb.append(", ");
                actions = i;
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: u */
    public final void m8469u() {
        this.f3023b.recycle();
    }

    /* renamed from: v */
    public final C0699c m8468v() {
        AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo;
        if (Build.VERSION.SDK_INT < 19 || (collectionItemInfo = this.f3023b.getCollectionItemInfo()) == null) {
            return null;
        }
        return new C0699c(collectionItemInfo);
    }

    /* renamed from: w */
    public final void m8467w() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3023b.setContentInvalid(true);
        }
    }

    /* renamed from: x */
    public final void m8466x() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3023b.setCanOpenPopup(true);
        }
    }
}
