package p012b.p076s.p078b.p079a.p086s0;

import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* renamed from: b.s.b.a.s0.o */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/o.class */
public interface AbstractC1358o {

    /* renamed from: b.s.b.a.s0.o$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/o$a.class */
    public static final class C1359a {

        /* renamed from: a */
        public final C1361p f5356a;

        /* renamed from: b */
        public final C1361p f5357b;

        public C1359a(C1361p pVar) {
            this(pVar, pVar);
        }

        public C1359a(C1361p pVar, C1361p pVar2) {
            C1160a.m34522a(pVar);
            this.f5356a = pVar;
            C1160a.m34522a(pVar2);
            this.f5357b = pVar2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C1359a.class != obj.getClass()) {
                return false;
            }
            C1359a aVar = (C1359a) obj;
            if (!this.f5356a.equals(aVar.f5356a) || !this.f5357b.equals(aVar.f5357b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f5356a.hashCode() * 31) + this.f5357b.hashCode();
        }

        public String toString() {
            String str;
            String valueOf = String.valueOf(this.f5356a);
            if (this.f5356a.equals(this.f5357b)) {
                str = "";
            } else {
                String valueOf2 = String.valueOf(this.f5357b);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 2);
                sb.append(", ");
                sb.append(valueOf2);
                str = sb.toString();
            }
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 2 + String.valueOf(str).length());
            sb2.append("[");
            sb2.append(valueOf);
            sb2.append(str);
            sb2.append("]");
            return sb2.toString();
        }
    }

    /* renamed from: b.s.b.a.s0.o$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/o$b.class */
    public static final class C1360b implements AbstractC1358o {

        /* renamed from: a */
        public final long f5358a;

        /* renamed from: b */
        public final C1359a f5359b;

        public C1360b(long j) {
            this(j, 0L);
        }

        public C1360b(long j, long j2) {
            this.f5358a = j;
            this.f5359b = new C1359a(j2 == 0 ? C1361p.f5360c : new C1361p(0L, j2));
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
        /* renamed from: b */
        public C1359a mo33118b(long j) {
            return this.f5359b;
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
        /* renamed from: b */
        public boolean mo33119b() {
            return false;
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
        /* renamed from: c */
        public long mo33117c() {
            return this.f5358a;
        }
    }

    /* renamed from: b */
    C1359a mo33118b(long j);

    /* renamed from: b */
    boolean mo33119b();

    /* renamed from: c */
    long mo33117c();
}
