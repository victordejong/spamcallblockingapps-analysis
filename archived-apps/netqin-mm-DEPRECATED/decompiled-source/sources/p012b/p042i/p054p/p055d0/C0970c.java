package p012b.p042i.p054p.p055d0;

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
import androidx.recyclerview.widget.RecyclerView;
import com.google.common.collect.MapMakerInternalMap;
import com.google.common.collect.RegularImmutableMap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p012b.p042i.C0834d;
import p012b.p042i.p054p.p055d0.AbstractC0976f;
/* renamed from: b.i.p.d0.c */
/* loaded from: classes-dex2jar.jar:b/i/p/d0/c.class */
public class C0970c {

    /* renamed from: d */
    public static int f4220d;

    /* renamed from: a */
    public final AccessibilityNodeInfo f4221a;

    /* renamed from: b */
    public int f4222b = -1;

    /* renamed from: c */
    public int f4223c = -1;

    /* renamed from: b.i.p.d0.c$a */
    /* loaded from: classes-dex2jar.jar:b/i/p/d0/c$a.class */
    public static class C0971a {

        /* renamed from: d */
        public static final C0971a f4224d = new C0971a(1, null);

        /* renamed from: e */
        public static final C0971a f4225e = new C0971a(2, null);

        /* renamed from: f */
        public static final C0971a f4226f = new C0971a(4096, null);

        /* renamed from: g */
        public static final C0971a f4227g = new C0971a(8192, null);

        /* renamed from: h */
        public static final C0971a f4228h;

        /* renamed from: i */
        public static final C0971a f4229i;

        /* renamed from: a */
        public final Object f4230a;

        /* renamed from: b */
        public final Class<? extends AbstractC0976f.AbstractC0977a> f4231b;

        /* renamed from: c */
        public final AbstractC0976f f4232c;

        static {
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction = null;
            new C0971a(4, null);
            new C0971a(8, null);
            new C0971a(16, null);
            new C0971a(32, null);
            new C0971a(64, null);
            new C0971a(128, null);
            new C0971a(256, null, AbstractC0976f.C0978b.class);
            new C0971a(RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN, null, AbstractC0976f.C0978b.class);
            new C0971a(1024, null, AbstractC0976f.C0979c.class);
            new C0971a(RecyclerView.AbstractC0495b0.FLAG_MOVED, null, AbstractC0976f.C0979c.class);
            new C0971a(16384, null);
            new C0971a(RegularImmutableMap.SHORT_MAX_SIZE, null);
            new C0971a(MapMakerInternalMap.MAX_SEGMENTS, null);
            new C0971a(131072, null, AbstractC0976f.C0983g.class);
            new C0971a(262144, null);
            new C0971a(524288, null);
            new C0971a(1048576, null);
            new C0971a(2097152, null, AbstractC0976f.C0984h.class);
            new C0971a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, 16908342, null, null, null);
            new C0971a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, 16908343, null, null, AbstractC0976f.C0981e.class);
            f4228h = new C0971a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, 16908344, null, null, null);
            new C0971a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, 16908345, null, null, null);
            f4229i = new C0971a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, 16908346, null, null, null);
            new C0971a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, 16908347, null, null, null);
            new C0971a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, 16908358, null, null, null);
            new C0971a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, 16908359, null, null, null);
            new C0971a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, 16908360, null, null, null);
            new C0971a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, 16908361, null, null, null);
            new C0971a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, 16908348, null, null, null);
            new C0971a(Build.VERSION.SDK_INT >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, 16908349, null, null, AbstractC0976f.C0982f.class);
            new C0971a(Build.VERSION.SDK_INT >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, 16908354, null, null, AbstractC0976f.C0980d.class);
            new C0971a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, 16908356, null, null, null);
            if (Build.VERSION.SDK_INT >= 28) {
                accessibilityAction = AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP;
            }
            new C0971a(accessibilityAction, 16908357, null, null, null);
        }

        public C0971a(int i, CharSequence charSequence) {
            this(null, i, charSequence, null, null);
        }

        public C0971a(int i, CharSequence charSequence, Class<? extends AbstractC0976f.AbstractC0977a> cls) {
            this(null, i, charSequence, null, cls);
        }

        public C0971a(Object obj) {
            this(obj, 0, null, null, null);
        }

        public C0971a(Object obj, int i, CharSequence charSequence, AbstractC0976f fVar, Class<? extends AbstractC0976f.AbstractC0977a> cls) {
            this.f4232c = fVar;
            if (Build.VERSION.SDK_INT < 21 || obj != null) {
                this.f4230a = obj;
            } else {
                this.f4230a = new AccessibilityNodeInfo.AccessibilityAction(i, charSequence);
            }
            this.f4231b = cls;
        }

        /* renamed from: a */
        public int m35317a() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f4230a).getId();
            }
            return 0;
        }

        /* renamed from: a */
        public boolean m35316a(View view, Bundle bundle) {
            Exception e;
            if (this.f4232c == null) {
                return false;
            }
            AbstractC0976f.AbstractC0977a aVar = null;
            aVar = null;
            Class<? extends AbstractC0976f.AbstractC0977a> cls = this.f4231b;
            if (cls != null) {
                try {
                    aVar = (AbstractC0976f.AbstractC0977a) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Exception e2) {
                    e = e2;
                }
                try {
                    aVar.m35308a(bundle);
                } catch (Exception e3) {
                    e = e3;
                    aVar = aVar;
                    Class<? extends AbstractC0976f.AbstractC0977a> cls2 = this.f4231b;
                    String name = cls2 == null ? "null" : cls2.getName();
                    Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: " + name, e);
                    return this.f4232c.m35309a(view, aVar);
                }
            }
            return this.f4232c.m35309a(view, aVar);
        }

        /* renamed from: b */
        public CharSequence m35315b() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f4230a).getLabel();
            }
            return null;
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof C0971a)) {
                return false;
            }
            C0971a aVar = (C0971a) obj;
            Object obj2 = this.f4230a;
            return obj2 == null ? aVar.f4230a == null : obj2.equals(aVar.f4230a);
        }

        public int hashCode() {
            Object obj = this.f4230a;
            return obj != null ? obj.hashCode() : 0;
        }
    }

    /* renamed from: b.i.p.d0.c$b */
    /* loaded from: classes-dex2jar.jar:b/i/p/d0/c$b.class */
    public static class C0972b {

        /* renamed from: a */
        public final Object f4233a;

        public C0972b(Object obj) {
            this.f4233a = obj;
        }

        /* renamed from: a */
        public static C0972b m35314a(int i, int i2, boolean z, int i3) {
            int i4 = Build.VERSION.SDK_INT;
            return i4 >= 21 ? new C0972b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3)) : i4 >= 19 ? new C0972b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z)) : new C0972b(null);
        }
    }

    /* renamed from: b.i.p.d0.c$c */
    /* loaded from: classes-dex2jar.jar:b/i/p/d0/c$c.class */
    public static class C0973c {

        /* renamed from: a */
        public final Object f4234a;

        public C0973c(Object obj) {
            this.f4234a = obj;
        }

        /* renamed from: a */
        public static C0973c m35313a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            int i5 = Build.VERSION.SDK_INT;
            return i5 >= 21 ? new C0973c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2)) : i5 >= 19 ? new C0973c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z)) : new C0973c(null);
        }
    }

    public C0970c(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f4221a = accessibilityNodeInfo;
    }

    /* renamed from: a */
    public static C0970c m35376a(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new C0970c(accessibilityNodeInfo);
    }

    /* renamed from: a */
    public static C0970c m35374a(C0970c cVar) {
        return m35376a(AccessibilityNodeInfo.obtain(cVar.f4221a));
    }

    /* renamed from: c */
    public static String m35359c(int i) {
        if (i == 1) {
            return "ACTION_FOCUS";
        }
        if (i == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN /* 512 */:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case RecyclerView.AbstractC0495b0.FLAG_MOVED /* 2048 */:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case RegularImmutableMap.SHORT_MAX_SIZE /* 32768 */:
                return "ACTION_PASTE";
            case MapMakerInternalMap.MAX_SEGMENTS /* 65536 */:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case 524288:
                return "ACTION_COLLAPSE";
            case 2097152:
                return "ACTION_SET_TEXT";
            case 16908354:
                return "ACTION_MOVE_WINDOW";
            default:
                switch (i) {
                    case 16908342:
                        return "ACTION_SHOW_ON_SCREEN";
                    case 16908343:
                        return "ACTION_SCROLL_TO_POSITION";
                    case 16908344:
                        return "ACTION_SCROLL_UP";
                    case 16908345:
                        return "ACTION_SCROLL_LEFT";
                    case 16908346:
                        return "ACTION_SCROLL_DOWN";
                    case 16908347:
                        return "ACTION_SCROLL_RIGHT";
                    case 16908348:
                        return "ACTION_CONTEXT_CLICK";
                    case 16908349:
                        return "ACTION_SET_PROGRESS";
                    default:
                        switch (i) {
                            case 16908356:
                                return "ACTION_SHOW_TOOLTIP";
                            case 16908357:
                                return "ACTION_HIDE_TOOLTIP";
                            case 16908358:
                                return "ACTION_PAGE_UP";
                            case 16908359:
                                return "ACTION_PAGE_DOWN";
                            case 16908360:
                                return "ACTION_PAGE_LEFT";
                            case 16908361:
                                return "ACTION_PAGE_RIGHT";
                            default:
                                return "ACTION_UNKNOWN";
                        }
                }
        }
    }

    /* renamed from: e */
    public static ClickableSpan[] m35347e(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    /* renamed from: a */
    public final int m35378a(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i = 0; i < sparseArray.size(); i++) {
                if (clickableSpan.equals(sparseArray.valueAt(i).get())) {
                    return sparseArray.keyAt(i);
                }
            }
        }
        int i2 = f4220d;
        f4220d = i2 + 1;
        return i2;
    }

    /* renamed from: a */
    public final List<Integer> m35370a(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.f4221a.getExtras().getIntegerArrayList(str);
        ArrayList<Integer> arrayList = integerArrayList;
        if (integerArrayList == null) {
            arrayList = new ArrayList<>();
            this.f4221a.getExtras().putIntegerArrayList(str, arrayList);
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m35384a() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f4221a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            this.f4221a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            this.f4221a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            this.f4221a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        }
    }

    /* renamed from: a */
    public void m35383a(int i) {
        this.f4221a.addAction(i);
    }

    /* renamed from: a */
    public final void m35381a(int i, boolean z) {
        Bundle f = m35345f();
        if (f != null) {
            f.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", (z ? i : 0) | (f.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i ^ (-1))));
        }
    }

    @Deprecated
    /* renamed from: a */
    public void m35380a(Rect rect) {
        this.f4221a.getBoundsInParent(rect);
    }

    /* renamed from: a */
    public final void m35379a(ClickableSpan clickableSpan, Spanned spanned, int i) {
        m35370a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        m35370a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        m35370a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        m35370a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i));
    }

    /* renamed from: a */
    public void m35377a(View view) {
        this.f4221a.addChild(view);
    }

    /* renamed from: a */
    public void m35375a(C0971a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f4221a.addAction((AccessibilityNodeInfo.AccessibilityAction) aVar.f4230a);
        }
    }

    /* renamed from: a */
    public void m35373a(CharSequence charSequence) {
        this.f4221a.setClassName(charSequence);
    }

    /* renamed from: a */
    public void m35372a(CharSequence charSequence, View view) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19 && i < 26) {
            m35384a();
            m35352d(view);
            ClickableSpan[] e = m35347e(charSequence);
            if (e != null && e.length > 0) {
                m35345f().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", C0834d.accessibility_action_clickable_span);
                SparseArray<WeakReference<ClickableSpan>> b = m35365b(view);
                for (int i2 = 0; e != null && i2 < e.length; i2++) {
                    int a = m35378a(e[i2], b);
                    b.put(a, new WeakReference<>(e[i2]));
                    m35379a(e[i2], (Spanned) charSequence, a);
                }
            }
        }
    }

    /* renamed from: a */
    public void m35371a(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f4221a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((C0972b) obj).f4233a);
        }
    }

    /* renamed from: a */
    public void m35369a(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f4221a.setAccessibilityFocused(z);
        }
    }

    /* renamed from: a */
    public boolean m35382a(int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f4221a.performAction(i, bundle);
        }
        return false;
    }

    /* renamed from: b */
    public final SparseArray<WeakReference<ClickableSpan>> m35365b(View view) {
        SparseArray<WeakReference<ClickableSpan>> c = m35357c(view);
        SparseArray<WeakReference<ClickableSpan>> sparseArray = c;
        if (c == null) {
            sparseArray = new SparseArray<>();
            view.setTag(C0834d.tag_accessibility_clickable_spans, sparseArray);
        }
        return sparseArray;
    }

    /* renamed from: b */
    public List<C0971a> m35368b() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = Build.VERSION.SDK_INT >= 21 ? this.f4221a.getActionList() : null;
        if (actionList == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = actionList.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(new C0971a(actionList.get(i)));
        }
        return arrayList;
    }

    /* renamed from: b */
    public void m35367b(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f4221a.setMovementGranularities(i);
        }
    }

    /* renamed from: b */
    public void m35366b(Rect rect) {
        this.f4221a.getBoundsInScreen(rect);
    }

    /* renamed from: b */
    public void m35363b(CharSequence charSequence) {
        this.f4221a.setContentDescription(charSequence);
    }

    /* renamed from: b */
    public void m35362b(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f4221a.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((C0973c) obj).f4234a);
        }
    }

    /* renamed from: b */
    public void m35361b(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f4221a.setCanOpenPopup(z);
        }
    }

    /* renamed from: b */
    public boolean m35364b(C0971a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.f4221a.removeAction((AccessibilityNodeInfo.AccessibilityAction) aVar.f4230a);
        }
        return false;
    }

    /* renamed from: c */
    public int m35360c() {
        return this.f4221a.getActions();
    }

    /* renamed from: c */
    public final SparseArray<WeakReference<ClickableSpan>> m35357c(View view) {
        return (SparseArray) view.getTag(C0834d.tag_accessibility_clickable_spans);
    }

    @Deprecated
    /* renamed from: c */
    public void m35358c(Rect rect) {
        this.f4221a.setBoundsInParent(rect);
    }

    /* renamed from: c */
    public void m35356c(CharSequence charSequence) {
        this.f4221a.setPackageName(charSequence);
    }

    /* renamed from: c */
    public void m35355c(boolean z) {
        this.f4221a.setClickable(z);
    }

    /* renamed from: d */
    public CharSequence m35354d() {
        return this.f4221a.getClassName();
    }

    /* renamed from: d */
    public void m35353d(Rect rect) {
        this.f4221a.setBoundsInScreen(rect);
    }

    /* renamed from: d */
    public final void m35352d(View view) {
        SparseArray<WeakReference<ClickableSpan>> c = m35357c(view);
        if (c != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < c.size(); i++) {
                if (c.valueAt(i).get() == null) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                c.remove(((Integer) arrayList.get(i2)).intValue());
            }
        }
    }

    /* renamed from: d */
    public void m35351d(CharSequence charSequence) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.f4221a.setPaneTitle(charSequence);
        } else if (i >= 19) {
            this.f4221a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    /* renamed from: d */
    public void m35350d(boolean z) {
        this.f4221a.setEnabled(z);
    }

    /* renamed from: e */
    public CharSequence m35349e() {
        return this.f4221a.getContentDescription();
    }

    /* renamed from: e */
    public void m35348e(View view) {
        this.f4222b = -1;
        this.f4221a.setParent(view);
    }

    /* renamed from: e */
    public void m35346e(boolean z) {
        this.f4221a.setFocusable(z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C0970c)) {
            return false;
        }
        C0970c cVar = (C0970c) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f4221a;
        if (accessibilityNodeInfo == null) {
            if (cVar.f4221a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(cVar.f4221a)) {
            return false;
        }
        return this.f4223c == cVar.f4223c && this.f4222b == cVar.f4222b;
    }

    /* renamed from: f */
    public Bundle m35345f() {
        return Build.VERSION.SDK_INT >= 19 ? this.f4221a.getExtras() : new Bundle();
    }

    /* renamed from: f */
    public void m35344f(View view) {
        this.f4223c = -1;
        this.f4221a.setSource(view);
    }

    /* renamed from: f */
    public void m35343f(boolean z) {
        this.f4221a.setFocused(z);
    }

    /* renamed from: g */
    public int m35342g() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f4221a.getMovementGranularities();
        }
        return 0;
    }

    /* renamed from: g */
    public void m35341g(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f4221a.setHeading(z);
        } else {
            m35381a(2, z);
        }
    }

    /* renamed from: h */
    public CharSequence m35340h() {
        return this.f4221a.getPackageName();
    }

    /* renamed from: h */
    public void m35339h(boolean z) {
        this.f4221a.setLongClickable(z);
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f4221a;
        return accessibilityNodeInfo == null ? 0 : accessibilityNodeInfo.hashCode();
    }

    /* renamed from: i */
    public CharSequence m35338i() {
        if (!m35334k()) {
            return this.f4221a.getText();
        }
        List<Integer> a = m35370a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        List<Integer> a2 = m35370a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        List<Integer> a3 = m35370a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        List<Integer> a4 = m35370a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(this.f4221a.getText(), 0, this.f4221a.getText().length()));
        for (int i = 0; i < a.size(); i++) {
            spannableString.setSpan(new C0968a(a4.get(i).intValue(), this, m35345f().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), a.get(i).intValue(), a2.get(i).intValue(), a3.get(i).intValue());
        }
        return spannableString;
    }

    /* renamed from: i */
    public void m35337i(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f4221a.setScreenReaderFocusable(z);
        } else {
            m35381a(1, z);
        }
    }

    /* renamed from: j */
    public String m35336j() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f4221a.getViewIdResourceName();
        }
        return null;
    }

    /* renamed from: j */
    public void m35335j(boolean z) {
        this.f4221a.setScrollable(z);
    }

    /* renamed from: k */
    public void m35333k(boolean z) {
        this.f4221a.setSelected(z);
    }

    /* renamed from: k */
    public final boolean m35334k() {
        return !m35370a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
    }

    /* renamed from: l */
    public void m35331l(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f4221a.setVisibleToUser(z);
        }
    }

    /* renamed from: l */
    public boolean m35332l() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f4221a.isAccessibilityFocused();
        }
        return false;
    }

    /* renamed from: m */
    public boolean m35330m() {
        return this.f4221a.isCheckable();
    }

    /* renamed from: n */
    public boolean m35329n() {
        return this.f4221a.isChecked();
    }

    /* renamed from: o */
    public boolean m35328o() {
        return this.f4221a.isClickable();
    }

    /* renamed from: p */
    public boolean m35327p() {
        return this.f4221a.isEnabled();
    }

    /* renamed from: q */
    public boolean m35326q() {
        return this.f4221a.isFocusable();
    }

    /* renamed from: r */
    public boolean m35325r() {
        return this.f4221a.isFocused();
    }

    /* renamed from: s */
    public boolean m35324s() {
        return this.f4221a.isLongClickable();
    }

    /* renamed from: t */
    public boolean m35323t() {
        return this.f4221a.isPassword();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        m35380a(rect);
        sb.append("; boundsInParent: " + rect);
        m35366b(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(m35340h());
        sb.append("; className: ");
        sb.append(m35354d());
        sb.append("; text: ");
        sb.append(m35338i());
        sb.append("; contentDescription: ");
        sb.append(m35349e());
        sb.append("; viewId: ");
        sb.append(m35336j());
        sb.append("; checkable: ");
        sb.append(m35330m());
        sb.append("; checked: ");
        sb.append(m35329n());
        sb.append("; focusable: ");
        sb.append(m35326q());
        sb.append("; focused: ");
        sb.append(m35325r());
        sb.append("; selected: ");
        sb.append(m35321v());
        sb.append("; clickable: ");
        sb.append(m35328o());
        sb.append("; longClickable: ");
        sb.append(m35324s());
        sb.append("; enabled: ");
        sb.append(m35327p());
        sb.append("; password: ");
        sb.append(m35323t());
        sb.append("; scrollable: " + m35322u());
        sb.append("; [");
        if (Build.VERSION.SDK_INT >= 21) {
            List<C0971a> b = m35368b();
            for (int i = 0; i < b.size(); i++) {
                C0971a aVar = b.get(i);
                String c = m35359c(aVar.m35317a());
                String str = c;
                if (c.equals("ACTION_UNKNOWN")) {
                    str = c;
                    if (aVar.m35315b() != null) {
                        str = aVar.m35315b().toString();
                    }
                }
                sb.append(str);
                if (i != b.size() - 1) {
                    sb.append(", ");
                }
            }
        } else {
            int c2 = m35360c();
            while (c2 != 0) {
                int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(c2);
                int i2 = c2 & (numberOfTrailingZeros ^ (-1));
                sb.append(m35359c(numberOfTrailingZeros));
                c2 = i2;
                if (i2 != 0) {
                    sb.append(", ");
                    c2 = i2;
                }
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: u */
    public boolean m35322u() {
        return this.f4221a.isScrollable();
    }

    /* renamed from: v */
    public boolean m35321v() {
        return this.f4221a.isSelected();
    }

    /* renamed from: w */
    public boolean m35320w() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f4221a.isVisibleToUser();
        }
        return false;
    }

    /* renamed from: x */
    public void m35319x() {
        this.f4221a.recycle();
    }

    /* renamed from: y */
    public AccessibilityNodeInfo m35318y() {
        return this.f4221a;
    }
}
