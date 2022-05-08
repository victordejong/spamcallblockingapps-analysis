package com.bumptech.glide.load.b;

import android.util.Log;
import com.bumptech.glide.i.d;
import com.bumptech.glide.load.b.b.a;
import com.bumptech.glide.load.g;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a.class */
public final class a<A, T, Z> {
    private static final b e = new b();

    /* renamed from: a  reason: collision with root package name */
    final f f3484a;

    /* renamed from: b  reason: collision with root package name */
    public final com.bumptech.glide.load.a.c<A> f3485b;
    final com.bumptech.glide.load.b.b c;
    public volatile boolean d;
    private final int f;
    private final int g;
    private final com.bumptech.glide.f.b<A, T> h;
    private final g<T> i;
    private final com.bumptech.glide.load.resource.e.c<T, Z> j;
    private final AbstractC0096a k;
    private final int l;
    private final b m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a$a.class */
    public interface AbstractC0096a {
        com.bumptech.glide.load.b.b.a a();
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a$b.class */
    static final class b {
        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a$c.class */
    public final class c<DataType> implements a.b {

        /* renamed from: b  reason: collision with root package name */
        private final com.bumptech.glide.load.b<DataType> f3492b;
        private final DataType c;

        public c(com.bumptech.glide.load.b<DataType> bVar, DataType datatype) {
            this.f3492b = bVar;
            this.c = datatype;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0072 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r5v0, types: [java.io.File] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.io.OutputStream] */
        /* JADX WARN: Type inference failed for: r5v3 */
        @Override // com.bumptech.glide.load.b.b.a.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean a(java.io.File r5) {
            /*
                r4 = this;
                r0 = 0
                r6 = r0
                r0 = r4
                com.bumptech.glide.load.b.a r0 = com.bumptech.glide.load.b.a.this     // Catch: FileNotFoundException -> 0x0038, all -> 0x006b
                com.bumptech.glide.load.b.a$b r0 = com.bumptech.glide.load.b.a.a(r0)     // Catch: FileNotFoundException -> 0x0038, all -> 0x006b
                java.io.BufferedOutputStream r0 = new java.io.BufferedOutputStream     // Catch: FileNotFoundException -> 0x0038, all -> 0x006b
                r7 = r0
                java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: FileNotFoundException -> 0x0038, all -> 0x006b
                r8 = r0
                r0 = r8
                r1 = r5
                r0.<init>(r1)     // Catch: FileNotFoundException -> 0x0038, all -> 0x006b
                r0 = r7
                r1 = r8
                r0.<init>(r1)     // Catch: FileNotFoundException -> 0x0038, all -> 0x006b
                r0 = r7
                r5 = r0
                r0 = r4
                com.bumptech.glide.load.b<DataType> r0 = r0.f3492b     // Catch: all -> 0x0080, FileNotFoundException -> 0x0084
                r1 = r4
                DataType r1 = r1.c     // Catch: all -> 0x0080, FileNotFoundException -> 0x0084
                r2 = r7
                boolean r0 = r0.a(r1, r2)     // Catch: all -> 0x0080, FileNotFoundException -> 0x0084
                r9 = r0
                r0 = r7
                r0.close()     // Catch: IOException -> 0x0078
            L_0x0035:
                r0 = r9
                return r0
            L_0x0038:
                r8 = move-exception
                r0 = 0
                r7 = r0
            L_0x003c:
                r0 = r7
                r5 = r0
                java.lang.String r0 = "DecodeJob"
                r1 = 3
                boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: all -> 0x0080
                if (r0 == 0) goto L_0x0053
                r0 = r7
                r5 = r0
                java.lang.String r0 = "DecodeJob"
                java.lang.String r1 = "Failed to find file to write to disk cache"
                r2 = r8
                int r0 = android.util.Log.d(r0, r1, r2)     // Catch: all -> 0x0080
            L_0x0053:
                r0 = r6
                r9 = r0
                r0 = r7
                if (r0 == 0) goto L_0x0035
                r0 = r7
                r0.close()     // Catch: IOException -> 0x0064
                r0 = r6
                r9 = r0
                goto L_0x0035
            L_0x0064:
                r5 = move-exception
                r0 = r6
                r9 = r0
                goto L_0x0035
            L_0x006b:
                r7 = move-exception
                r0 = 0
                r5 = r0
            L_0x006e:
                r0 = r5
                if (r0 == 0) goto L_0x0076
                r0 = r5
                r0.close()     // Catch: IOException -> 0x007c
            L_0x0076:
                r0 = r7
                throw r0
            L_0x0078:
                r5 = move-exception
                goto L_0x0035
            L_0x007c:
                r5 = move-exception
                goto L_0x0076
            L_0x0080:
                r7 = move-exception
                goto L_0x006e
            L_0x0084:
                r8 = move-exception
                goto L_0x003c
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.a.c.a(java.io.File):boolean");
        }
    }

    public a(f fVar, int i, int i2, com.bumptech.glide.load.a.c<A> cVar, com.bumptech.glide.f.b<A, T> bVar, g<T> gVar, com.bumptech.glide.load.resource.e.c<T, Z> cVar2, AbstractC0096a aVar, com.bumptech.glide.load.b.b bVar2, int i3) {
        this(fVar, i, i2, cVar, bVar, gVar, cVar2, aVar, bVar2, i3, e);
    }

    private a(f fVar, int i, int i2, com.bumptech.glide.load.a.c<A> cVar, com.bumptech.glide.f.b<A, T> bVar, g<T> gVar, com.bumptech.glide.load.resource.e.c<T, Z> cVar2, AbstractC0096a aVar, com.bumptech.glide.load.b.b bVar2, int i3, b bVar3) {
        this.f3484a = fVar;
        this.f = i;
        this.g = i2;
        this.f3485b = cVar;
        this.h = bVar;
        this.i = gVar;
        this.j = cVar2;
        this.k = aVar;
        this.c = bVar2;
        this.l = i3;
        this.m = bVar3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    public final k<T> a() {
        k<T> kVar;
        try {
            long a2 = d.a();
            A a3 = this.f3485b.a(this.l);
            if (Log.isLoggable("DecodeJob", 2)) {
                a("Fetched data", a2);
            }
            if (this.d) {
                this.f3485b.a();
                kVar = null;
            } else {
                if (this.c.e) {
                    long a4 = d.a();
                    this.k.a().a(this.f3484a.a(), new c(this.h.c(), a3));
                    if (Log.isLoggable("DecodeJob", 2)) {
                        a("Wrote source to cache", a4);
                    }
                    long a5 = d.a();
                    k<T> a6 = a(this.f3484a.a());
                    kVar = a6;
                    if (Log.isLoggable("DecodeJob", 2)) {
                        kVar = a6;
                        if (a6 != null) {
                            a("Decoded source from cache", a5);
                            kVar = a6;
                        }
                    }
                } else {
                    long a7 = d.a();
                    k<T> a8 = this.h.b().a(a3, this.f, this.g);
                    kVar = a8;
                    if (Log.isLoggable("DecodeJob", 2)) {
                        a("Decoded from source", a7);
                        kVar = a8;
                    }
                }
                this.f3485b.a();
            }
            return kVar;
        } catch (Throwable th) {
            this.f3485b.a();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final k<Z> a(k<T> kVar) {
        k<T> kVar2;
        long a2 = d.a();
        if (kVar == null) {
            kVar2 = null;
        } else {
            k<T> a3 = this.i.a(kVar, this.f, this.g);
            kVar2 = a3;
            if (!kVar.equals(a3)) {
                kVar.c();
                kVar2 = a3;
            }
        }
        if (Log.isLoggable("DecodeJob", 2)) {
            a("Transformed resource from source", a2);
        }
        if (kVar2 != null && this.c.f) {
            long a4 = d.a();
            this.k.a().a(this.f3484a, new c(this.h.d(), kVar2));
            if (Log.isLoggable("DecodeJob", 2)) {
                a("Wrote transformed from source to cache", a4);
            }
        }
        long a5 = d.a();
        k<Z> b2 = b(kVar2);
        if (Log.isLoggable("DecodeJob", 2)) {
            a("Transcoded transformed from source", a5);
        }
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    public final k<T> a(com.bumptech.glide.load.c cVar) {
        k<T> kVar;
        File a2 = this.k.a().a(cVar);
        if (a2 == null) {
            kVar = null;
        } else {
            try {
                k<T> a3 = this.h.a().a(a2, this.f, this.g);
                kVar = a3;
                if (a3 == null) {
                    this.k.a().b(cVar);
                    kVar = a3;
                }
            } catch (Throwable th) {
                this.k.a().b(cVar);
                throw th;
            }
        }
        return kVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, long j) {
        Log.v("DecodeJob", str + " in " + d.a(j) + ", key: " + this.f3484a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final k<Z> b(k<T> kVar) {
        return kVar == null ? null : this.j.a(kVar);
    }
}
