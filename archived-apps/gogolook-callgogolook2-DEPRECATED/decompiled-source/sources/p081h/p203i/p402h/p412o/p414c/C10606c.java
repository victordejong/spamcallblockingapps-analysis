package p081h.p203i.p402h.p412o.p414c;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Map;
import p081h.p203i.p402h.C10538i;
import p081h.p203i.p402h.EnumC10531c;
import p081h.p203i.p402h.p405k.C10548a;
import p081h.p203i.p402h.p405k.EnumC10550c;
import p081h.p203i.p402h.p405k.p406d.C10551a;
import p081h.p203i.p402h.p405k.p406d.C10553c;
import p081h.p203i.p402h.p412o.p413b.C10601c;
import p081h.p203i.p402h.p412o.p413b.EnumC10599a;
import p081h.p203i.p402h.p412o.p413b.EnumC10600b;
/* renamed from: h.i.h.o.c.c */
/* loaded from: classes2-dex2jar.jar:h/i/h/o/c/c.class */
public final class C10606c {

    /* renamed from: a */
    public static final int[] f24150a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    /* renamed from: h.i.h.o.c.c$a */
    /* loaded from: classes2-dex2jar.jar:h/i/h/o/c/c$a.class */
    public static /* synthetic */ class C10607a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f24151a = new int[EnumC10600b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f24151a[EnumC10600b.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f24151a[EnumC10600b.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f24151a[EnumC10600b.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f24151a[EnumC10600b.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: a */
    public static int m11263a(int i) {
        int[] iArr = f24150a;
        if (i < iArr.length) {
            return iArr[i];
        }
        return -1;
    }

    /* renamed from: a */
    public static int m11256a(C10548a aVar, EnumC10599a aVar2, C10601c cVar, C10605b bVar) throws C10538i {
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        for (int i3 = 0; i3 < 8; i3++) {
            C10609e.m11229a(aVar, aVar2, cVar, i3, bVar);
            int a = m11251a(bVar);
            i = i;
            if (a < i) {
                i2 = i3;
                i = a;
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static int m11252a(EnumC10600b bVar, C10548a aVar, C10548a aVar2, C10601c cVar) {
        return aVar.m11450d() + bVar.m11285a(cVar) + aVar2.m11450d();
    }

    /* renamed from: a */
    public static int m11251a(C10605b bVar) {
        return C10608d.m11240a(bVar) + C10608d.m11236b(bVar) + C10608d.m11235c(bVar) + C10608d.m11234d(bVar);
    }

    /* renamed from: a */
    public static C10548a m11257a(C10548a aVar, int i, int i2, int i3) throws C10538i {
        if (aVar.m11449e() == i2) {
            ArrayList<C10604a> arrayList = new ArrayList(i3);
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < i3; i7++) {
                int[] iArr = new int[1];
                int[] iArr2 = new int[1];
                m11262a(i, i2, i3, i7, iArr, iArr2);
                int i8 = iArr[0];
                byte[] bArr = new byte[i8];
                aVar.m11456a(i4 << 3, bArr, 0, i8);
                byte[] a = m11243a(bArr, iArr2[0]);
                arrayList.add(new C10604a(bArr, a));
                i5 = Math.max(i5, i8);
                i6 = Math.max(i6, a.length);
                i4 += iArr[0];
            }
            if (i2 == i4) {
                C10548a aVar2 = new C10548a();
                for (int i9 = 0; i9 < i5; i9++) {
                    for (C10604a aVar3 : arrayList) {
                        byte[] a2 = aVar3.m11272a();
                        if (i9 < a2.length) {
                            aVar2.m11457a(a2[i9], 8);
                        }
                    }
                }
                for (int i10 = 0; i10 < i6; i10++) {
                    for (C10604a aVar4 : arrayList) {
                        byte[] b = aVar4.m11271b();
                        if (i10 < b.length) {
                            aVar2.m11457a(b[i10], 8);
                        }
                    }
                }
                if (i == aVar2.m11449e()) {
                    return aVar2;
                }
                throw new C10538i("Interleaving error: " + i + " and " + aVar2.m11449e() + " differ.");
            }
            throw new C10538i("Data bytes does not match offset");
        }
        throw new C10538i("Number of bits and data bytes does not match");
    }

    /* renamed from: a */
    public static EnumC10600b m11244a(String str, String str2) {
        if ("Shift_JIS".equals(str2) && m11249a(str)) {
            return EnumC10600b.KANJI;
        }
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt >= '0' && charAt <= '9') {
                z2 = true;
            } else if (m11263a(charAt) == -1) {
                return EnumC10600b.BYTE;
            } else {
                z = true;
            }
        }
        return z ? EnumC10600b.ALPHANUMERIC : z2 ? EnumC10600b.NUMERIC : EnumC10600b.BYTE;
    }

    /* renamed from: a */
    public static C10601c m11260a(int i, EnumC10599a aVar) throws C10538i {
        for (int i2 = 1; i2 <= 40; i2++) {
            C10601c a = C10601c.m11283a(i2);
            if (m11259a(i, a, aVar)) {
                return a;
            }
        }
        throw new C10538i("Data too big");
    }

    /* renamed from: a */
    public static C10601c m11254a(EnumC10599a aVar, EnumC10600b bVar, C10548a aVar2, C10548a aVar3) throws C10538i {
        return m11260a(m11252a(bVar, aVar2, aVar3, m11260a(m11252a(bVar, aVar2, aVar3, C10601c.m11283a(1)), aVar)), aVar);
    }

    /* renamed from: a */
    public static C10610f m11246a(String str, EnumC10599a aVar, Map<EnumC10531c, ?> map) throws C10538i {
        C10601c cVar;
        EnumC10550c a;
        boolean z = true;
        boolean z2 = map != null && map.containsKey(EnumC10531c.CHARACTER_SET);
        String obj = z2 ? map.get(EnumC10531c.CHARACTER_SET).toString() : "ISO-8859-1";
        EnumC10600b a2 = m11244a(str, obj);
        C10548a aVar2 = new C10548a();
        if (a2 == EnumC10600b.BYTE && z2 && (a = EnumC10550c.m11439a(obj)) != null) {
            m11255a(a, aVar2);
        }
        if (map == null || !map.containsKey(EnumC10531c.GS1_FORMAT)) {
            z = false;
        }
        if (z && Boolean.valueOf(map.get(EnumC10531c.GS1_FORMAT).toString()).booleanValue()) {
            m11253a(EnumC10600b.FNC1_FIRST_POSITION, aVar2);
        }
        m11253a(a2, aVar2);
        C10548a aVar3 = new C10548a();
        m11245a(str, a2, aVar3, obj);
        if (map == null || !map.containsKey(EnumC10531c.QR_VERSION)) {
            cVar = m11254a(aVar, a2, aVar2, aVar3);
        } else {
            cVar = C10601c.m11283a(Integer.parseInt(map.get(EnumC10531c.QR_VERSION).toString()));
            if (!m11259a(m11252a(a2, aVar2, aVar3, cVar), cVar, aVar)) {
                throw new C10538i("Data too big for requested version");
            }
        }
        C10548a aVar4 = new C10548a();
        aVar4.m11455a(aVar2);
        m11258a(a2 == EnumC10600b.BYTE ? aVar3.m11449e() : str.length(), cVar, a2, aVar4);
        aVar4.m11455a(aVar3);
        C10601c.C10603b a3 = cVar.m11282a(aVar);
        int b = cVar.m11281b() - a3.m11273d();
        m11261a(b, aVar4);
        C10548a a4 = m11257a(aVar4, cVar.m11281b(), b, a3.m11274c());
        C10610f fVar = new C10610f();
        fVar.m11212a(aVar);
        fVar.m11211a(a2);
        fVar.m11210a(cVar);
        int a5 = cVar.m11284a();
        C10605b bVar = new C10605b(a5, a5);
        int a6 = m11256a(a4, aVar, cVar, bVar);
        fVar.m11213a(a6);
        C10609e.m11229a(a4, aVar, cVar, a6, bVar);
        fVar.m11209a(bVar);
        return fVar;
    }

    /* renamed from: a */
    public static void m11262a(int i, int i2, int i3, int i4, int[] iArr, int[] iArr2) throws C10538i {
        if (i4 < i3) {
            int i5 = i % i3;
            int i6 = i3 - i5;
            int i7 = i / i3;
            int i8 = i2 / i3;
            int i9 = i8 + 1;
            int i10 = i7 - i8;
            int i11 = (i7 + 1) - i9;
            if (i10 != i11) {
                throw new C10538i("EC bytes mismatch");
            } else if (i3 != i6 + i5) {
                throw new C10538i("RS blocks mismatch");
            } else if (i != ((i8 + i10) * i6) + ((i9 + i11) * i5)) {
                throw new C10538i("Total bytes mismatch");
            } else if (i4 < i6) {
                iArr[0] = i8;
                iArr2[0] = i10;
            } else {
                iArr[0] = i9;
                iArr2[0] = i11;
            }
        } else {
            throw new C10538i("Block ID too large");
        }
    }

    /* renamed from: a */
    public static void m11261a(int i, C10548a aVar) throws C10538i {
        int i2 = i << 3;
        if (aVar.m11450d() <= i2) {
            for (int i3 = 0; i3 < 4 && aVar.m11450d() < i2; i3++) {
                aVar.m11454a(false);
            }
            int d = aVar.m11450d() & 7;
            if (d > 0) {
                while (d < 8) {
                    aVar.m11454a(false);
                    d++;
                }
            }
            int e = aVar.m11449e();
            for (int i4 = 0; i4 < i - e; i4++) {
                aVar.m11457a((i4 & 1) == 0 ? 236 : 17, 8);
            }
            if (aVar.m11450d() != i2) {
                throw new C10538i("Bits size does not equal capacity");
            }
            return;
        }
        throw new C10538i("data bits cannot fit in the QR Code" + aVar.m11450d() + " > " + i2);
    }

    /* renamed from: a */
    public static void m11258a(int i, C10601c cVar, EnumC10600b bVar, C10548a aVar) throws C10538i {
        int a = bVar.m11285a(cVar);
        int i2 = 1 << a;
        if (i < i2) {
            aVar.m11457a(i, a);
            return;
        }
        throw new C10538i(i + " is bigger than " + (i2 - 1));
    }

    /* renamed from: a */
    public static void m11255a(EnumC10550c cVar, C10548a aVar) {
        aVar.m11457a(EnumC10600b.ECI.m11286a(), 4);
        aVar.m11457a(cVar.m11440a(), 8);
    }

    /* renamed from: a */
    public static void m11253a(EnumC10600b bVar, C10548a aVar) {
        aVar.m11457a(bVar.m11286a(), 4);
    }

    /* renamed from: a */
    public static void m11250a(CharSequence charSequence, C10548a aVar) throws C10538i {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int a = m11263a(charSequence.charAt(i));
            if (a != -1) {
                int i2 = i + 1;
                if (i2 < length) {
                    int a2 = m11263a(charSequence.charAt(i2));
                    if (a2 != -1) {
                        aVar.m11457a((a * 45) + a2, 11);
                        i += 2;
                    } else {
                        throw new C10538i();
                    }
                } else {
                    aVar.m11457a(a, 6);
                    i = i2;
                }
            } else {
                throw new C10538i();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0067 A[LOOP:0: B:4:0x000c->B:19:0x0067, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0083 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m11248a(java.lang.String r5, p081h.p203i.p402h.p405k.C10548a r6) throws p081h.p203i.p402h.C10538i {
        /*
            r0 = r5
            java.lang.String r1 = "Shift_JIS"
            byte[] r0 = r0.getBytes(r1)     // Catch: UnsupportedEncodingException -> 0x008f
            r5 = r0
            r0 = r5
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x000c:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x008e
            r0 = r5
            r1 = r8
            r0 = r0[r1]
            r1 = 255(0xff, float:3.57E-43)
            r0 = r0 & r1
            r1 = 8
            int r0 = r0 << r1
            r1 = r5
            r2 = r8
            r3 = 1
            int r2 = r2 + r3
            r1 = r1[r2]
            r2 = 255(0xff, float:3.57E-43)
            r1 = r1 & r2
            r0 = r0 | r1
            r9 = r0
            r0 = 33088(0x8140, float:4.6366E-41)
            r10 = r0
            r0 = r9
            r1 = 33088(0x8140, float:4.6366E-41)
            if (r0 < r1) goto L_0x0046
            r0 = r9
            r1 = 40956(0x9ffc, float:5.7392E-41)
            if (r0 > r1) goto L_0x0046
        L_0x003c:
            r0 = r9
            r1 = r10
            int r0 = r0 - r1
            r10 = r0
            goto L_0x0061
        L_0x0046:
            r0 = r9
            r1 = 57408(0xe040, float:8.0446E-41)
            if (r0 < r1) goto L_0x005e
            r0 = r9
            r1 = 60351(0xebbf, float:8.457E-41)
            if (r0 > r1) goto L_0x005e
            r0 = 49472(0xc140, float:6.9325E-41)
            r10 = r0
            goto L_0x003c
        L_0x005e:
            r0 = -1
            r10 = r0
        L_0x0061:
            r0 = r10
            r1 = -1
            if (r0 == r1) goto L_0x0083
            r0 = r6
            r1 = r10
            r2 = 8
            int r1 = r1 >> r2
            r2 = 192(0xc0, float:2.69E-43)
            int r1 = r1 * r2
            r2 = r10
            r3 = 255(0xff, float:3.57E-43)
            r2 = r2 & r3
            int r1 = r1 + r2
            r2 = 13
            r0.m11457a(r1, r2)
            int r8 = r8 + 2
            goto L_0x000c
        L_0x0083:
            h.i.h.i r0 = new h.i.h.i
            r1 = r0
            java.lang.String r2 = "Invalid byte sequence"
            r1.<init>(r2)
            throw r0
        L_0x008e:
            return
        L_0x008f:
            r5 = move-exception
            h.i.h.i r0 = new h.i.h.i
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p402h.p412o.p414c.C10606c.m11248a(java.lang.String, h.i.h.k.a):void");
    }

    /* renamed from: a */
    public static void m11247a(String str, C10548a aVar, String str2) throws C10538i {
        try {
            for (byte b : str.getBytes(str2)) {
                aVar.m11457a(b, 8);
            }
        } catch (UnsupportedEncodingException e) {
            throw new C10538i(e);
        }
    }

    /* renamed from: a */
    public static void m11245a(String str, EnumC10600b bVar, C10548a aVar, String str2) throws C10538i {
        int i = C10607a.f24151a[bVar.ordinal()];
        if (i == 1) {
            m11242b(str, aVar);
        } else if (i == 2) {
            m11250a((CharSequence) str, aVar);
        } else if (i == 3) {
            m11247a(str, aVar, str2);
        } else if (i == 4) {
            m11248a(str, aVar);
        } else {
            throw new C10538i("Invalid mode: ".concat(String.valueOf(bVar)));
        }
    }

    /* renamed from: a */
    public static boolean m11259a(int i, C10601c cVar, EnumC10599a aVar) {
        return cVar.m11281b() - cVar.m11282a(aVar).m11273d() >= (i + 7) / 8;
    }

    /* renamed from: a */
    public static boolean m11249a(String str) {
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            if (length % 2 != 0) {
                return false;
            }
            for (int i = 0; i < length; i += 2) {
                int i2 = bytes[i] & 255;
                if ((i2 < 129 || i2 > 159) && (i2 < 224 || i2 > 235)) {
                    return false;
                }
            }
            return true;
        } catch (UnsupportedEncodingException e) {
            return false;
        }
    }

    /* renamed from: a */
    public static byte[] m11243a(byte[] bArr, int i) {
        int length = bArr.length;
        int[] iArr = new int[length + i];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        new C10553c(C10551a.f24020k).m11421a(iArr, i);
        byte[] bArr2 = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr2[i3] = (byte) iArr[length + i3];
        }
        return bArr2;
    }

    /* renamed from: b */
    public static void m11242b(CharSequence charSequence, C10548a aVar) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int charAt = charSequence.charAt(i) - '0';
            int i2 = i + 2;
            if (i2 < length) {
                aVar.m11457a((charAt * 100) + ((charSequence.charAt(i + 1) - '0') * 10) + (charSequence.charAt(i2) - '0'), 10);
                i += 3;
            } else {
                i++;
                if (i < length) {
                    aVar.m11457a((charAt * 10) + (charSequence.charAt(i) - '0'), 7);
                    i = i2;
                } else {
                    aVar.m11457a(charAt, 4);
                }
            }
        }
    }
}
