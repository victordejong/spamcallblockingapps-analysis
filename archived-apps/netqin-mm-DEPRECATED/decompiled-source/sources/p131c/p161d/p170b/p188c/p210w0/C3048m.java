package p131c.p161d.p170b.p188c.p210w0;
/* renamed from: c.d.b.c.w0.m */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/m.class */
public final class C3048m {

    /* renamed from: h */
    public static final String[] f10975h = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* renamed from: i */
    public static final int[] f10976i = {44100, 48000, 32000};

    /* renamed from: j */
    public static final int[] f10977j = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: k */
    public static final int[] f10978k = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: l */
    public static final int[] f10979l = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: m */
    public static final int[] f10980m = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* renamed from: n */
    public static final int[] f10981n = {8000, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* renamed from: a */
    public int f10982a;

    /* renamed from: b */
    public String f10983b;

    /* renamed from: c */
    public int f10984c;

    /* renamed from: d */
    public int f10985d;

    /* renamed from: e */
    public int f10986e;

    /* renamed from: f */
    public int f10987f;

    /* renamed from: g */
    public int f10988g;

    /* renamed from: a */
    public static int m28040a(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i7 = f10976i[i5];
        if (i2 == 2) {
            i6 = i7 / 2;
        } else {
            i6 = i7;
            if (i2 == 0) {
                i6 = i7 / 4;
            }
        }
        int i8 = (i >>> 9) & 1;
        if (i3 == 3) {
            return ((((i2 == 3 ? f10977j[i4 - 1] : f10978k[i4 - 1]) * 12) / i6) + i8) * 4;
        }
        int i9 = i2 == 3 ? i3 == 2 ? f10979l[i4 - 1] : f10980m[i4 - 1] : f10981n[i4 - 1];
        int i10 = 144;
        if (i2 == 3) {
            return ((i9 * 144) / i6) + i8;
        }
        if (i3 == 1) {
            i10 = 72;
        }
        return ((i10 * i9) / i6) + i8;
    }

    /* renamed from: a */
    public static boolean m28039a(int i, C3048m mVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return false;
        }
        int i9 = f10976i[i5];
        if (i2 == 2) {
            i6 = i9 / 2;
        } else {
            i6 = i9;
            if (i2 == 0) {
                i6 = i9 / 4;
            }
        }
        int i10 = (i >>> 9) & 1;
        int i11 = 1152;
        if (i3 == 3) {
            i7 = i2 == 3 ? f10977j[i4 - 1] : f10978k[i4 - 1];
            i8 = (((i7 * 12) / i6) + i10) * 4;
            i11 = 384;
        } else if (i2 == 3) {
            i7 = i3 == 2 ? f10979l[i4 - 1] : f10980m[i4 - 1];
            i8 = ((i7 * 144) / i6) + i10;
            i11 = 1152;
        } else {
            int i12 = f10981n[i4 - 1];
            if (i3 == 1) {
                i11 = 576;
            }
            i8 = (((i3 == 1 ? 72 : 144) * i12) / i6) + i10;
            i7 = i12;
        }
        mVar.m28038a(i2, f10975h[3 - i3], i8, i6, ((i >> 6) & 3) == 3 ? 1 : 2, i7, i11);
        return true;
    }

    /* renamed from: a */
    public final void m28038a(int i, String str, int i2, int i3, int i4, int i5, int i6) {
        this.f10982a = i;
        this.f10983b = str;
        this.f10984c = i2;
        this.f10985d = i3;
        this.f10986e = i4;
        this.f10987f = i5;
        this.f10988g = i6;
    }
}
