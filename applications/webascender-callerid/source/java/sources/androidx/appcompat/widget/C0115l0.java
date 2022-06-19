package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.content.C0203a;
import androidx.core.graphics.drawable.C0222a;
import f.a.m.a;
import f.e.d;
import f.e.g;
import f.e.h;
import f.w.a.a.i;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.appcompat.widget.l0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/l0.class */
public final class C0115l0 {

    /* renamed from: i */
    private static C0115l0 f516i;

    /* renamed from: a */
    private WeakHashMap<Context, h<ColorStateList>> f518a;

    /* renamed from: b */
    private g<String, AbstractC0116d> f519b;

    /* renamed from: c */
    private h<String> f520c;

    /* renamed from: d */
    private final WeakHashMap<Context, d<WeakReference<Drawable.ConstantState>>> f521d = new WeakHashMap<>(0);

    /* renamed from: e */
    private TypedValue f522e;

    /* renamed from: f */
    private boolean f523f;

    /* renamed from: g */
    private AbstractC0117e f524g;

    /* renamed from: h */
    private static final PorterDuff.Mode f515h = PorterDuff.Mode.SRC_IN;

    /* renamed from: j */
    private static final c f517j = new c(6);

    /* renamed from: androidx.appcompat.widget.l0$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/l0$d.class */
    public interface AbstractC0116d {
        /* renamed from: a */
        Drawable m6528a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* renamed from: androidx.appcompat.widget.l0$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/l0$e.class */
    public interface AbstractC0117e {
        /* renamed from: a */
        boolean m6527a(Context context, int i, Drawable drawable);

        /* renamed from: b */
        PorterDuff.Mode m6526b(int i);

        /* renamed from: c */
        Drawable m6525c(C0115l0 c0115l0, Context context, int i);

        /* renamed from: d */
        ColorStateList m6524d(Context context, int i);

        /* renamed from: e */
        boolean m6523e(Context context, int i, Drawable drawable);
    }

    /* renamed from: a */
    private void m6552a(String str, AbstractC0116d abstractC0116d) {
        if (this.f519b == null) {
            this.f519b = new g<>();
        }
        this.f519b.put(str, abstractC0116d);
    }

    /* renamed from: b */
    private boolean m6551b(Context context, long j, Drawable drawable) {
        synchronized (this) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                d<WeakReference<Drawable.ConstantState>> dVar = this.f521d.get(context);
                d<WeakReference<Drawable.ConstantState>> dVar2 = dVar;
                if (dVar == null) {
                    dVar2 = new d<>();
                    this.f521d.put(context, dVar2);
                }
                dVar2.k(j, new WeakReference(constantState));
                return true;
            }
            return false;
        }
    }

    /* renamed from: c */
    private void m6550c(Context context, int i, ColorStateList colorStateList) {
        if (this.f518a == null) {
            this.f518a = new WeakHashMap<>();
        }
        h<ColorStateList> hVar = this.f518a.get(context);
        h<ColorStateList> hVar2 = hVar;
        if (hVar == null) {
            hVar2 = new h<>();
            this.f518a.put(context, hVar2);
        }
        hVar2.a(i, colorStateList);
    }

    /* renamed from: d */
    private void m6549d(Context context) {
        if (this.f523f) {
            return;
        }
        this.f523f = true;
        Drawable m6543j = m6543j(context, a.a);
        if (m6543j != null && m6536q(m6543j)) {
            return;
        }
        this.f523f = false;
        throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
    }

    /* renamed from: e */
    private static long m6548e(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    /* renamed from: f */
    private Drawable m6547f(Context context, int i) {
        if (this.f522e == null) {
            this.f522e = new TypedValue();
        }
        TypedValue typedValue = this.f522e;
        context.getResources().getValue(i, typedValue, true);
        long m6548e = m6548e(typedValue);
        Drawable m6544i = m6544i(context, m6548e);
        if (m6544i != null) {
            return m6544i;
        }
        AbstractC0117e abstractC0117e = this.f524g;
        Drawable m6525c = abstractC0117e == null ? null : abstractC0117e.m6525c(this, context, i);
        if (m6525c != null) {
            m6525c.setChangingConfigurations(typedValue.changingConfigurations);
            m6551b(context, m6548e, m6525c);
        }
        return m6525c;
    }

    /* renamed from: g */
    private static PorterDuffColorFilter m6546g(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return m6541l(colorStateList.getColorForState(iArr, 0), mode);
    }

    /* renamed from: h */
    public static C0115l0 m6545h() {
        C0115l0 c0115l0;
        synchronized (C0115l0.class) {
            try {
                if (f516i == null) {
                    C0115l0 c0115l02 = new C0115l0();
                    f516i = c0115l02;
                    m6537p(c0115l02);
                }
                c0115l0 = f516i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0115l0;
    }

    /* renamed from: i */
    private Drawable m6544i(Context context, long j) {
        synchronized (this) {
            d<WeakReference<Drawable.ConstantState>> dVar = this.f521d.get(context);
            if (dVar == null) {
                return null;
            }
            WeakReference weakReference = (WeakReference) dVar.f(j);
            if (weakReference != null) {
                Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                dVar.l(j);
            }
            return null;
        }
    }

    /* renamed from: l */
    public static PorterDuffColorFilter m6541l(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (C0115l0.class) {
            try {
                c cVar = f517j;
                PorterDuffColorFilter i2 = cVar.i(i, mode);
                porterDuffColorFilter = i2;
                if (i2 == null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                    cVar.j(i, mode, porterDuffColorFilter);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return porterDuffColorFilter;
    }

    /* renamed from: n */
    private ColorStateList m6539n(Context context, int i) {
        WeakHashMap<Context, h<ColorStateList>> weakHashMap = this.f518a;
        ColorStateList colorStateList = null;
        if (weakHashMap != null) {
            h<ColorStateList> hVar = weakHashMap.get(context);
            colorStateList = null;
            if (hVar != null) {
                colorStateList = (ColorStateList) hVar.f(i);
            }
        }
        return colorStateList;
    }

    /* renamed from: p */
    private static void m6537p(C0115l0 c0115l0) {
        if (Build.VERSION.SDK_INT < 24) {
            c0115l0.m6552a("vector", new f());
            c0115l0.m6552a("animated-vector", new b());
            c0115l0.m6552a("animated-selector", new a());
        }
    }

    /* renamed from: q */
    private static boolean m6536q(Drawable drawable) {
        return (drawable instanceof i) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    /* renamed from: r */
    private Drawable m6535r(Context context, int i) {
        int next;
        g<String, AbstractC0116d> gVar = this.f519b;
        if (gVar == null || gVar.isEmpty()) {
            return null;
        }
        h<String> hVar = this.f520c;
        if (hVar != null) {
            String str = (String) hVar.f(i);
            if ("appcompat_skip_skip".equals(str)) {
                return null;
            }
            if (str != null && this.f519b.get(str) == null) {
                return null;
            }
        } else {
            this.f520c = new h<>();
        }
        if (this.f522e == null) {
            this.f522e = new TypedValue();
        }
        TypedValue typedValue = this.f522e;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long m6548e = m6548e(typedValue);
        Drawable m6544i = m6544i(context, m6548e);
        if (m6544i != null) {
            return m6544i;
        }
        CharSequence charSequence = typedValue.string;
        Drawable drawable = m6544i;
        if (charSequence != null) {
            drawable = m6544i;
            if (charSequence.toString().endsWith(".xml")) {
                drawable = m6544i;
                try {
                    XmlResourceParser xml = resources.getXml(i);
                    AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                    do {
                        next = xml.next();
                        if (next == 2) {
                            break;
                        }
                    } while (next != 1);
                    if (next != 2) {
                        throw new XmlPullParserException("No start tag found");
                    }
                    String name = xml.getName();
                    this.f520c.a(i, name);
                    AbstractC0116d abstractC0116d = (AbstractC0116d) this.f519b.get(name);
                    Drawable drawable2 = m6544i;
                    if (abstractC0116d != null) {
                        drawable2 = abstractC0116d.m6528a(context, xml, asAttributeSet, context.getTheme());
                    }
                    drawable = drawable2;
                    if (drawable2 != null) {
                        drawable2.setChangingConfigurations(typedValue.changingConfigurations);
                        Drawable drawable3 = drawable2;
                        m6551b(context, m6548e, drawable2);
                        drawable = drawable2;
                    }
                } catch (Exception e) {
                    Log.e("ResourceManagerInternal", "Exception while inflating drawable", e);
                }
            }
        }
        if (drawable == null) {
            this.f520c.a(i, "appcompat_skip_skip");
        }
        return drawable;
    }

    /* renamed from: v */
    private Drawable m6531v(Context context, int i, boolean z, Drawable drawable) {
        Drawable drawable2;
        ColorStateList m6540m = m6540m(context, i);
        if (m6540m != null) {
            Drawable drawable3 = drawable;
            if (C0099d0.m6612a(drawable)) {
                drawable3 = drawable.mutate();
            }
            Drawable m5954r = C0222a.m5954r(drawable3);
            C0222a.m5957o(m5954r, m6540m);
            PorterDuff.Mode m6538o = m6538o(i);
            drawable2 = m5954r;
            if (m6538o != null) {
                C0222a.m5956p(m5954r, m6538o);
                drawable2 = m5954r;
            }
        } else {
            AbstractC0117e abstractC0117e = this.f524g;
            if (abstractC0117e == null || !abstractC0117e.m6523e(context, i, drawable)) {
                drawable2 = drawable;
                if (!m6529x(context, i, drawable)) {
                    drawable2 = drawable;
                    if (z) {
                        drawable2 = null;
                    }
                }
            } else {
                drawable2 = drawable;
            }
        }
        return drawable2;
    }

    /* renamed from: w */
    public static void m6530w(Drawable drawable, C0133t0 c0133t0, int[] iArr) {
        if (C0099d0.m6612a(drawable) && drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        boolean z = c0133t0.f583d;
        if (z || c0133t0.f582c) {
            drawable.setColorFilter(m6546g(z ? c0133t0.f580a : null, c0133t0.f582c ? c0133t0.f581b : f515h, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT > 23) {
            return;
        }
        drawable.invalidateSelf();
    }

    /* renamed from: j */
    public Drawable m6543j(Context context, int i) {
        Drawable m6542k;
        synchronized (this) {
            m6542k = m6542k(context, i, false);
        }
        return m6542k;
    }

    /* renamed from: k */
    public Drawable m6542k(Context context, int i, boolean z) {
        Drawable drawable;
        synchronized (this) {
            m6549d(context);
            Drawable m6535r = m6535r(context, i);
            Drawable drawable2 = m6535r;
            if (m6535r == null) {
                drawable2 = m6547f(context, i);
            }
            Drawable drawable3 = drawable2;
            if (drawable2 == null) {
                drawable3 = C0203a.m6054f(context, i);
            }
            drawable = drawable3;
            if (drawable3 != null) {
                drawable = m6531v(context, i, z, drawable3);
            }
            if (drawable != null) {
                C0099d0.m6611b(drawable);
            }
        }
        return drawable;
    }

    /* renamed from: m */
    public ColorStateList m6540m(Context context, int i) {
        ColorStateList colorStateList;
        synchronized (this) {
            ColorStateList m6539n = m6539n(context, i);
            colorStateList = m6539n;
            if (m6539n == null) {
                AbstractC0117e abstractC0117e = this.f524g;
                ColorStateList m6524d = abstractC0117e == null ? null : abstractC0117e.m6524d(context, i);
                colorStateList = m6524d;
                if (m6524d != null) {
                    m6550c(context, i, m6524d);
                    colorStateList = m6524d;
                }
            }
        }
        return colorStateList;
    }

    /* renamed from: o */
    PorterDuff.Mode m6538o(int i) {
        AbstractC0117e abstractC0117e = this.f524g;
        return abstractC0117e == null ? null : abstractC0117e.m6526b(i);
    }

    /* renamed from: s */
    public void m6534s(Context context) {
        synchronized (this) {
            d<WeakReference<Drawable.ConstantState>> dVar = this.f521d.get(context);
            if (dVar != null) {
                dVar.b();
            }
        }
    }

    /* renamed from: t */
    public Drawable m6533t(Context context, C0093a1 c0093a1, int i) {
        synchronized (this) {
            Drawable m6535r = m6535r(context, i);
            Drawable drawable = m6535r;
            if (m6535r == null) {
                drawable = c0093a1.m6649d(i);
            }
            if (drawable != null) {
                return m6531v(context, i, false, drawable);
            }
            return null;
        }
    }

    /* renamed from: u */
    public void m6532u(AbstractC0117e abstractC0117e) {
        synchronized (this) {
            this.f524g = abstractC0117e;
        }
    }

    /* renamed from: x */
    boolean m6529x(Context context, int i, Drawable drawable) {
        AbstractC0117e abstractC0117e = this.f524g;
        return abstractC0117e != null && abstractC0117e.m6527a(context, i, drawable);
    }
}
