package com.google.android.datatransport.cct.p020f;

import com.google.android.datatransport.cct.f.g;
import java.util.List;
/* renamed from: com.google.android.datatransport.cct.f.m */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/f/m.class */
public abstract class AbstractC0730m {

    /* renamed from: com.google.android.datatransport.cct.f.m$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/f/m$a.class */
    public static abstract class AbstractC0731a {
        /* renamed from: a */
        public abstract AbstractC0730m m3869a();

        /* renamed from: b */
        public abstract AbstractC0731a m3868b(AbstractC0725k abstractC0725k);

        /* renamed from: c */
        public abstract AbstractC0731a m3867c(List<AbstractC0728l> list);

        /* renamed from: d */
        abstract AbstractC0731a m3866d(Integer num);

        /* renamed from: e */
        abstract AbstractC0731a m3865e(String str);

        /* renamed from: f */
        public abstract AbstractC0731a m3864f(EnumC0737p enumC0737p);

        /* renamed from: g */
        public abstract AbstractC0731a m3863g(long j);

        /* renamed from: h */
        public abstract AbstractC0731a m3862h(long j);

        /* renamed from: i */
        public AbstractC0731a m3861i(int i) {
            m3866d(Integer.valueOf(i));
            return this;
        }

        /* renamed from: j */
        public AbstractC0731a m3860j(String str) {
            m3865e(str);
            return this;
        }
    }

    /* renamed from: a */
    public static AbstractC0731a m3877a() {
        return new g.b();
    }

    /* renamed from: b */
    public abstract AbstractC0725k m3876b();

    /* renamed from: c */
    public abstract List<AbstractC0728l> m3875c();

    /* renamed from: d */
    public abstract Integer m3874d();

    /* renamed from: e */
    public abstract String m3873e();

    /* renamed from: f */
    public abstract EnumC0737p m3872f();

    /* renamed from: g */
    public abstract long m3871g();

    /* renamed from: h */
    public abstract long m3870h();
}
