package p193e.p194a.p837h0.p844w;

import com.truecaller.blocking.FiltersContract;
/* renamed from: e.a.h0.w.a */
/* loaded from: classes9-dex2jar.jar:e/a/h0/w/a.class */
public class C14872a {

    /* renamed from: a */
    public final long f42499a;

    /* renamed from: b */
    public final int f42500b;

    /* renamed from: c */
    public final int f42501c;

    /* renamed from: d */
    public final String f42502d;

    /* renamed from: e */
    public final String f42503e;

    /* renamed from: f */
    public final String f42504f;

    /* renamed from: g */
    public final FiltersContract.Filters.WildCardType f42505g;

    /* renamed from: h */
    public final Long f42506h;

    /* renamed from: i */
    public final Integer f42507i;

    /* renamed from: e.a.h0.w.a$b */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/w/a$b.class */
    public static class C14874b {

        /* renamed from: a */
        public long f42508a;

        /* renamed from: b */
        public int f42509b;

        /* renamed from: c */
        public int f42510c;

        /* renamed from: d */
        public String f42511d;

        /* renamed from: e */
        public String f42512e;

        /* renamed from: f */
        public String f42513f;

        /* renamed from: g */
        public String f42514g;

        /* renamed from: h */
        public int f42515h;

        /* renamed from: i */
        public Long f42516i;

        /* renamed from: j */
        public Integer f42517j;

        /* renamed from: k */
        public String f42518k;

        /* renamed from: l */
        public FiltersContract.Filters.WildCardType f42519l;
    }

    public C14872a(C14874b c14874b, C14873a c14873a) {
        this.f42499a = c14874b.f42508a;
        this.f42500b = c14874b.f42509b;
        this.f42501c = c14874b.f42510c;
        this.f42505g = c14874b.f42519l;
        this.f42502d = c14874b.f42511d;
        String str = c14874b.f42512e;
        this.f42503e = str == null ? "" : str;
        this.f42504f = FiltersContract.AbstractC3553a.f10462a.contains(c14874b.f42513f) ? c14874b.f42513f : "OTHER";
        this.f42506h = c14874b.f42516i;
        this.f42507i = c14874b.f42517j;
    }

    /* renamed from: a */
    public boolean m19500a() {
        return this.f42505g != FiltersContract.Filters.WildCardType.NONE;
    }

    /* renamed from: b */
    public boolean m19499b() {
        return "COUNTRY_CODE".equals(this.f42504f);
    }
}
