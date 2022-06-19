package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C0931r;
import java.net.URL;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.x6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/x6.class */
final class RunnableC1621x6 implements Runnable {

    /* renamed from: f */
    private final URL f4574f;

    /* renamed from: g */
    private final String f4575g;

    /* renamed from: h */
    final /* synthetic */ y6 f4576h;

    /* renamed from: i */
    private final C1566p4 f4577i;

    public RunnableC1621x6(y6 y6Var, String str, URL url, byte[] bArr, Map map, C1566p4 c1566p4, byte[] bArr2) {
        this.f4576h = y6Var;
        C0931r.m3312g(str);
        C0931r.m3308k(url);
        C0931r.m3308k(c1566p4);
        this.f4574f = url;
        this.f4577i = c1566p4;
        this.f4575g = str;
    }

    /* renamed from: b */
    private final void m1492b(int i, Exception exc, byte[] bArr, Map<String, List<String>> map) {
        ((l5) this.f4576h).a.e().r(new Runnable(this, i, exc, bArr, map) { // from class: com.google.android.gms.measurement.internal.w6

            /* renamed from: f */
            private final RunnableC1621x6 f4548f;

            /* renamed from: g */
            private final int f4549g;

            /* renamed from: h */
            private final Exception f4550h;

            /* renamed from: i */
            private final byte[] f4551i;

            /* renamed from: j */
            private final Map f4552j;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f4548f = this;
                this.f4549g = i;
                this.f4550h = exc;
                this.f4551i = bArr;
                this.f4552j = map;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f4548f.m1493a(this.f4549g, this.f4550h, this.f4551i, this.f4552j);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m1493a(int i, Exception exc, byte[] bArr, Map map) {
        this.f4577i.m1538a(this.f4575g, i, exc, bArr, map);
    }

    /* JADX WARN: Not initialized variable reg: 9, insn: 0x008e: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r9 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:33:0x008b */
    /* JADX WARN: Not initialized variable reg: 9, insn: 0x0098: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r9 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:35:0x0095 */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fd  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.RunnableC1621x6.run():void");
    }
}
