package com.bumptech.glide.load.c;

import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.a.c;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/f.class */
public final class f<A> implements j<A, g> {

    /* renamed from: a  reason: collision with root package name */
    private final j<A, InputStream> f3567a;

    /* renamed from: b  reason: collision with root package name */
    private final j<A, ParcelFileDescriptor> f3568b;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/f$a.class */
    static final class a implements c<g> {

        /* renamed from: a  reason: collision with root package name */
        private final c<InputStream> f3569a;

        /* renamed from: b  reason: collision with root package name */
        private final c<ParcelFileDescriptor> f3570b;

        public a(c<InputStream> cVar, c<ParcelFileDescriptor> cVar2) {
            this.f3569a = cVar;
            this.f3570b = cVar2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0021 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0070 -> B:9:0x0030). Please submit an issue!!! */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.bumptech.glide.load.c.g a(int r6) {
            /*
                r5 = this;
                r0 = 0
                r7 = r0
                r0 = r5
                com.bumptech.glide.load.a.c<java.io.InputStream> r0 = r0.f3569a
                if (r0 == 0) goto L_0x0076
                r0 = r5
                com.bumptech.glide.load.a.c<java.io.InputStream> r0 = r0.f3569a     // Catch: Exception -> 0x003b
                r1 = r6
                java.lang.Object r0 = r0.a(r1)     // Catch: Exception -> 0x003b
                java.io.InputStream r0 = (java.io.InputStream) r0     // Catch: Exception -> 0x003b
                r8 = r0
            L_0x0017:
                r0 = r7
                r9 = r0
                r0 = r5
                com.bumptech.glide.load.a.c<android.os.ParcelFileDescriptor> r0 = r0.f3570b
                if (r0 == 0) goto L_0x0030
                r0 = r5
                com.bumptech.glide.load.a.c<android.os.ParcelFileDescriptor> r0 = r0.f3570b     // Catch: Exception -> 0x0057
                r1 = r6
                java.lang.Object r0 = r0.a(r1)     // Catch: Exception -> 0x0057
                android.os.ParcelFileDescriptor r0 = (android.os.ParcelFileDescriptor) r0     // Catch: Exception -> 0x0057
                r9 = r0
            L_0x0030:
                com.bumptech.glide.load.c.g r0 = new com.bumptech.glide.load.c.g     // Catch: Exception -> 0x0057
                r1 = r0
                r2 = r8
                r3 = r9
                r1.<init>(r2, r3)
                return r0
            L_0x003b:
                r8 = move-exception
                java.lang.String r0 = "IVML"
                r1 = 2
                boolean r0 = android.util.Log.isLoggable(r0, r1)
                if (r0 == 0) goto L_0x004e
                java.lang.String r0 = "IVML"
                java.lang.String r1 = "Exception fetching input stream, trying ParcelFileDescriptor"
                r2 = r8
                int r0 = android.util.Log.v(r0, r1, r2)
            L_0x004e:
                r0 = r5
                com.bumptech.glide.load.a.c<android.os.ParcelFileDescriptor> r0 = r0.f3570b
                if (r0 != 0) goto L_0x0076
                r0 = r8
                throw r0
            L_0x0057:
                r10 = move-exception
                java.lang.String r0 = "IVML"
                r1 = 2
                boolean r0 = android.util.Log.isLoggable(r0, r1)
                if (r0 == 0) goto L_0x006c
                java.lang.String r0 = "IVML"
                java.lang.String r1 = "Exception fetching ParcelFileDescriptor"
                r2 = r10
                int r0 = android.util.Log.v(r0, r1, r2)
            L_0x006c:
                r0 = r7
                r9 = r0
                r0 = r8
                if (r0 != 0) goto L_0x0030
                r0 = r10
                throw r0
            L_0x0076:
                r0 = 0
                r8 = r0
                goto L_0x0017
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.c.f.a.a(int):com.bumptech.glide.load.c.g");
        }

        @Override // com.bumptech.glide.load.a.c
        public final void a() {
            if (this.f3569a != null) {
                this.f3569a.a();
            }
            if (this.f3570b != null) {
                this.f3570b.a();
            }
        }

        @Override // com.bumptech.glide.load.a.c
        public final String b() {
            return this.f3569a != null ? this.f3569a.b() : this.f3570b.b();
        }

        @Override // com.bumptech.glide.load.a.c
        public final void c() {
            if (this.f3569a != null) {
                this.f3569a.c();
            }
            if (this.f3570b != null) {
                this.f3570b.c();
            }
        }
    }

    public f(j<A, InputStream> jVar, j<A, ParcelFileDescriptor> jVar2) {
        if (jVar == null && jVar2 == null) {
            throw new NullPointerException("At least one of streamLoader and fileDescriptorLoader must be non null");
        }
        this.f3567a = jVar;
        this.f3568b = jVar2;
    }

    @Override // com.bumptech.glide.load.c.j
    public final c<g> a(A a2, int i, int i2) {
        a aVar = null;
        c<InputStream> a3 = this.f3567a != null ? this.f3567a.a(a2, i, i2) : null;
        c<ParcelFileDescriptor> a4 = this.f3568b != null ? this.f3568b.a(a2, i, i2) : null;
        if (!(a3 == null && a4 == null)) {
            aVar = new a(a3, a4);
        }
        return aVar;
    }
}
