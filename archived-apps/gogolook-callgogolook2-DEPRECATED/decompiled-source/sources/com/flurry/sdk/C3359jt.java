package com.flurry.sdk;

import android.content.Context;
import android.os.Build;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.jt */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jt.class */
public final class C3359jt {

    /* renamed from: a */
    public static final String f5741a = "jt";

    /* renamed from: b */
    public static final Map<Class<? extends AbstractC3360ju>, C3357jr> f5742b = new LinkedHashMap();

    /* renamed from: d */
    public static List<AbstractC3360ju> f5743d = new ArrayList();

    /* renamed from: e */
    public static List<String> f5744e;

    /* renamed from: c */
    public final Map<Class<? extends AbstractC3360ju>, AbstractC3360ju> f5745c = new LinkedHashMap();

    static {
        ArrayList arrayList = new ArrayList();
        f5744e = arrayList;
        arrayList.add("com.flurry.android.marketing.FlurryMarketingModule");
        f5744e.add("com.flurry.android.config.killswitch.FlurryKillSwitchModule");
    }

    /* renamed from: a */
    public static void m32600a(Class<? extends AbstractC3360ju> cls) {
        if (cls != null) {
            synchronized (f5742b) {
                f5742b.put(cls, new C3357jr(cls));
            }
        }
    }

    /* renamed from: a */
    public final void m32601a(Context context) {
        ArrayList<C3357jr> arrayList;
        synchronized (this) {
            if (context == null) {
                C3356jq.m32615a(5, f5741a, "Null context.");
                return;
            }
            synchronized (f5742b) {
                arrayList = new ArrayList(f5742b.values());
            }
            for (C3357jr jrVar : arrayList) {
                try {
                    if (jrVar.f5739a != null && Build.VERSION.SDK_INT >= jrVar.f5740b) {
                        AbstractC3360ju juVar = (AbstractC3360ju) jrVar.f5739a.newInstance();
                        juVar.mo32356a(context);
                        this.f5745c.put(jrVar.f5739a, juVar);
                    }
                } catch (Exception e) {
                    String str = f5741a;
                    C3356jq.m32614a(5, str, "Flurry Module for class " + jrVar.f5739a + " is not available:", e);
                }
            }
            for (AbstractC3360ju juVar2 : f5743d) {
                try {
                    juVar2.mo32356a(context);
                } catch (C3358js e2) {
                    C3356jq.m32609b(f5741a, e2.getMessage());
                }
            }
            C3427kr.m32517a().m32516a(context);
            C3336jf.m32668a();
        }
    }

    /* renamed from: b */
    public final AbstractC3360ju m32599b(Class<? extends AbstractC3360ju> cls) {
        AbstractC3360ju juVar;
        if (cls == null) {
            return null;
        }
        synchronized (this.f5745c) {
            juVar = this.f5745c.get(cls);
        }
        if (juVar != null) {
            return juVar;
        }
        throw new IllegalStateException("Module was not registered/initialized. " + cls);
    }
}
