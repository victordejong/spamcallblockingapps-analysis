package p193e.p194a.p437c.p610y;

import java.io.BufferedReader;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10011a;
import p193e.p194a.p437c.p531c0.C10013b;
import p193e.p194a.p437c.p531c0.C10018e;
import p193e.p194a.p437c.p580r.p587h.C10552g;
import s1.g;
import s1.u.s;
import s1.u.t;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.y.k */
/* loaded from: classes10-dex2jar.jar:e/a/c/y/k.class */
public final class C10886k {

    /* renamed from: a */
    public final g f32315a = C25225a.m3978P1(new C10887a());

    /* renamed from: b */
    public final AbstractC10011a f32316b;

    /* renamed from: c */
    public final AbstractC8438a f32317c;

    /* renamed from: d */
    public final AbstractC9691j f32318d;

    /* renamed from: e.a.c.y.k$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/y/k$a.class */
    public static final class C10887a extends m implements a<List<? extends String>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10887a() {
            super(0);
            C10886k.this = r4;
        }

        /* JADX WARN: Finally extract failed */
        public Object invoke() {
            List list;
            Map map;
            List list2 = s.a;
            if (!C10886k.this.f32318d.mo27252i()) {
                list = list2;
            } else {
                String string = C10886k.this.f32317c.getString("profileCountryIso");
                list = list2;
                if (string != null) {
                    l.d(string, "accountSettings.getStrin…: return@lazy emptyList()");
                    C10013b c10013b = (C10013b) C10886k.this.f32316b;
                    Objects.requireNonNull(c10013b);
                    BufferedReader bufferedReader = null;
                    BufferedReader bufferedReader2 = null;
                    try {
                        try {
                            BufferedReader mo26890b = c10013b.f29852b.mo26890b("smartcards/smart_card_with_message.json");
                            Object e = c10013b.f29851a.e(mo26890b, new C10018e().getType());
                            l.d(e, "gson.fromJson(bufferRead…List<String>>>() {}.type)");
                            bufferedReader2 = mo26890b;
                            bufferedReader = mo26890b;
                            bufferedReader = mo26890b;
                            map = (Map) e;
                        } catch (Exception e2) {
                            bufferedReader2 = bufferedReader;
                            map = t.a;
                        }
                        c10013b.f29852b.mo26891a(bufferedReader);
                        List list3 = (List) map.get(string);
                        list = list2;
                        if (list3 != null) {
                            list = list3;
                        }
                    } catch (Throwable th) {
                        c10013b.f29852b.mo26891a(bufferedReader2);
                        throw th;
                    }
                }
            }
            return list;
        }
    }

    @Inject
    public C10886k(AbstractC10011a abstractC10011a, AbstractC8438a abstractC8438a, AbstractC9691j abstractC9691j) {
        l.e(abstractC10011a, "assetsReader");
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC9691j, "insightsStatusProvider");
        this.f32316b = abstractC10011a;
        this.f32317c = abstractC8438a;
        this.f32318d = abstractC9691j;
    }

    /* renamed from: a */
    public final int m25530a(String str) {
        l.e(str, "pdoCategory");
        return (l.a(str, "Updates") || ((List) this.f32315a.getValue()).contains(C10552g.m25785a(str))) ? 2 : 0;
    }
}
