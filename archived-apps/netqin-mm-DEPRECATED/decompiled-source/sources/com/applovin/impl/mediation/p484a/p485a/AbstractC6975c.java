package com.applovin.impl.mediation.p484a.p485a;

import android.text.SpannedString;
import p131c.p135b.p156c.C2452d;
/* renamed from: com.applovin.impl.mediation.a.a.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/a/c.class */
public abstract class AbstractC6975c {

    /* renamed from: a */
    public EnumC6976a f21419a;

    /* renamed from: b */
    public SpannedString f21420b;

    /* renamed from: c */
    public SpannedString f21421c;

    /* renamed from: com.applovin.impl.mediation.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/a/c$a.class */
    public enum EnumC6976a {
        SECTION(0),
        SIMPLE(1),
        DETAIL(2),
        RIGHT_DETAIL(3),
        COUNT(4);
        

        /* renamed from: f */
        public final int f21428f;

        EnumC6976a(int i) {
            this.f21428f = i;
        }

        /* renamed from: a */
        public int m19177a() {
            return this.f21428f;
        }

        /* renamed from: b */
        public int m19176b() {
            if (this == SECTION) {
                return C2452d.list_section;
            }
            if (this == SIMPLE) {
                return 17367043;
            }
            return this == DETAIL ? C2452d.list_item_detail : C2452d.list_item_right_detail;
        }
    }

    public AbstractC6975c(EnumC6976a aVar) {
        this.f21419a = aVar;
    }

    /* renamed from: j */
    public static int m19178j() {
        return EnumC6976a.COUNT.m19177a();
    }

    /* renamed from: a */
    public boolean mo19137a() {
        return false;
    }

    /* renamed from: b */
    public SpannedString mo19146b() {
        return this.f21420b;
    }

    /* renamed from: c */
    public SpannedString mo19145c() {
        return this.f21421c;
    }

    /* renamed from: d */
    public int m19181d() {
        return this.f21419a.m19177a();
    }

    /* renamed from: e */
    public int m19180e() {
        return this.f21419a.m19176b();
    }

    /* renamed from: f */
    public int mo19144f() {
        return 0;
    }

    /* renamed from: g */
    public int m19179g() {
        return 0;
    }

    /* renamed from: h */
    public int mo19136h() {
        return 0;
    }

    /* renamed from: i */
    public int mo19135i() {
        return 0;
    }
}
