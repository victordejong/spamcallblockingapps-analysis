package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzhv;
import com.google.android.gms.internal.ads.zzjn;
import com.google.android.gms.internal.ads.zzkf;
import com.google.android.gms.internal.ads.zzkg;
import com.google.android.gms.internal.ads.zzkl;
import com.google.android.gms.internal.ads.zzpk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* renamed from: c.d.b.d.g.a.ad0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ad0.class */
public final class ad0 {

    /* renamed from: A */
    public float f12244A;

    /* renamed from: B */
    public float f12245B;

    /* renamed from: C */
    public float f12246C;

    /* renamed from: D */
    public float f12247D;

    /* renamed from: E */
    public float f12248E;

    /* renamed from: F */
    public float f12249F;

    /* renamed from: G */
    public int f12250G;

    /* renamed from: H */
    public int f12251H;

    /* renamed from: I */
    public int f12252I;

    /* renamed from: J */
    public long f12253J;

    /* renamed from: K */
    public long f12254K;

    /* renamed from: L */
    public boolean f12255L;

    /* renamed from: M */
    public boolean f12256M;

    /* renamed from: N */
    public String f12257N;

    /* renamed from: O */
    public zzkg f12258O;

    /* renamed from: P */
    public int f12259P;

    /* renamed from: a */
    public String f12260a;

    /* renamed from: b */
    public int f12261b;

    /* renamed from: c */
    public int f12262c;

    /* renamed from: d */
    public int f12263d;

    /* renamed from: e */
    public boolean f12264e;

    /* renamed from: f */
    public byte[] f12265f;

    /* renamed from: g */
    public zzkf f12266g;

    /* renamed from: h */
    public byte[] f12267h;

    /* renamed from: i */
    public zzjn f12268i;

    /* renamed from: j */
    public int f12269j;

    /* renamed from: k */
    public int f12270k;

    /* renamed from: l */
    public int f12271l;

    /* renamed from: m */
    public int f12272m;

    /* renamed from: n */
    public int f12273n;

    /* renamed from: o */
    public byte[] f12274o;

    /* renamed from: p */
    public int f12275p;

    /* renamed from: q */
    public boolean f12276q;

    /* renamed from: r */
    public int f12277r;

    /* renamed from: s */
    public int f12278s;

    /* renamed from: t */
    public int f12279t;

    /* renamed from: u */
    public int f12280u;

    /* renamed from: v */
    public int f12281v;

    /* renamed from: w */
    public float f12282w;

    /* renamed from: x */
    public float f12283x;

    /* renamed from: y */
    public float f12284y;

    /* renamed from: z */
    public float f12285z;

    public ad0() {
        this.f12269j = -1;
        this.f12270k = -1;
        this.f12271l = -1;
        this.f12272m = -1;
        this.f12273n = 0;
        this.f12274o = null;
        this.f12275p = -1;
        this.f12276q = false;
        this.f12277r = -1;
        this.f12278s = -1;
        this.f12279t = -1;
        this.f12280u = 1000;
        this.f12281v = 200;
        this.f12282w = -1.0f;
        this.f12283x = -1.0f;
        this.f12284y = -1.0f;
        this.f12285z = -1.0f;
        this.f12244A = -1.0f;
        this.f12245B = -1.0f;
        this.f12246C = -1.0f;
        this.f12247D = -1.0f;
        this.f12248E = -1.0f;
        this.f12249F = -1.0f;
        this.f12250G = 1;
        this.f12251H = -1;
        this.f12252I = 8000;
        this.f12253J = 0L;
        this.f12254K = 0L;
        this.f12256M = true;
        this.f12257N = "eng";
    }

    public /* synthetic */ ad0(yc0 yc0Var) {
        this();
    }

    /* renamed from: a */
    public static /* synthetic */ String m27198a(ad0 ad0Var, String str) {
        ad0Var.f12257N = str;
        return str;
    }

    /* renamed from: a */
    public static List<byte[]> m27196a(zzpk zzpkVar) throws zzhv {
        try {
            zzpkVar.m11654d(16);
            if (zzpkVar.m11644m() != 826496599) {
                return null;
            }
            byte[] bArr = zzpkVar.f28779a;
            for (int b = zzpkVar.m11659b() + 20; b < bArr.length - 4; b++) {
                if (bArr[b] == 0 && bArr[b + 1] == 0 && bArr[b + 2] == 1 && bArr[b + 3] == 15) {
                    return Collections.singletonList(Arrays.copyOfRange(bArr, b, bArr.length));
                }
            }
            throw new zzhv("Failed to find FourCC VC1 initialization data");
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhv("Error parsing FourCC VC1 codec private");
        }
    }

    /* renamed from: a */
    public static List<byte[]> m27195a(byte[] bArr) throws zzhv {
        try {
            if (bArr[0] == 2) {
                int i = 1;
                int i2 = 0;
                while (bArr[i] == -1) {
                    i2 += 255;
                    i++;
                }
                int i3 = i + 1;
                int i4 = i2 + bArr[i];
                int i5 = 0;
                while (bArr[i3] == -1) {
                    i5 += 255;
                    i3++;
                }
                int i6 = i3 + 1;
                byte b = bArr[i3];
                if (bArr[i6] == 1) {
                    byte[] bArr2 = new byte[i4];
                    System.arraycopy(bArr, i6, bArr2, 0, i4);
                    int i7 = i6 + i4;
                    if (bArr[i7] == 3) {
                        int i8 = i7 + i5 + b;
                        if (bArr[i8] == 5) {
                            byte[] bArr3 = new byte[bArr.length - i8];
                            System.arraycopy(bArr, i8, bArr3, 0, bArr.length - i8);
                            ArrayList arrayList = new ArrayList(2);
                            arrayList.add(bArr2);
                            arrayList.add(bArr3);
                            return arrayList;
                        }
                        throw new zzhv("Error parsing vorbis codec private");
                    }
                    throw new zzhv("Error parsing vorbis codec private");
                }
                throw new zzhv("Error parsing vorbis codec private");
            }
            throw new zzhv("Error parsing vorbis codec private");
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhv("Error parsing vorbis codec private");
        }
    }

    /* renamed from: b */
    public static boolean m27194b(zzpk zzpkVar) throws zzhv {
        UUID uuid;
        UUID uuid2;
        try {
            int k = zzpkVar.m11646k();
            if (k == 1) {
                return true;
            }
            if (k != 65534) {
                return false;
            }
            zzpkVar.m11656c(24);
            long e = zzpkVar.m11653e();
            uuid = zzkl.f28446b0;
            if (e != uuid.getMostSignificantBits()) {
                return false;
            }
            long e2 = zzpkVar.m11653e();
            uuid2 = zzkl.f28446b0;
            return e2 == uuid2.getLeastSignificantBits();
        } catch (ArrayIndexOutOfBoundsException e3) {
            throw new zzhv("Error parsing MS/ACM codec private");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0623  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0629  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x063c  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0664  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m27197a(com.google.android.gms.internal.ads.zzjx r17, int r18) throws com.google.android.gms.internal.ads.zzhv {
        /*
            Method dump skipped, instructions count: 2311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.ad0.m27197a(com.google.android.gms.internal.ads.zzjx, int):void");
    }
}
