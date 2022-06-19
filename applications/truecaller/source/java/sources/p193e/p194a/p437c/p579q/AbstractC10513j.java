package p193e.p194a.p437c.p579q;

import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.AbstractC10518b;
import p193e.p194a.p437c.p580r.p589j.AbstractC10567a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.q.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/q/j.class */
public abstract class AbstractC10513j {

    /* renamed from: e.a.c.q.j$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/q/j$a.class */
    public static final class C10514a extends AbstractC10513j {

        /* renamed from: a */
        public final long f31260a;

        /* renamed from: b */
        public final long f31261b;

        /* renamed from: c */
        public final String f31262c;

        /* renamed from: d */
        public final String f31263d;

        /* renamed from: e */
        public final AbstractC10567a f31264e;

        /* renamed from: f */
        public final AbstractC10567a f31265f;

        /* renamed from: g */
        public final List<AbstractC10567a> f31266g;

        /* renamed from: h */
        public final AbstractC10518b.C10520b f31267h;

        /* renamed from: i */
        public final int f31268i;

        /* renamed from: j */
        public final boolean f31269j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C10514a(long j, long j2, String str, String str2, AbstractC10567a abstractC10567a, AbstractC10567a abstractC10567a2, List<? extends AbstractC10567a> list, AbstractC10518b.C10520b c10520b, int i, boolean z) {
            super(null);
            l.e(str, "address");
            l.e(str2, "category");
            l.e(abstractC10567a, "primaryAction");
            l.e(abstractC10567a2, "secondaryAction");
            l.e(list, "overflowActions");
            l.e(c10520b, "billUiSchema");
            this.f31260a = j;
            this.f31261b = j2;
            this.f31262c = str;
            this.f31263d = str2;
            this.f31264e = abstractC10567a;
            this.f31265f = abstractC10567a2;
            this.f31266g = list;
            this.f31267h = c10520b;
            this.f31268i = i;
            this.f31269j = z;
        }

        /* renamed from: a */
        public final boolean m25830a() {
            boolean z = true;
            if (!(this.f31264e instanceof AbstractC10567a.AbstractC10568a.C10569a)) {
                z = true;
                if (!(this.f31265f instanceof AbstractC10567a.AbstractC10568a.C10569a)) {
                    List<AbstractC10567a> list = this.f31266g;
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : list) {
                        if (obj instanceof AbstractC10567a.AbstractC10568a.C10569a) {
                            arrayList.add(obj);
                        }
                    }
                    z = arrayList.isEmpty() ^ true;
                }
            }
            return z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10514a)) {
                    return false;
                }
                C10514a c10514a = (C10514a) obj;
                return this.f31260a == c10514a.f31260a && this.f31261b == c10514a.f31261b && l.a(this.f31262c, c10514a.f31262c) && l.a(this.f31263d, c10514a.f31263d) && l.a(this.f31264e, c10514a.f31264e) && l.a(this.f31265f, c10514a.f31265f) && l.a(this.f31266g, c10514a.f31266g) && l.a(this.f31267h, c10514a.f31267h) && this.f31268i == c10514a.f31268i && this.f31269j == c10514a.f31269j;
            }
            return true;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f31260a);
            int m34274a2 = C4876d.m34274a(this.f31261b);
            String str = this.f31262c;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f31263d;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            AbstractC10567a abstractC10567a = this.f31264e;
            int hashCode3 = abstractC10567a != null ? abstractC10567a.hashCode() : 0;
            AbstractC10567a abstractC10567a2 = this.f31265f;
            int hashCode4 = abstractC10567a2 != null ? abstractC10567a2.hashCode() : 0;
            List<AbstractC10567a> list = this.f31266g;
            int hashCode5 = list != null ? list.hashCode() : 0;
            AbstractC10518b.C10520b c10520b = this.f31267h;
            if (c10520b != null) {
                i = c10520b.hashCode();
            }
            int i2 = this.f31268i;
            boolean z = this.f31269j;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            return (((((((((((((((((m34274a * 31) + m34274a2) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i) * 31) + i2) * 31) + i3;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("BillUpcomingData(id=");
            m8728C.append(this.f31260a);
            m8728C.append(", conversationId=");
            m8728C.append(this.f31261b);
            m8728C.append(", address=");
            m8728C.append(this.f31262c);
            m8728C.append(", category=");
            m8728C.append(this.f31263d);
            m8728C.append(", primaryAction=");
            m8728C.append(this.f31264e);
            m8728C.append(", secondaryAction=");
            m8728C.append(this.f31265f);
            m8728C.append(", overflowActions=");
            m8728C.append(this.f31266g);
            m8728C.append(", billUiSchema=");
            m8728C.append(this.f31267h);
            m8728C.append(", spamCategory=");
            m8728C.append(this.f31268i);
            m8728C.append(", isIM=");
            return C22128a.m8590o(m8728C, this.f31269j, ")");
        }
    }

    /* renamed from: e.a.c.q.j$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/q/j$b.class */
    public static final class C10515b extends AbstractC10513j {

        /* renamed from: a */
        public final long f31270a;

        /* renamed from: b */
        public final long f31271b;

        /* renamed from: c */
        public final String f31272c;

        /* renamed from: d */
        public final String f31273d;

        /* renamed from: e */
        public final AbstractC10567a f31274e;

        /* renamed from: f */
        public final AbstractC10567a f31275f;

        /* renamed from: g */
        public final List<AbstractC10567a> f31276g;

        /* renamed from: h */
        public final AbstractC10518b.C10524f f31277h;

        /* renamed from: i */
        public final int f31278i;

        /* renamed from: j */
        public final boolean f31279j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C10515b(long j, long j2, String str, String str2, AbstractC10567a abstractC10567a, AbstractC10567a abstractC10567a2, List<? extends AbstractC10567a> list, AbstractC10518b.C10524f c10524f, int i, boolean z) {
            super(null);
            l.e(str, "address");
            l.e(str2, "category");
            l.e(abstractC10567a, "primaryAction");
            l.e(abstractC10567a2, "secondaryAction");
            l.e(list, "overflowActions");
            l.e(c10524f, "uiSchema");
            this.f31270a = j;
            this.f31271b = j2;
            this.f31272c = str;
            this.f31273d = str2;
            this.f31274e = abstractC10567a;
            this.f31275f = abstractC10567a2;
            this.f31276g = list;
            this.f31277h = c10524f;
            this.f31278i = i;
            this.f31279j = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10515b)) {
                    return false;
                }
                C10515b c10515b = (C10515b) obj;
                return this.f31270a == c10515b.f31270a && this.f31271b == c10515b.f31271b && l.a(this.f31272c, c10515b.f31272c) && l.a(this.f31273d, c10515b.f31273d) && l.a(this.f31274e, c10515b.f31274e) && l.a(this.f31275f, c10515b.f31275f) && l.a(this.f31276g, c10515b.f31276g) && l.a(this.f31277h, c10515b.f31277h) && this.f31278i == c10515b.f31278i && this.f31279j == c10515b.f31279j;
            }
            return true;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f31270a);
            int m34274a2 = C4876d.m34274a(this.f31271b);
            String str = this.f31272c;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f31273d;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            AbstractC10567a abstractC10567a = this.f31274e;
            int hashCode3 = abstractC10567a != null ? abstractC10567a.hashCode() : 0;
            AbstractC10567a abstractC10567a2 = this.f31275f;
            int hashCode4 = abstractC10567a2 != null ? abstractC10567a2.hashCode() : 0;
            List<AbstractC10567a> list = this.f31276g;
            int hashCode5 = list != null ? list.hashCode() : 0;
            AbstractC10518b.C10524f c10524f = this.f31277h;
            if (c10524f != null) {
                i = c10524f.hashCode();
            }
            int i2 = this.f31278i;
            boolean z = this.f31279j;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            return (((((((((((((((((m34274a * 31) + m34274a2) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i) * 31) + i2) * 31) + i3;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("TravelUpcomingData(id=");
            m8728C.append(this.f31270a);
            m8728C.append(", conversationId=");
            m8728C.append(this.f31271b);
            m8728C.append(", address=");
            m8728C.append(this.f31272c);
            m8728C.append(", category=");
            m8728C.append(this.f31273d);
            m8728C.append(", primaryAction=");
            m8728C.append(this.f31274e);
            m8728C.append(", secondaryAction=");
            m8728C.append(this.f31275f);
            m8728C.append(", overflowActions=");
            m8728C.append(this.f31276g);
            m8728C.append(", uiSchema=");
            m8728C.append(this.f31277h);
            m8728C.append(", spamCategory=");
            m8728C.append(this.f31278i);
            m8728C.append(", isIM=");
            return C22128a.m8590o(m8728C, this.f31279j, ")");
        }
    }

    public AbstractC10513j() {
    }

    public AbstractC10513j(f fVar) {
    }
}
