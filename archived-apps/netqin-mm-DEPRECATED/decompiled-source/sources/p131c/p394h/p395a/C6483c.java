package p131c.p394h.p395a;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import com.libaray.gdpr.GdprHelper;
import kotlin.TypeCastException;
import kotlin.jvm.internal.PropertyReference0Impl;
import p573f.p574a0.AbstractC9881j;
import p573f.p590w.p592c.C10059q;
import p573f.p590w.p592c.C10062t;
/* renamed from: c.h.a.c */
/* loaded from: classes2-dex2jar.jar:c/h/a/c.class */
public final class C6483c {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC9881j[] f20201a;

    /* renamed from: b */
    public static final GdprHelper f20202b = GdprHelper.f33128i;

    /* renamed from: c */
    public static final String[] f20203c = {"GB", "FR", "DE", "IT", "NL", "BE", "LU", "DK", "IE", "GR", "PT", "ES", "AT", "SE", "FI", "MT", "CY", "PL", "HU", "CZ", "SK", "SI", "EE", "LV", "LT", "RO", "BG", "HR", "CH"};

    static {
        PropertyReference0Impl propertyReference0Impl = new PropertyReference0Impl(C10062t.m1628a(C6483c.class, "library-gdpr_debug"), "appContext", "getAppContext()Landroid/app/Application;");
        C10062t.m1622a(propertyReference0Impl);
        f20201a = new AbstractC9881j[]{propertyReference0Impl};
    }

    /* renamed from: a */
    public static final int m20728a(float f) {
        Resources resources = m20729a().getResources();
        C10059q.m1642a((Object) resources, "appContext.resources");
        return Math.round(TypedValue.applyDimension(1, f, resources.getDisplayMetrics()));
    }

    /* renamed from: a */
    public static final Activity m20725a(View view) {
        C10059q.m1637b(view, "$receiver");
        Context context = view.getContext();
        Activity activity = null;
        Context baseContext = null;
        if (context instanceof Activity) {
            Context context2 = view.getContext();
            if (context2 != null) {
                activity = (Activity) context2;
            } else {
                throw new TypeCastException("null cannot be cast to non-null type android.app.Activity");
            }
        } else if (context instanceof ContextWrapper) {
            Context context3 = view.getContext();
            if (context3 != null) {
                baseContext = ((ContextWrapper) context3).getBaseContext();
                if (!(baseContext instanceof Activity)) {
                }
                activity = (Activity) baseContext;
            } else {
                throw new TypeCastException("null cannot be cast to non-null type android.content.ContextWrapper");
            }
        }
        return activity;
    }

    /* renamed from: a */
    public static final Application m20729a() {
        return f20202b.m5350a(null, f20201a[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d0, code lost:
        if (p573f.p577r.C9968h.m1717b(r0, r4) != false) goto L_0x00d3;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m20727a(android.content.res.Configuration r4) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p394h.p395a.C6483c.m20727a(android.content.res.Configuration):boolean");
    }

    /* renamed from: a */
    public static /* bridge */ /* synthetic */ boolean m20726a(Configuration configuration, int i, Object obj) {
        if ((i & 1) != 0) {
            Resources resources = m20729a().getResources();
            C10059q.m1642a((Object) resources, "appContext.resources");
            configuration = resources.getConfiguration();
            C10059q.m1642a((Object) configuration, "appContext.resources.configuration");
        }
        return m20727a(configuration);
    }

    /* renamed from: b */
    public static final boolean m20724b() {
        return (m20729a().getApplicationInfo().flags & 2) != 0;
    }
}
