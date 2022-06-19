package com.android.billingclient.api;

import java.util.ArrayList;
/* renamed from: com.android.billingclient.api.f */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/f.class */
public class C0583f {

    /* renamed from: a */
    private boolean f2724a;

    /* renamed from: b */
    private String f2725b;

    /* renamed from: c */
    private String f2726c;

    /* renamed from: d */
    private String f2727d;

    /* renamed from: e */
    private String f2728e;

    /* renamed from: f */
    private int f2729f = 0;

    /* renamed from: g */
    private ArrayList<SkuDetails> f2730g;

    /* renamed from: h */
    private boolean f2731h;

    /* renamed from: com.android.billingclient.api.f$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/f$a.class */
    public static class C0584a {

        /* renamed from: a */
        private String f2732a;

        /* renamed from: b */
        private String f2733b;

        /* renamed from: c */
        private String f2734c;

        /* renamed from: d */
        private String f2735d;

        /* renamed from: e */
        private int f2736e = 0;

        /* renamed from: f */
        private ArrayList<SkuDetails> f2737f;

        /* renamed from: g */
        private boolean f2738g;

        /* synthetic */ C0584a(C0623x c0623x) {
        }

        /* renamed from: a */
        public C0583f m4199a() {
            ArrayList<SkuDetails> arrayList = this.f2737f;
            if (arrayList == null || arrayList.isEmpty()) {
                throw new IllegalArgumentException("SkuDetails must be provided.");
            }
            ArrayList<SkuDetails> arrayList2 = this.f2737f;
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                if (arrayList2.get(i) == null) {
                    throw new IllegalArgumentException("SKU cannot be null.");
                }
            }
            if (this.f2737f.size() > 1) {
                SkuDetails skuDetails = this.f2737f.get(0);
                String m4244l = skuDetails.m4244l();
                ArrayList<SkuDetails> arrayList3 = this.f2737f;
                int size2 = arrayList3.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    if (!m4244l.equals(arrayList3.get(i2).m4244l())) {
                        throw new IllegalArgumentException("SKUs should have the same type.");
                    }
                }
                String m4243m = skuDetails.m4243m();
                ArrayList<SkuDetails> arrayList4 = this.f2737f;
                int size3 = arrayList4.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    if (!m4243m.equals(arrayList4.get(i3).m4243m())) {
                        throw new IllegalArgumentException("All SKUs must have the same package name.");
                    }
                }
            }
            C0583f c0583f = new C0583f(null);
            c0583f.f2724a = true ^ this.f2737f.get(0).m4243m().isEmpty();
            c0583f.f2725b = this.f2732a;
            c0583f.f2728e = this.f2735d;
            c0583f.f2726c = this.f2733b;
            c0583f.f2727d = this.f2734c;
            c0583f.f2729f = this.f2736e;
            c0583f.f2730g = this.f2737f;
            c0583f.f2731h = this.f2738g;
            return c0583f;
        }

        /* renamed from: b */
        public C0584a m4198b(String str, String str2) {
            this.f2733b = str;
            this.f2734c = str2;
            return this;
        }

        /* renamed from: c */
        public C0584a m4197c(int i) {
            this.f2736e = i;
            return this;
        }

        /* renamed from: d */
        public C0584a m4196d(SkuDetails skuDetails) {
            ArrayList<SkuDetails> arrayList = new ArrayList<>();
            arrayList.add(skuDetails);
            this.f2737f = arrayList;
            return this;
        }
    }

    /* synthetic */ C0583f(C0623x c0623x) {
    }

    /* renamed from: e */
    public static C0584a m4212e() {
        return new C0584a(null);
    }

    /* renamed from: a */
    public String m4216a() {
        return this.f2726c;
    }

    /* renamed from: b */
    public String m4215b() {
        return this.f2727d;
    }

    /* renamed from: c */
    public int m4214c() {
        return this.f2729f;
    }

    /* renamed from: d */
    public boolean m4213d() {
        return this.f2731h;
    }

    /* renamed from: f */
    public final ArrayList<SkuDetails> m4211f() {
        ArrayList<SkuDetails> arrayList = new ArrayList<>();
        arrayList.addAll(this.f2730g);
        return arrayList;
    }

    /* renamed from: g */
    public final String m4210g() {
        return this.f2725b;
    }

    /* renamed from: h */
    final boolean m4209h() {
        return (!this.f2731h && this.f2725b == null && this.f2728e == null && this.f2729f == 0 && !this.f2724a) ? false : true;
    }

    /* renamed from: i */
    public final String m4208i() {
        return this.f2728e;
    }
}
