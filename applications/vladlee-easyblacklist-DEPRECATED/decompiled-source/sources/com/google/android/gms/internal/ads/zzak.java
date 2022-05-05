package com.google.android.gms.internal.ads;

import com.crashlytics.android.core.CodedOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzak.class */
public class zzak implements zzn {

    /* renamed from: a */
    private static final boolean f10961a = zzag.DEBUG;
    @Deprecated

    /* renamed from: b */
    private final zzau f10962b;

    /* renamed from: c */
    private final zzah f10963c;

    /* renamed from: d */
    private final zzaj f10964d;

    public zzak(zzah zzahVar) {
        this(zzahVar, new zzaj(CodedOutputStream.DEFAULT_BUFFER_SIZE));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private zzak(zzah zzahVar, zzaj zzajVar) {
        this.f10963c = zzahVar;
        this.f10962b = zzahVar;
        this.f10964d = zzajVar;
    }

    /* renamed from: a */
    private static void m4376a(String str, zzq<?> zzqVar, zzae zzaeVar) {
        zzad zzi = zzqVar.zzi();
        int zzh = zzqVar.zzh();
        try {
            zzi.zza(zzaeVar);
            zzqVar.zzb(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(zzh)));
        } catch (zzae e) {
            zzqVar.zzb(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(zzh)));
            throw e;
        }
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x00a9: MOVE  (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:34:0x00a5 */
    /* renamed from: a */
    private final byte[] m4377a(InputStream inputStream, int i) {
        byte[] bArr;
        zzay zzayVar = new zzay(this.f10964d, i);
        try {
            if (inputStream != null) {
                byte[] zzc = this.f10964d.zzc(1024);
                while (true) {
                    int read = inputStream.read(zzc);
                    if (read == -1) {
                        break;
                    }
                    zzayVar.write(zzc, 0, read);
                }
                byte[] byteArray = zzayVar.toByteArray();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        zzag.m4410v("Error occurred when closing InputStream", new Object[0]);
                    }
                }
                this.f10964d.zza(zzc);
                zzayVar.close();
                return byteArray;
            }
            throw new zzac();
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    zzag.m4410v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.f10964d.zza(bArr);
            zzayVar.close();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x03cf A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.ads.zzo zzc(com.google.android.gms.internal.ads.zzq<?> r11) {
        /*
            Method dump skipped, instructions count: 1062
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzak.zzc(com.google.android.gms.internal.ads.zzq):com.google.android.gms.internal.ads.zzo");
    }
}
