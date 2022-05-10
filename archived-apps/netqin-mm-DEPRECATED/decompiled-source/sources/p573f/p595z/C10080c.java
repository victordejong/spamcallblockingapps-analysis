package p573f.p595z;

import p573f.p590w.p592c.C10057o;
/* renamed from: f.z.c */
/* loaded from: classes2-dex2jar.jar:f/z/c.class */
public final class C10080c extends C10077a {

    /* renamed from: f */
    public static final C10081a f37209f = new C10081a(null);

    /* renamed from: e */
    public static final C10080c f37208e = new C10080c(1, 0);

    /* renamed from: f.z.c$a */
    /* loaded from: classes2-dex2jar.jar:f/z/c$a.class */
    public static final class C10081a {
        public C10081a() {
        }

        public /* synthetic */ C10081a(C10057o oVar) {
            this();
        }

        /* renamed from: a */
        public final C10080c m1572a() {
            return C10080c.f37208e;
        }
    }

    public C10080c(int i, int i2) {
        super(i, i2, 1);
    }

    /* renamed from: b */
    public Integer m1575b() {
        return Integer.valueOf(getLast());
    }

    /* renamed from: c */
    public Integer m1574c() {
        return Integer.valueOf(getFirst());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (getLast() == r0.getLast()) goto L_0x0035;
     */
    @Override // p573f.p595z.C10077a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof p573f.p595z.C10080c
            if (r0 == 0) goto L_0x003a
            r0 = r3
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0018
            r0 = r4
            f.z.c r0 = (p573f.p595z.C10080c) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0035
        L_0x0018:
            r0 = r3
            int r0 = r0.getFirst()
            r5 = r0
            r0 = r4
            f.z.c r0 = (p573f.p595z.C10080c) r0
            r4 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.getFirst()
            if (r0 != r1) goto L_0x003a
            r0 = r3
            int r0 = r0.getLast()
            r1 = r4
            int r1 = r1.getLast()
            if (r0 != r1) goto L_0x003a
        L_0x0035:
            r0 = 1
            r6 = r0
            goto L_0x003c
        L_0x003a:
            r0 = 0
            r6 = r0
        L_0x003c:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p573f.p595z.C10080c.equals(java.lang.Object):boolean");
    }

    @Override // p573f.p595z.C10077a
    public int hashCode() {
        return isEmpty() ? -1 : (getFirst() * 31) + getLast();
    }

    @Override // p573f.p595z.C10077a
    public boolean isEmpty() {
        return getFirst() > getLast();
    }

    @Override // p573f.p595z.C10077a
    public String toString() {
        return getFirst() + ".." + getLast();
    }
}
