package p193e.p194a.p437c.p606w;

import com.truecaller.insights.insightsui.SenderFilterEntity;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p579q.C10511h;
import p193e.p194a.p437c.p606w.p607o0.p608k.C10833b;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
/* renamed from: e.a.c.w.t */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/t.class */
public final class C10846t implements f<List<? extends C10511h>> {

    /* renamed from: a */
    public final /* synthetic */ f f32199a;

    /* renamed from: b */
    public final /* synthetic */ C10850u f32200b;

    /* renamed from: c */
    public final /* synthetic */ C10833b f32201c;

    /* renamed from: d */
    public final /* synthetic */ Set f32202d;

    /* renamed from: e.a.c.w.t$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/t$a.class */
    public static final class C10847a implements g<List<? extends SenderFilterEntity>> {

        /* renamed from: a */
        public final /* synthetic */ g f32203a;

        /* renamed from: b */
        public final /* synthetic */ C10850u f32204b;

        /* renamed from: c */
        public final /* synthetic */ C10833b f32205c;

        /* renamed from: d */
        public final /* synthetic */ Set f32206d;

        @e(c = "com.truecaller.insights.repository.FilterDataRepositoryImpl$getTopSenders$$inlined$map$1$2", f = "FilterDataRepository.kt", l = {139, 161}, m = "emit")
        /* renamed from: e.a.c.w.t$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/w/t$a$a.class */
        public static final class C10848a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f32207d;

            /* renamed from: e */
            public int f32208e;

            /* renamed from: f */
            public Object f32209f;

            /* renamed from: h */
            public Object f32211h;

            /* renamed from: i */
            public Object f32212i;

            /* renamed from: j */
            public Object f32213j;

            /* renamed from: k */
            public Object f32214k;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10848a(d dVar) {
                super(dVar);
                C10847a.this = r4;
            }

            /* renamed from: s */
            public final Object m25560s(Object obj) {
                this.f32207d = obj;
                this.f32208e |= Integer.MIN_VALUE;
                return C10847a.this.m25561a(null, this);
            }
        }

        /* renamed from: e.a.c.w.t$a$b */
        /* loaded from: classes10-dex2jar.jar:e/a/c/w/t$a$b.class */
        public static final class C10849b<T> implements Comparator {
            public C10849b() {
                C10847a.this = r4;
            }

            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return C25225a.m4000K(Boolean.valueOf(C10847a.this.f32206d.contains(((SenderFilterEntity) t2).getSenderId())), Boolean.valueOf(C10847a.this.f32206d.contains(((SenderFilterEntity) t).getSenderId())));
            }
        }

        public C10847a(g gVar, C10850u c10850u, C10833b c10833b, Set set) {
            this.f32203a = gVar;
            this.f32204b = c10850u;
            this.f32205c = c10833b;
            this.f32206d = set;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0096  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x028b  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x0311  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x031d  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x02fa -> B:72:0x0300). Please submit an issue!!! */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m25561a(java.lang.Object r8, s1.w.d r9) {
            /*
                Method dump skipped, instructions count: 1283
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.C10846t.C10847a.m25561a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    public C10846t(f fVar, C10850u c10850u, C10833b c10833b, Set set) {
        this.f32199a = fVar;
        this.f32200b = c10850u;
        this.f32201c = c10833b;
        this.f32202d = set;
    }

    /* renamed from: c */
    public Object m25562c(g gVar, d dVar) {
        Object c = this.f32199a.c(new C10847a(gVar, this.f32200b, this.f32201c, this.f32202d), dVar);
        return c == a.a ? c : s.a;
    }
}
