package p193e.p194a.p372b0.p417k;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import com.razorpay.AnalyticsConstants;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19250o;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p430q.C8604n;
import p193e.p194a.p437c.p578p.C10480a;
import s1.f0.r;
import s1.g;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.b0.k.f */
/* loaded from: classes7-dex2jar.jar:e/a/b0/k/f.class */
public final class C8497f {

    /* renamed from: b */
    public static final C8499b f26278b = new C8499b(null);

    /* renamed from: a */
    public static final g f26277a = C25225a.m3978P1(C8498a.f26279b);

    /* renamed from: e.a.b0.k.f$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/k/f$a.class */
    public static final class C8498a extends m implements a<Map<String, ? extends List<? extends String>>> {

        /* renamed from: b */
        public static final C8498a f26279b = new C8498a();

        public C8498a() {
            super(0);
        }

        public Object invoke() {
            AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
            l.d(m28551L, "ApplicationBase.getAppBase()");
            C19250o mo12549T3 = m28551L.m28549N().mo12549T3();
            Context applicationContext = m28551L.getApplicationContext();
            l.d(applicationContext, "appBase.applicationContext");
            Type type = new C8496e().getType();
            l.d(type, "object : TypeToken<T>() {}.type");
            LinkedHashMap linkedHashMap = (Map) C19250o.m13744b(mo12549T3, applicationContext, "countries_languages.json", type, null, 8);
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
            }
            return linkedHashMap;
        }
    }

    /* renamed from: e.a.b0.k.f$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/k/f$b.class */
    public static final class C8499b {
        public C8499b(f fVar) {
        }
    }

    @e(c = "com.truecaller.common.i18n.LanguageUtil", f = "LanguageUtil.kt", l = {47, 53}, m = "getCountryAltLanguage")
    /* renamed from: e.a.b0.k.f$c */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/k/f$c.class */
    public static final class C8500c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f26280d;

        /* renamed from: e */
        public int f26281e;

        /* renamed from: g */
        public Object f26283g;

        /* renamed from: h */
        public Object f26284h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8500c(d dVar) {
            super(dVar);
            C8497f.this = r4;
        }

        /* renamed from: s */
        public final Object m28441s(Object obj) {
            this.f26280d = obj;
            this.f26281e |= Integer.MIN_VALUE;
            return C8497f.this.m28445d(null, null, this);
        }
    }

    /* renamed from: a */
    public final List<C8494c> m28448a() {
        C8495d c8495d = C8495d.f26276h;
        List<C8494c> list = C8495d.f26275g;
        ArrayList arrayList = new ArrayList();
        Set<String> m28447b = m28447b();
        for (C8494c c8494c : list) {
            String str = c8494c.f26267b;
            Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = str.toLowerCase();
            l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
            if (((HashSet) m28447b).contains(lowerCase) && m28442g(lowerCase)) {
                arrayList.add(c8494c);
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public final Set<String> m28447b() {
        Locale[] availableLocales = Locale.getAvailableLocales();
        HashSet hashSet = new HashSet();
        for (Locale locale : availableLocales) {
            l.d(locale, AnalyticsConstants.LOCALE);
            String language = locale.getLanguage();
            l.d(language, "locale.language");
            String lowerCase = language.toLowerCase();
            l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
            String country = locale.getCountry();
            l.d(country, "locale.country");
            String lowerCase2 = country.toLowerCase();
            l.d(lowerCase2, "(this as java.lang.String).toLowerCase()");
            String variant = locale.getVariant();
            l.d(variant, "locale.variant");
            String lowerCase3 = variant.toLowerCase();
            l.d(lowerCase3, "(this as java.lang.String).toLowerCase()");
            hashSet.add(lowerCase);
            if (l.a(lowerCase, "zh")) {
                if (lowerCase2.length() > 2) {
                    hashSet.add(lowerCase + AnalyticsConstants.DELIMITER_MAIN + lowerCase3);
                } else {
                    hashSet.add(lowerCase + AnalyticsConstants.DELIMITER_MAIN + lowerCase2);
                }
            }
        }
        return hashSet;
    }

    /* renamed from: c */
    public final Locale m28446c(Context context) {
        Locale locale;
        l.e(context, AnalyticsConstants.CONTEXT);
        try {
            Resources resources = context.getResources();
            l.d(resources, "context.resources");
            locale = resources.getConfiguration().locale;
        } catch (NullPointerException e) {
            locale = null;
        }
        return locale;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x014b  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m28445d(java.lang.String r7, java.lang.String r8, s1.w.d<? super p193e.p194a.p372b0.p417k.C8494c> r9) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p417k.C8497f.m28445d(java.lang.String, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* renamed from: e */
    public final C8494c m28444e(String str) {
        l.e(str, "languageISO");
        Iterator it = ((ArrayList) m28448a()).iterator();
        while (it.hasNext()) {
            C8494c c8494c = (C8494c) it.next();
            if (r.n(str, c8494c.f26267b, true)) {
                return c8494c;
            }
        }
        C8495d c8495d = C8495d.f26276h;
        return C8495d.f26269a;
    }

    /* renamed from: f */
    public final Locale m28443f() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityManagerNative");
            Method method = cls.getMethod("getDefault", new Class[0]);
            l.d(method, "getDefault");
            method.setAccessible(true);
            Object invoke = method.invoke(cls, new Object[0]);
            if (Build.VERSION.SDK_INT >= 26) {
                cls = Class.forName(invoke.getClass().getName());
            }
            Object invoke2 = cls.getMethod("getConfiguration", new Class[0]).invoke(method.invoke(null, new Object[0]), new Object[0]);
            if (invoke2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.content.res.Configuration");
            }
            return ((Configuration) invoke2).locale;
        } catch (Exception e) {
            C10480a.m26061I1(e);
            return null;
        }
    }

    /* renamed from: g */
    public final boolean m28442g(String str) {
        String[][] strArr;
        l.e(str, "iso");
        C8495d c8495d = C8495d.f26276h;
        for (String[] strArr2 : C8495d.f26271c) {
            String m28244a = C8604n.m28244a();
            l.d(m28244a, "DeviceInfoUtils.getDeviceManufacturer()");
            Locale locale = Locale.ENGLISH;
            l.d(locale, "Locale.ENGLISH");
            String lowerCase = m28244a.toLowerCase(locale);
            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            if (r.y(lowerCase, strArr2[0], false, 2)) {
                for (String str2 : strArr2) {
                    if (l.a(str2, str)) {
                        return false;
                    }
                }
                continue;
            }
        }
        return true;
    }
}
