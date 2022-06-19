package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import com.android.billingclient.api.Purchase;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* renamed from: com.android.billingclient.api.c */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/c.class */
public abstract class AbstractC0574c {

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.android.billingclient.api.c$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/c$a.class */
    public @interface AbstractC0575a {
    }

    /* renamed from: com.android.billingclient.api.c$b */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/c$b.class */
    public static final class C0576b {

        /* renamed from: a */
        private boolean f2710a;

        /* renamed from: b */
        private final Context f2711b;

        /* renamed from: c */
        private AbstractC0596k f2712c;

        /* synthetic */ C0576b(Context context, C0597k0 c0597k0) {
            this.f2711b = context;
        }

        /* renamed from: a */
        public AbstractC0574c m4222a() {
            Context context = this.f2711b;
            if (context != null) {
                AbstractC0596k abstractC0596k = this.f2712c;
                if (abstractC0596k == null) {
                    throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
                }
                if (!this.f2710a) {
                    throw new IllegalArgumentException("Support for pending purchases must be enabled. Enable this by calling 'enablePendingPurchases()' on BillingClientBuilder.");
                }
                return new d((String) null, true, context, abstractC0596k);
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }

        /* renamed from: b */
        public C0576b m4221b() {
            this.f2710a = true;
            return this;
        }

        /* renamed from: c */
        public C0576b m4220c(AbstractC0596k abstractC0596k) {
            this.f2712c = abstractC0596k;
            return this;
        }
    }

    /* renamed from: g */
    public static C0576b m4227g(Context context) {
        return new C0576b(context, null);
    }

    /* renamed from: a */
    public abstract void m4233a(C0567a c0567a, AbstractC0571b abstractC0571b);

    /* renamed from: b */
    public abstract void m4232b(C0589h c0589h, AbstractC0592i abstractC0592i);

    /* renamed from: c */
    public abstract void m4231c();

    /* renamed from: d */
    public abstract C0586g m4230d(String str);

    /* renamed from: e */
    public abstract boolean m4229e();

    /* renamed from: f */
    public abstract C0586g m4228f(Activity activity, C0583f c0583f);

    /* renamed from: h */
    public abstract void m4226h(String str, AbstractC0594j abstractC0594j);

    /* renamed from: i */
    public abstract Purchase.C0566a m4225i(String str);

    /* renamed from: j */
    public abstract void m4224j(C0598l c0598l, AbstractC0601m abstractC0601m);

    /* renamed from: k */
    public abstract void m4223k(AbstractC0581e abstractC0581e);
}
