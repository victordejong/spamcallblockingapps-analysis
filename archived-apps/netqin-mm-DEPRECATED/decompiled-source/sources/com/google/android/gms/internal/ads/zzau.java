package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzau.class */
public class zzau implements zzx {

    /* renamed from: c */
    public static final boolean f24520c = zzaq.f24250b;

    /* renamed from: a */
    public final zzar f24521a;

    /* renamed from: b */
    public final zzat f24522b;

    public zzau(zzar zzarVar) {
        this(zzarVar, new zzat(4096));
    }

    public zzau(zzar zzarVar, zzat zzatVar) {
        this.f24521a = zzarVar;
        this.f24522b = zzatVar;
    }

    /* renamed from: a */
    public static void m16343a(String str, zzaa<?> zzaaVar, zzao zzaoVar) throws zzao {
        zzan l = zzaaVar.m16953l();
        int i = zzaaVar.m16954i();
        try {
            l.mo11573a(zzaoVar);
            zzaaVar.m16964a(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(i)));
        } catch (zzao e) {
            zzaaVar.m16964a(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(i)));
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x03cc A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzx
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.ads.zzy mo11147a(com.google.android.gms.internal.ads.zzaa<?> r11) throws com.google.android.gms.internal.ads.zzao {
        /*
            Method dump skipped, instructions count: 1051
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzau.mo11147a(com.google.android.gms.internal.ads.zzaa):com.google.android.gms.internal.ads.zzy");
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x00ab: MOVE  (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:34:0x00a7 */
    /* renamed from: a */
    public final byte[] m16344a(InputStream inputStream, int i) throws IOException, zzam {
        byte[] bArr;
        zzbi zzbiVar = new zzbi(this.f24522b, i);
        try {
            if (inputStream != null) {
                byte[] a = this.f24522b.m16381a(1024);
                while (true) {
                    int read = inputStream.read(a);
                    if (read == -1) {
                        break;
                    }
                    zzbiVar.write(a, 0, read);
                }
                byte[] byteArray = zzbiVar.toByteArray();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        zzaq.m16458c("Error occurred when closing InputStream", new Object[0]);
                    }
                }
                this.f24522b.m16380a(a);
                zzbiVar.close();
                return byteArray;
            }
            throw new zzam();
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    zzaq.m16458c("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.f24522b.m16380a(bArr);
            zzbiVar.close();
            throw th;
        }
    }
}
