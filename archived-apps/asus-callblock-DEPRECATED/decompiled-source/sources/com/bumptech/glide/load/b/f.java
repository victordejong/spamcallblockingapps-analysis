package com.bumptech.glide.load.b;

import com.asus.updatesdk.BuildConfig;
import com.bumptech.glide.load.b;
import com.bumptech.glide.load.c;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.g;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/f.class */
public final class f implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f3545a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3546b;
    private final int c;
    private final e d;
    private final e e;
    private final g f;
    private final com.bumptech.glide.load.f g;
    private final com.bumptech.glide.load.resource.e.c h;
    private final b i;
    private final c j;
    private String k;
    private int l;
    private c m;

    public f(String str, c cVar, int i, int i2, e eVar, e eVar2, g gVar, com.bumptech.glide.load.f fVar, com.bumptech.glide.load.resource.e.c cVar2, b bVar) {
        this.f3545a = str;
        this.j = cVar;
        this.f3546b = i;
        this.c = i2;
        this.d = eVar;
        this.e = eVar2;
        this.f = gVar;
        this.g = fVar;
        this.h = cVar2;
        this.i = bVar;
    }

    public final c a() {
        if (this.m == null) {
            this.m = new j(this.f3545a, this.j);
        }
        return this.m;
    }

    @Override // com.bumptech.glide.load.c
    public final void a(MessageDigest messageDigest) {
        byte[] array = ByteBuffer.allocate(8).putInt(this.f3546b).putInt(this.c).array();
        this.j.a(messageDigest);
        messageDigest.update(this.f3545a.getBytes("UTF-8"));
        messageDigest.update(array);
        messageDigest.update((this.d != null ? this.d.a() : BuildConfig.FLAVOR).getBytes("UTF-8"));
        messageDigest.update((this.e != null ? this.e.a() : BuildConfig.FLAVOR).getBytes("UTF-8"));
        messageDigest.update((this.f != null ? this.f.a() : BuildConfig.FLAVOR).getBytes("UTF-8"));
        messageDigest.update((this.g != null ? this.g.a() : BuildConfig.FLAVOR).getBytes("UTF-8"));
        messageDigest.update((this.i != null ? this.i.a() : BuildConfig.FLAVOR).getBytes("UTF-8"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0099, code lost:
        if (r3.f.a().equals(r0.f.a()) != false) goto L_0x009c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d8, code lost:
        if (r3.e.a().equals(r0.e.a()) != false) goto L_0x00db;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0117, code lost:
        if (r3.d.a().equals(r0.d.a()) != false) goto L_0x011a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0156, code lost:
        if (r3.g.a().equals(r0.g.a()) != false) goto L_0x0159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0195, code lost:
        if (r3.h.a().equals(r0.h.a()) != false) goto L_0x0198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01d4, code lost:
        if (r3.i.a().equals(r0.i.a()) != false) goto L_0x01d7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r4) {
        /*
            Method dump skipped, instructions count: 548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.f.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int i = 0;
        if (this.l == 0) {
            this.l = this.f3545a.hashCode();
            this.l = (this.l * 31) + this.j.hashCode();
            this.l = (this.l * 31) + this.f3546b;
            this.l = (this.l * 31) + this.c;
            this.l = (this.d != null ? this.d.a().hashCode() : 0) + (this.l * 31);
            this.l = (this.e != null ? this.e.a().hashCode() : 0) + (this.l * 31);
            this.l = (this.f != null ? this.f.a().hashCode() : 0) + (this.l * 31);
            this.l = (this.g != null ? this.g.a().hashCode() : 0) + (this.l * 31);
            this.l = (this.h != null ? this.h.a().hashCode() : 0) + (this.l * 31);
            int i2 = this.l;
            if (this.i != null) {
                i = this.i.a().hashCode();
            }
            this.l = (i2 * 31) + i;
        }
        return this.l;
    }

    public final String toString() {
        if (this.k == null) {
            this.k = "EngineKey{" + this.f3545a + '+' + this.j + "+[" + this.f3546b + 'x' + this.c + "]+'" + (this.d != null ? this.d.a() : BuildConfig.FLAVOR) + "'+'" + (this.e != null ? this.e.a() : BuildConfig.FLAVOR) + "'+'" + (this.f != null ? this.f.a() : BuildConfig.FLAVOR) + "'+'" + (this.g != null ? this.g.a() : BuildConfig.FLAVOR) + "'+'" + (this.h != null ? this.h.a() : BuildConfig.FLAVOR) + "'+'" + (this.i != null ? this.i.a() : BuildConfig.FLAVOR) + "'}";
        }
        return this.k;
    }
}
