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
import androidx.appcompat.p022b.p023a.C0323a;
import androidx.p026b.C0529a;
import androidx.p026b.C0534f;
import androidx.p026b.C0535g;
import androidx.p026b.C0543j;
import androidx.p046f.p047a.p048a.C0840c;
import androidx.p046f.p047a.p048a.C0850j;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.appcompat.widget.ap */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ap.class */
public final class C0451ap {

    /* renamed from: b */
    private static C0451ap f2250b;

    /* renamed from: d */
    private WeakHashMap<Context, C0543j<ColorStateList>> f2252d;

    /* renamed from: e */
    private C0529a<String, AbstractC0455d> f2253e;

    /* renamed from: f */
    private C0543j<String> f2254f;

    /* renamed from: g */
    private final WeakHashMap<Context, C0534f<WeakReference<Drawable.ConstantState>>> f2255g = new WeakHashMap<>(0);

    /* renamed from: h */
    private TypedValue f2256h;

    /* renamed from: i */
    private boolean f2257i;

    /* renamed from: j */
    private AbstractC0456e f2258j;

    /* renamed from: a */
    private static final PorterDuff.Mode f2249a = PorterDuff.Mode.SRC_IN;

    /* renamed from: c */
    private static final C0454c f2251c = new C0454c();

    /* renamed from: androidx.appcompat.widget.ap$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ap$a.class */
    static final class C0452a implements AbstractC0455d {
        C0452a() {
        }

        @Override // androidx.appcompat.widget.C0451ap.AbstractC0455d
        /* renamed from: a */
        public final Drawable mo9130a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C0323a.m9755a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ap$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ap$b.class */
    private static final class C0453b implements AbstractC0455d {
        C0453b() {
        }

        @Override // androidx.appcompat.widget.C0451ap.AbstractC0455d
        /* renamed from: a */
        public final Drawable mo9130a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C0840c.m7945a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ap$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ap$c.class */
    public static final class C0454c extends C0535g<Integer, PorterDuffColorFilter> {
        public C0454c() {
            super(6);
        }

        /* renamed from: b */
        private static int m9131b(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        /* renamed from: a */
        final PorterDuffColorFilter m9133a(int i, PorterDuff.Mode mode) {
            return get(Integer.valueOf(m9131b(i, mode)));
        }

        /* renamed from: a */
        final PorterDuffColorFilter m9132a(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(m9131b(i, mode)), porterDuffColorFilter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ap$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ap$d.class */
    public interface AbstractC0455d {
        /* renamed from: a */
        Drawable mo9130a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.ap$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ap$e.class */
    public interface AbstractC0456e {
        /* renamed from: a */
        ColorStateList mo8982a(Context context, int i);

        /* renamed from: a */
        PorterDuff.Mode mo8983a(int i);

        /* renamed from: a */
        Drawable mo8979a(C0451ap apVar, Context context, int i);

        /* renamed from: a */
        boolean mo8981a(Context context, int i, Drawable drawable);

        /* renamed from: b */
        boolean mo8976b(Context context, int i, Drawable drawable);
    }

    /* renamed from: androidx.appcompat.widget.ap$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ap$f.class */
    private static final class C0457f implements AbstractC0455d {
        C0457f() {
        }

        @Override // androidx.appcompat.widget.C0451ap.AbstractC0455d
        /* renamed from: a */
        public final Drawable mo9130a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C0850j.m7926a(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    /* renamed from: a */
    private static long m9138a(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    /* renamed from: a */
    private PorterDuff.Mode m9149a(int i) {
        AbstractC0456e eVar = this.f2258j;
        if (eVar == null) {
            return null;
        }
        return eVar.mo8983a(i);
    }

    /* renamed from: a */
    public static PorterDuffColorFilter m9148a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (C0451ap.class) {
            try {
                PorterDuffColorFilter a = f2251c.m9133a(i, mode);
                porterDuffColorFilter = a;
                if (a == null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                    f2251c.m9132a(i, mode, porterDuffColorFilter);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return porterDuffColorFilter;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005e, code lost:
        if (r0.mo8981a(r6, r7, r9) == false) goto L_0x0061;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.drawable.Drawable m9143a(android.content.Context r6, int r7, boolean r8, android.graphics.drawable.Drawable r9) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            android.content.res.ColorStateList r0 = r0.m9135b(r1, r2)
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0044
            r0 = r9
            r6 = r0
            r0 = r9
            boolean r0 = androidx.appcompat.widget.C0437ah.m9169c(r0)
            if (r0 == 0) goto L_0x001e
            r0 = r9
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r6 = r0
        L_0x001e:
            r0 = r6
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.C0758a.m8241f(r0)
            r6 = r0
            r0 = r6
            r1 = r10
            androidx.core.graphics.drawable.C0758a.m8251a(r0, r1)
            r0 = r5
            r1 = r7
            android.graphics.PorterDuff$Mode r0 = r0.m9149a(r1)
            r9 = r0
            r0 = r6
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x007b
            r0 = r6
            r1 = r9
            androidx.core.graphics.drawable.C0758a.m8248a(r0, r1)
            r0 = r6
            r10 = r0
            goto L_0x007b
        L_0x0044:
            r0 = r5
            androidx.appcompat.widget.ap$e r0 = r0.f2258j
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0061
            r0 = r9
            r10 = r0
            r0 = r11
            r1 = r6
            r2 = r7
            r3 = r9
            boolean r0 = r0.mo8981a(r1, r2, r3)
            if (r0 != 0) goto L_0x007b
        L_0x0061:
            r0 = r9
            r10 = r0
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r9
            boolean r0 = r0.m9145a(r1, r2, r3)
            if (r0 != 0) goto L_0x007b
            r0 = r9
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L_0x007b
            r0 = 0
            r10 = r0
        L_0x007b:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0451ap.m9143a(android.content.Context, int, boolean, android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    /* renamed from: a */
    private Drawable m9142a(Context context, long j) {
        synchronized (this) {
            C0534f<WeakReference<Drawable.ConstantState>> fVar = this.f2255g.get(context);
            if (fVar == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> a = fVar.m8938a(j);
            if (a != null) {
                Drawable.ConstantState constantState = a.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                fVar.m8934b(j);
            }
            return null;
        }
    }

    /* renamed from: a */
    public static C0451ap m9150a() {
        C0451ap apVar;
        synchronized (C0451ap.class) {
            try {
                if (f2250b == null) {
                    C0451ap apVar2 = new C0451ap();
                    f2250b = apVar2;
                    if (Build.VERSION.SDK_INT < 24) {
                        apVar2.m9136a("vector", new C0457f());
                        apVar2.m9136a("animated-vector", new C0453b());
                        apVar2.m9136a("animated-selector", new C0452a());
                    }
                }
                apVar = f2250b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return apVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m9139a(Drawable drawable, C0482bk bkVar, int[] iArr) {
        if (!C0437ah.m9169c(drawable) || drawable.mutate() == drawable) {
            if (bkVar.f2334d || bkVar.f2333c) {
                ColorStateList colorStateList = bkVar.f2334d ? bkVar.f2331a : null;
                PorterDuff.Mode mode = bkVar.f2333c ? bkVar.f2332b : f2249a;
                PorterDuffColorFilter porterDuffColorFilter = null;
                if (colorStateList != null) {
                    porterDuffColorFilter = mode == null ? null : m9148a(colorStateList.getColorForState(iArr, 0), mode);
                }
                drawable.setColorFilter(porterDuffColorFilter);
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
                return;
            }
            return;
        }
        Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
    }

    /* renamed from: a */
    private void m9136a(String str, AbstractC0455d dVar) {
        if (this.f2253e == null) {
            this.f2253e = new C0529a<>();
        }
        this.f2253e.put(str, dVar);
    }

    /* renamed from: a */
    private boolean m9141a(Context context, long j, Drawable drawable) {
        boolean z;
        synchronized (this) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                C0534f<WeakReference<Drawable.ConstantState>> fVar = this.f2255g.get(context);
                C0534f<WeakReference<Drawable.ConstantState>> fVar2 = fVar;
                if (fVar == null) {
                    fVar2 = new C0534f<>();
                    this.f2255g.put(context, fVar2);
                }
                fVar2.m8933b(j, new WeakReference<>(constantState));
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: c */
    private Drawable m9134c(Context context, int i) {
        int next;
        C0529a<String, AbstractC0455d> aVar = this.f2253e;
        if (aVar == null || aVar.isEmpty()) {
            return null;
        }
        C0543j<String> jVar = this.f2254f;
        if (jVar != null) {
            String a = jVar.m8899a(i);
            if ("appcompat_skip_skip".equals(a)) {
                return null;
            }
            if (a != null && this.f2253e.get(a) == null) {
                return null;
            }
        } else {
            this.f2254f = new C0543j<>();
        }
        if (this.f2256h == null) {
            this.f2256h = new TypedValue();
        }
        TypedValue typedValue = this.f2256h;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long a2 = m9138a(typedValue);
        Drawable a3 = m9142a(context, a2);
        if (a3 != null) {
            return a3;
        }
        Drawable drawable = a3;
        if (typedValue.string != null) {
            drawable = a3;
            if (typedValue.string.toString().endsWith(".xml")) {
                drawable = a3;
                try {
                    XmlResourceParser xml = resources.getXml(i);
                    AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                    do {
                        next = xml.next();
                        if (next == 2) {
                            break;
                        }
                    } while (next != 1);
                    if (next == 2) {
                        String name = xml.getName();
                        this.f2254f.m8891c(i, name);
                        AbstractC0455d dVar = this.f2253e.get(name);
                        Drawable drawable2 = a3;
                        if (dVar != null) {
                            drawable2 = dVar.mo9130a(context, xml, asAttributeSet, context.getTheme());
                        }
                        drawable = drawable2;
                        if (drawable2 != null) {
                            drawable2.setChangingConfigurations(typedValue.changingConfigurations);
                            m9141a(context, a2, drawable2);
                            drawable = drawable2;
                        }
                    } else {
                        throw new XmlPullParserException("No start tag found");
                    }
                } catch (Exception e) {
                    Log.e("ResourceManagerInternal", "Exception while inflating drawable", e);
                }
            }
        }
        if (drawable == null) {
            this.f2254f.m8891c(i, "appcompat_skip_skip");
        }
        return drawable;
    }

    /* renamed from: a */
    public final Drawable m9146a(Context context, int i) {
        Drawable a;
        synchronized (this) {
            a = m9144a(context, i, false);
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0044, code lost:
        if (r11 == false) goto L_0x004a;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable m9144a(android.content.Context r7, int r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0451ap.m9144a(android.content.Context, int, boolean):android.graphics.drawable.Drawable");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Drawable m9140a(Context context, C0497bz bzVar, int i) {
        synchronized (this) {
            Drawable c = m9134c(context, i);
            Drawable drawable = c;
            if (c == null) {
                drawable = bzVar.m9032a(i);
            }
            if (drawable == null) {
                return null;
            }
            return m9143a(context, i, false, drawable);
        }
    }

    /* renamed from: a */
    public final void m9147a(Context context) {
        synchronized (this) {
            C0534f<WeakReference<Drawable.ConstantState>> fVar = this.f2255g.get(context);
            if (fVar != null) {
                fVar.m8932c();
            }
        }
    }

    /* renamed from: a */
    public final void m9137a(AbstractC0456e eVar) {
        synchronized (this) {
            this.f2258j = eVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m9145a(Context context, int i, Drawable drawable) {
        AbstractC0456e eVar = this.f2258j;
        return eVar != null && eVar.mo8976b(context, i, drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final ColorStateList m9135b(Context context, int i) {
        ColorStateList colorStateList;
        C0543j<ColorStateList> jVar;
        synchronized (this) {
            ColorStateList colorStateList2 = null;
            ColorStateList a = (this.f2252d == null || (jVar = this.f2252d.get(context)) == null) ? null : jVar.m8899a(i);
            colorStateList = a;
            if (a == null) {
                if (this.f2258j != null) {
                    colorStateList2 = this.f2258j.mo8982a(context, i);
                }
                colorStateList = colorStateList2;
                if (colorStateList2 != null) {
                    if (this.f2252d == null) {
                        this.f2252d = new WeakHashMap<>();
                    }
                    C0543j<ColorStateList> jVar2 = this.f2252d.get(context);
                    C0543j<ColorStateList> jVar3 = jVar2;
                    if (jVar2 == null) {
                        jVar3 = new C0543j<>();
                        this.f2252d.put(context, jVar3);
                    }
                    jVar3.m8891c(i, colorStateList2);
                    colorStateList = colorStateList2;
                }
            }
        }
        return colorStateList;
    }
}
