package com.flurry.sdk;

import android.content.Context;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
/* renamed from: com.flurry.sdk.v */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/v.class */
public class C3516v {

    /* renamed from: a */
    public static final String f6090a = "v";

    /* renamed from: b */
    public final SparseArray<AbstractC3518x> f6091b = new SparseArray<>();

    /* renamed from: c */
    public final C3338jg<Context, AbstractC3518x> f6092c = new C3338jg<>(new WeakHashMap());

    /* renamed from: a */
    public final AbstractC3518x m32298a(int i) {
        AbstractC3518x xVar;
        synchronized (this) {
            xVar = this.f6091b.get(i);
        }
        return xVar;
    }

    /* renamed from: a */
    public final void m32299a() {
        synchronized (this) {
            for (AbstractC3518x xVar : this.f6092c.m32648d()) {
                xVar.mo32277m();
            }
        }
    }

    /* renamed from: a */
    public final void m32297a(Context context) {
        synchronized (this) {
            if (context != null) {
                for (AbstractC3518x xVar : this.f6092c.m32655a((C3338jg<Context, AbstractC3518x>) context)) {
                    xVar.mo32285b();
                }
            }
        }
    }

    /* renamed from: a */
    public final void m32296a(Context context, AbstractC3518x xVar) {
        synchronized (this) {
            if (context != null && xVar != null) {
                this.f6091b.put(xVar.mo32283d(), xVar);
                this.f6092c.m32654a((C3338jg<Context, AbstractC3518x>) context, (Context) xVar);
            }
        }
    }

    /* renamed from: b */
    public final void m32295b() {
        synchronized (this) {
            int i = 0;
            for (AbstractC3518x xVar : this.f6092c.m32648d()) {
                if ((xVar instanceof C2772aa) && xVar.mo32276w()) {
                    i++;
                }
            }
            String str = f6090a;
            C3356jq.m32615a(3, str, "Number of expired ads: " + i);
        }
    }

    /* renamed from: b */
    public final void m32294b(Context context) {
        synchronized (this) {
            if (context != null) {
                for (AbstractC3518x xVar : this.f6092c.m32655a((C3338jg<Context, AbstractC3518x>) context)) {
                    xVar.mo32284c();
                }
            }
        }
    }

    /* renamed from: b */
    public final boolean m32293b(Context context, AbstractC3518x xVar) {
        synchronized (this) {
            if (context == null || xVar == null) {
                return false;
            }
            this.f6091b.remove(xVar.mo32283d());
            return this.f6092c.m32650b(context, xVar);
        }
    }

    /* renamed from: c */
    public final void m32292c(Context context) {
        synchronized (this) {
            if (context != null) {
                for (AbstractC3518x xVar : m32291d(context)) {
                    xVar.mo32290a();
                }
            }
        }
    }

    /* renamed from: d */
    public final List<AbstractC3518x> m32291d(Context context) {
        synchronized (this) {
            if (context == null) {
                return Collections.emptyList();
            }
            return new ArrayList(this.f6092c.m32655a((C3338jg<Context, AbstractC3518x>) context));
        }
    }
}
