package p012b.p076s.p078b.p079a.p083p0;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.recyclerview.widget.RecyclerView;
import java.nio.ByteBuffer;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1183o;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
/* renamed from: b.s.b.a.p0.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/a.class */
public final class C1264a {

    /* renamed from: a */
    public static final int[] f5046a = {1, 2, 3, 6};

    /* renamed from: b */
    public static final int[] f5047b = {48000, 44100, 32000};

    /* renamed from: c */
    public static final int[] f5048c = {24000, 22050, 16000};

    /* renamed from: d */
    public static final int[] f5049d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e */
    public static final int[] f5050e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN, 576, 640};

    /* renamed from: f */
    public static final int[] f5051f = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* renamed from: b.s.b.a.p0.a$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/p0/a$b.class */
    public static final class C1266b {

        /* renamed from: a */
        public final String f5052a;

        /* renamed from: b */
        public final int f5053b;

        /* renamed from: c */
        public final int f5054c;

        /* renamed from: d */
        public final int f5055d;

        /* renamed from: e */
        public final int f5056e;

        public C1266b(String str, int i, int i2, int i3, int i4, int i5) {
            this.f5052a = str;
            this.f5054c = i2;
            this.f5053b = i3;
            this.f5055d = i4;
            this.f5056e = i5;
        }
    }

    /* renamed from: a */
    public static int m33952a() {
        return 1536;
    }

    /* renamed from: a */
    public static int m33951a(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0) {
            return -1;
        }
        int[] iArr = f5047b;
        if (i >= iArr.length || i2 < 0) {
            return -1;
        }
        int[] iArr2 = f5051f;
        if (i3 >= iArr2.length) {
            return -1;
        }
        int i4 = iArr[i];
        if (i4 == 44100) {
            return (iArr2[i3] + (i2 % 2)) * 2;
        }
        int i5 = f5050e[i3];
        return i4 == 32000 ? i5 * 6 : i5 * 4;
    }

    /* renamed from: a */
    public static int m33948a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        for (int i = position; i <= limit - 10; i++) {
            if ((byteBuffer.getInt(i + 4) & (-16777217)) == -1167101192) {
                return i - position;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static int m33947a(ByteBuffer byteBuffer, int i) {
        boolean z = (byteBuffer.get((byteBuffer.position() + i) + 7) & 255) == 187;
        return 40 << ((byteBuffer.get((byteBuffer.position() + i) + (z ? 9 : 8)) >> 4) & 7);
    }

    /* renamed from: a */
    public static int m33946a(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (!(((bArr[5] & 255) >> 3) == 16)) {
            return m33951a((bArr[4] & 192) >> 6, bArr[4] & 63);
        }
        return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
    }

    /* renamed from: a */
    public static Format m33949a(C1184p pVar, String str, String str2, DrmInitData drmInitData) {
        int i = f5047b[(pVar.m34344r() & 192) >> 6];
        int r = pVar.m34344r();
        int i2 = f5049d[(r & 56) >> 3];
        int i3 = i2;
        if ((r & 4) != 0) {
            i3 = i2 + 1;
        }
        return Format.m38180a(str, "audio/ac3", (String) null, -1, -1, i3, i, (List<byte[]>) null, drmInitData, 0, str2);
    }

    /* renamed from: a */
    public static C1266b m33950a(C1183o oVar) {
        String str;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int d = oVar.m34375d();
        oVar.m34376c(40);
        boolean z = oVar.m34385a(5) == 16;
        oVar.m34378b(d);
        int i8 = -1;
        if (z) {
            oVar.m34376c(16);
            int a = oVar.m34385a(2);
            if (a == 0) {
                i8 = 0;
            } else if (a == 1) {
                i8 = 1;
            } else if (a == 2) {
                i8 = 2;
            }
            oVar.m34376c(3);
            int a2 = oVar.m34385a(11);
            int a3 = oVar.m34385a(2);
            if (a3 == 3) {
                i5 = f5048c[oVar.m34385a(2)];
                i7 = 3;
                i6 = 6;
            } else {
                i7 = oVar.m34385a(2);
                i6 = f5046a[i7];
                i5 = f5047b[a3];
            }
            int a4 = oVar.m34385a(3);
            boolean e = oVar.m34374e();
            int i9 = f5049d[a4];
            oVar.m34376c(10);
            if (oVar.m34374e()) {
                oVar.m34376c(8);
            }
            if (a4 == 0) {
                oVar.m34376c(5);
                if (oVar.m34374e()) {
                    oVar.m34376c(8);
                }
            }
            if (i8 == 1 && oVar.m34374e()) {
                oVar.m34376c(16);
            }
            if (oVar.m34374e()) {
                if (a4 > 2) {
                    oVar.m34376c(2);
                }
                if ((a4 & 1) != 0 && a4 > 2) {
                    oVar.m34376c(6);
                }
                if ((a4 & 4) != 0) {
                    oVar.m34376c(6);
                }
                if (e && oVar.m34374e()) {
                    oVar.m34376c(5);
                }
                if (i8 == 0) {
                    if (oVar.m34374e()) {
                        oVar.m34376c(6);
                    }
                    if (a4 == 0 && oVar.m34374e()) {
                        oVar.m34376c(6);
                    }
                    if (oVar.m34374e()) {
                        oVar.m34376c(6);
                    }
                    int a5 = oVar.m34385a(2);
                    if (a5 == 1) {
                        oVar.m34376c(5);
                    } else if (a5 == 2) {
                        oVar.m34376c(12);
                    } else if (a5 == 3) {
                        int a6 = oVar.m34385a(5);
                        if (oVar.m34374e()) {
                            oVar.m34376c(5);
                            if (oVar.m34374e()) {
                                oVar.m34376c(4);
                            }
                            if (oVar.m34374e()) {
                                oVar.m34376c(4);
                            }
                            if (oVar.m34374e()) {
                                oVar.m34376c(4);
                            }
                            if (oVar.m34374e()) {
                                oVar.m34376c(4);
                            }
                            if (oVar.m34374e()) {
                                oVar.m34376c(4);
                            }
                            if (oVar.m34374e()) {
                                oVar.m34376c(4);
                            }
                            if (oVar.m34374e()) {
                                oVar.m34376c(4);
                            }
                            if (oVar.m34374e()) {
                                if (oVar.m34374e()) {
                                    oVar.m34376c(4);
                                }
                                if (oVar.m34374e()) {
                                    oVar.m34376c(4);
                                }
                            }
                        }
                        if (oVar.m34374e()) {
                            oVar.m34376c(5);
                            if (oVar.m34374e()) {
                                oVar.m34376c(7);
                                if (oVar.m34374e()) {
                                    oVar.m34376c(8);
                                }
                            }
                        }
                        oVar.m34376c((a6 + 2) * 8);
                        oVar.m34377c();
                    }
                    if (a4 < 2) {
                        if (oVar.m34374e()) {
                            oVar.m34376c(14);
                        }
                        if (a4 == 0 && oVar.m34374e()) {
                            oVar.m34376c(14);
                        }
                    }
                    if (oVar.m34374e()) {
                        if (i7 == 0) {
                            oVar.m34376c(5);
                        } else {
                            for (int i10 = 0; i10 < i6; i10++) {
                                if (oVar.m34374e()) {
                                    oVar.m34376c(5);
                                }
                            }
                        }
                    }
                }
            }
            if (oVar.m34374e()) {
                oVar.m34376c(5);
                if (a4 == 2) {
                    oVar.m34376c(4);
                }
                if (a4 >= 6) {
                    oVar.m34376c(2);
                }
                if (oVar.m34374e()) {
                    oVar.m34376c(8);
                }
                if (a4 == 0 && oVar.m34374e()) {
                    oVar.m34376c(8);
                }
                if (a3 < 3) {
                    oVar.m34373f();
                }
            }
            if (i8 == 0 && i7 != 3) {
                oVar.m34373f();
            }
            if (i8 == 2 && (i7 == 3 || oVar.m34374e())) {
                oVar.m34376c(6);
            }
            str = (oVar.m34374e() && oVar.m34385a(6) == 1 && oVar.m34385a(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i3 = (a2 + 1) * 2;
            i = i6 * 256;
            i4 = i9 + (e ? 1 : 0);
            i2 = i8;
        } else {
            oVar.m34376c(32);
            int a7 = oVar.m34385a(2);
            str = a7 == 3 ? null : "audio/ac3";
            i3 = m33951a(a7, oVar.m34385a(6));
            oVar.m34376c(8);
            int a8 = oVar.m34385a(3);
            if (!((a8 & 1) == 0 || a8 == 1)) {
                oVar.m34376c(2);
            }
            if ((a8 & 4) != 0) {
                oVar.m34376c(2);
            }
            if (a8 == 2) {
                oVar.m34376c(2);
            }
            int[] iArr = f5047b;
            i5 = a7 < iArr.length ? iArr[a7] : -1;
            i4 = f5049d[a8] + (oVar.m34374e() ? 1 : 0);
            i2 = -1;
            i = 1536;
        }
        return new C1266b(str, i2, i4, i5, i3, i);
    }

    /* renamed from: b */
    public static int m33944b(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = f5046a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * 256;
    }

    /* renamed from: b */
    public static int m33943b(byte[] bArr) {
        boolean z = false;
        if (bArr[4] != -8 || bArr[5] != 114 || bArr[6] != 111 || (bArr[7] & 254) != 186) {
            return 0;
        }
        if ((bArr[7] & 255) == 187) {
            z = true;
        }
        return 40 << ((bArr[z ? '\t' : '\b'] >> 4) & 7);
    }

    /* renamed from: b */
    public static Format m33945b(C1184p pVar, String str, String str2, DrmInitData drmInitData) {
        pVar.m34356f(2);
        int i = f5047b[(pVar.m34344r() & 192) >> 6];
        int r = pVar.m34344r();
        int i2 = f5049d[(r & 14) >> 1];
        int i3 = i2;
        if ((r & 1) != 0) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (((pVar.m34344r() & 30) >> 1) > 0) {
            i4 = i3;
            if ((2 & pVar.m34344r()) != 0) {
                i4 = i3 + 2;
            }
        }
        return Format.m38180a(str, (pVar.m34372a() <= 0 || (pVar.m34344r() & 1) == 0) ? "audio/eac3" : "audio/eac3-joc", (String) null, -1, -1, i4, i, (List<byte[]>) null, drmInitData, 0, str2);
    }
}
