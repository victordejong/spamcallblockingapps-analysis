package p131c.p161d.p170b.p224d.p252g.p253a;

import com.android.volley.toolbox.DiskBasedCache;
import com.google.android.gms.internal.ads.zzaq;
import com.google.android.gms.internal.ads.zzav;
import com.google.android.gms.internal.ads.zzu;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
/* renamed from: c.d.b.d.g.a.o4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/o4.class */
public final class C3866o4 {

    /* renamed from: a */
    public long f14286a;

    /* renamed from: b */
    public final String f14287b;

    /* renamed from: c */
    public final String f14288c;

    /* renamed from: d */
    public final long f14289d;

    /* renamed from: e */
    public final long f14290e;

    /* renamed from: f */
    public final long f14291f;

    /* renamed from: g */
    public final long f14292g;

    /* renamed from: h */
    public final List<zzu> f14293h;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C3866o4(java.lang.String r14, com.google.android.gms.internal.ads.zzn r15) {
        /*
            r13 = this;
            r0 = r15
            java.lang.String r0 = r0.f28649b
            r16 = r0
            r0 = r15
            long r0 = r0.f28650c
            r17 = r0
            r0 = r15
            long r0 = r0.f28651d
            r19 = r0
            r0 = r15
            long r0 = r0.f28652e
            r21 = r0
            r0 = r15
            long r0 = r0.f28653f
            r23 = r0
            r0 = r15
            java.util.List<com.google.android.gms.internal.ads.zzu> r0 = r0.f28655h
            r25 = r0
            r0 = r25
            if (r0 == 0) goto L_0x002e
            r0 = r25
            r15 = r0
        L_0x002b:
            goto L_0x008b
        L_0x002e:
            r0 = r15
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.f28654g
            r15 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r15
            int r2 = r2.size()
            r1.<init>(r2)
            r25 = r0
            r0 = r15
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r26 = r0
        L_0x004f:
            r0 = r25
            r15 = r0
            r0 = r26
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x002b
            r0 = r26
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r15 = r0
            r0 = r25
            com.google.android.gms.internal.ads.zzu r1 = new com.google.android.gms.internal.ads.zzu
            r2 = r1
            r3 = r15
            java.lang.Object r3 = r3.getKey()
            java.lang.String r3 = (java.lang.String) r3
            r4 = r15
            java.lang.Object r4 = r4.getValue()
            java.lang.String r4 = (java.lang.String) r4
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
            goto L_0x004f
        L_0x008b:
            r0 = r13
            r1 = r14
            r2 = r16
            r3 = r17
            r4 = r19
            r5 = r21
            r6 = r23
            r7 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.C3866o4.<init>(java.lang.String, com.google.android.gms.internal.ads.zzn):void");
    }

    public C3866o4(String str, String str2, long j, long j2, long j3, long j4, List<zzu> list) {
        this.f14287b = str;
        this.f14288c = "".equals(str2) ? null : str2;
        this.f14289d = j;
        this.f14290e = j2;
        this.f14291f = j3;
        this.f14292g = j4;
        this.f14293h = list;
    }

    /* renamed from: a */
    public static C3866o4 m26606a(C4203x5 x5Var) throws IOException {
        if (zzav.m16307b((InputStream) x5Var) == 538247942) {
            return new C3866o4(zzav.m16316a(x5Var), zzav.m16316a(x5Var), zzav.m16305c(x5Var), zzav.m16305c(x5Var), zzav.m16305c(x5Var), zzav.m16305c(x5Var), zzav.m16308b(x5Var));
        }
        throw new IOException();
    }

    /* renamed from: a */
    public final boolean m26605a(OutputStream outputStream) {
        try {
            zzav.m16312a(outputStream, (int) DiskBasedCache.CACHE_MAGIC);
            zzav.m16310a(outputStream, this.f14287b);
            zzav.m16310a(outputStream, this.f14288c == null ? "" : this.f14288c);
            zzav.m16311a(outputStream, this.f14289d);
            zzav.m16311a(outputStream, this.f14290e);
            zzav.m16311a(outputStream, this.f14291f);
            zzav.m16311a(outputStream, this.f14292g);
            List<zzu> list = this.f14293h;
            if (list != null) {
                zzav.m16312a(outputStream, list.size());
                for (zzu zzuVar : list) {
                    zzav.m16310a(outputStream, zzuVar.m11417a());
                    zzav.m16310a(outputStream, zzuVar.m11416b());
                }
            } else {
                zzav.m16312a(outputStream, 0);
            }
            outputStream.flush();
            return true;
        } catch (IOException e) {
            zzaq.m16461a("%s", e.toString());
            return false;
        }
    }
}
