package com.libaray.gdpr;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.PropertyReference1Impl;
import p131c.p394h.p395a.AbstractC6482b;
import p131c.p394h.p395a.C6481a;
import p131c.p394h.p395a.C6483c;
import p573f.AbstractC9907c;
import p573f.C9926d;
import p573f.p574a0.AbstractC9881j;
import p573f.p577r.C9966g;
import p573f.p577r.C9968h;
import p573f.p590w.p592c.C10059q;
import p573f.p590w.p592c.C10062t;
import p573f.p593x.AbstractC10067b;
import p573f.p593x.AbstractC10068c;
import p573f.p593x.C10066a;
/* loaded from: classes2-dex2jar.jar:com/libaray/gdpr/GdprHelper.class */
public final class GdprHelper extends C6481a implements ComponentCallbacks {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC9881j[] f33120a;

    /* renamed from: b */
    public static AbstractC6482b f33121b;

    /* renamed from: c */
    public static Class<?> f33122c;

    /* renamed from: f */
    public static boolean f33125f;

    /* renamed from: g */
    public static Application f33126g;

    /* renamed from: i */
    public static final GdprHelper f33128i = new GdprHelper();

    /* renamed from: d */
    public static final AbstractC10068c f33123d = new C8506a(false, false);

    /* renamed from: e */
    public static String[] f33124e = new String[0];

    /* renamed from: h */
    public static final AbstractC9907c f33127h = C9926d.m1780a(GdprHelper$sharedPreferences$2.INSTANCE);

    /* renamed from: com.libaray.gdpr.GdprHelper$a */
    /* loaded from: classes2-dex2jar.jar:com/libaray/gdpr/GdprHelper$a.class */
    public static final class C8506a extends AbstractC10067b<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ Object f33129b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8506a(Object obj, Object obj2) {
            super(obj2);
            this.f33129b = obj;
        }

        @Override // p573f.p593x.AbstractC10067b
        /* renamed from: a */
        public void mo1599a(AbstractC9881j<?> jVar, Boolean bool, Boolean bool2) {
            AbstractC6482b b;
            C10059q.m1637b(jVar, "property");
            boolean booleanValue = bool2.booleanValue();
            if (bool.booleanValue() && !booleanValue && (b = GdprHelper.f33128i.m5348b()) != null) {
                b.mo19690a(null, null);
            }
            if (booleanValue) {
                GdprHelper.f33128i.m5343e();
            } else {
                GdprHelper.f33128i.m5342f();
            }
        }
    }

    static {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(C10062t.m1629a(GdprHelper.class), "isEuCountry", "isEuCountry$library_gdpr_debug()Z");
        C10062t.m1624a(mutablePropertyReference1Impl);
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(C10062t.m1629a(GdprHelper.class), "sharedPreferences", "getSharedPreferences()Landroid/content/SharedPreferences;");
        C10062t.m1621a(propertyReference1Impl);
        f33120a = new AbstractC9881j[]{mutablePropertyReference1Impl, propertyReference1Impl};
        C10066a aVar = C10066a.f37194a;
    }

    /* renamed from: a */
    public static final void m5354a(Application application, Class<?> cls, AbstractC6482b bVar, Class<?>... clsArr) {
        ComponentName component;
        String className;
        C10059q.m1637b(application, "application");
        C10059q.m1637b(clsArr, "needGuideClasses");
        f33126g = application;
        f33128i.m5349a(C6483c.m20726a(null, 1, null));
        f33122c = cls;
        application.registerComponentCallbacks(f33128i);
        Intent launchIntentForPackage = application.getPackageManager().getLaunchIntentForPackage(application.getPackageName());
        if (!(launchIntentForPackage == null || (component = launchIntentForPackage.getComponent()) == null || (className = component.getClassName()) == null)) {
            f33124e = (String[]) C9966g.m1721a(f33124e, className);
        }
        String[] strArr = f33124e;
        ArrayList arrayList = new ArrayList(clsArr.length);
        for (Class<?> cls2 : clsArr) {
            arrayList.add(cls2.getName());
        }
        f33124e = (String[]) C9966g.m1719a((Object[]) strArr, (Collection) arrayList);
        f33121b = bVar;
        if (m5352a(null, 1, null)) {
            if (bVar != null) {
                bVar.mo19690a(null, null);
            }
        } else if (bVar != null) {
            bVar.mo19691a();
        }
    }

    /* renamed from: a */
    public static final boolean m5353a(Context context) {
        C10059q.m1637b(context, "context");
        boolean z = true;
        if (!(C10059q.m1643a(context, C6483c.m20729a()) ^ true ? context.getSharedPreferences("_GDPR", 0) : f33128i.m5345c()).getBoolean("IS_USER_AGREE", !f33128i.m5344d())) {
            z = !f33128i.m5344d();
        }
        return z;
    }

    /* renamed from: a */
    public static /* bridge */ /* synthetic */ boolean m5352a(Context context, int i, Object obj) {
        if ((i & 1) != 0) {
            context = C6483c.m20729a();
        }
        return m5353a(context);
    }

    /* renamed from: a */
    public final Application m5350a(Object obj, AbstractC9881j<?> jVar) {
        C10059q.m1637b(jVar, "property");
        Application application = f33126g;
        if (application != null) {
            return application;
        }
        C10059q.m1634d("application");
        throw null;
    }

    /* renamed from: a */
    public final Class<?> m5355a() {
        return f33122c;
    }

    /* renamed from: a */
    public final void m5349a(boolean z) {
        f33123d.mo1596a(this, f33120a[0], Boolean.valueOf(z));
    }

    /* renamed from: b */
    public final AbstractC6482b m5348b() {
        return f33121b;
    }

    /* renamed from: b */
    public final void m5346b(boolean z) {
        m5345c().edit().putBoolean("IS_USER_AGREE", z).apply();
    }

    /* renamed from: c */
    public final SharedPreferences m5345c() {
        AbstractC9907c cVar = f33127h;
        AbstractC9881j jVar = f33120a[1];
        return (SharedPreferences) cVar.getValue();
    }

    /* renamed from: d */
    public final boolean m5344d() {
        return ((Boolean) f33123d.mo1597a(this, f33120a[0])).booleanValue();
    }

    /* renamed from: e */
    public final void m5343e() {
        if (!f33125f) {
            f33125f = true;
            Application application = f33126g;
            if (application != null) {
                application.registerActivityLifecycleCallbacks(this);
            } else {
                C10059q.m1634d("application");
                throw null;
            }
        }
    }

    /* renamed from: f */
    public final void m5342f() {
        if (f33125f) {
            f33125f = false;
            Application application = f33126g;
            if (application != null) {
                application.unregisterActivityLifecycleCallbacks(this);
            } else {
                C10059q.m1634d("application");
                throw null;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        C10059q.m1637b(activity, "activity");
        if (!m5352a(null, 1, null) && !(activity instanceof GdprPrivacyActivity)) {
            if (C9968h.m1717b(f33124e, activity.getClass().getName())) {
                Intent intent = new Intent(activity, GdprPrivacyActivity.class);
                intent.putExtra("ORIGIN_INTENT", activity.getIntent());
                activity.startActivity(intent);
            }
            activity.finish();
            activity.overridePendingTransition(0, 0);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        C10059q.m1637b(configuration, "newConfig");
        if (C6483c.m20724b()) {
            Log.d("_GDPR", "onConfigurationChanged");
        }
        m5349a(C6483c.m20727a(configuration));
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }
}
