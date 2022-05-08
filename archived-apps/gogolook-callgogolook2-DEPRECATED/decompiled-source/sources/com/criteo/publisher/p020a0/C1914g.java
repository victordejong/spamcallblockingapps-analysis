package com.criteo.publisher.p020a0;

import androidx.media2.exoplayer.external.C0463C;
import java.io.UnsupportedEncodingException;
/* renamed from: com.criteo.publisher.a0.g */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/g.class */
public class C1914g {

    /* renamed from: a */
    public static final /* synthetic */ boolean f2025a = !C1914g.class.desiredAssertionStatus();

    /* renamed from: com.criteo.publisher.a0.g$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/g$a.class */
    public static abstract class AbstractC1915a {

        /* renamed from: a */
        public byte[] f2026a;

        /* renamed from: b */
        public int f2027b;
    }

    /* renamed from: com.criteo.publisher.a0.g$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/g$b.class */
    public static class C1916b extends AbstractC1915a {

        /* renamed from: c */
        public final byte[] f2031c;

        /* renamed from: d */
        public int f2032d;

        /* renamed from: e */
        public int f2033e;

        /* renamed from: f */
        public final boolean f2034f;

        /* renamed from: g */
        public final boolean f2035g;

        /* renamed from: h */
        public final boolean f2036h;

        /* renamed from: i */
        public final byte[] f2037i;

        /* renamed from: l */
        public static final /* synthetic */ boolean f2030l = !C1914g.class.desiredAssertionStatus();

        /* renamed from: j */
        public static final byte[] f2028j = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

        /* renamed from: k */
        public static final byte[] f2029k = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

        public C1916b(int i, byte[] bArr) {
            this.f2026a = bArr;
            boolean z = true;
            this.f2034f = (i & 1) == 0;
            this.f2035g = (i & 2) == 0;
            if ((i & 4) == 0) {
                z = false;
            }
            this.f2036h = z;
            this.f2037i = (i & 8) == 0 ? f2028j : f2029k;
            this.f2031c = new byte[2];
            this.f2032d = 0;
            this.f2033e = this.f2035g ? 19 : -1;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:103:0x01e1 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:27:0x013f  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x01c6 -> B:22:0x0125). Please submit an issue!!! */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean m36037a(byte[] r7, int r8, int r9, boolean r10) {
            /*
                Method dump skipped, instructions count: 1201
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.p020a0.C1914g.C1916b.m36037a(byte[], int, int, boolean):boolean");
        }
    }

    /* renamed from: a */
    public static byte[] m36040a(byte[] bArr, int i) {
        return m36039a(bArr, 0, bArr.length, i);
    }

    /* renamed from: a */
    public static byte[] m36039a(byte[] bArr, int i, int i2, int i3) {
        int i4;
        C1916b bVar = new C1916b(i3, null);
        int i5 = (i2 / 3) * 4;
        int i6 = 2;
        if (bVar.f2034f) {
            i4 = i5;
            if (i2 % 3 > 0) {
                i4 = i5 + 4;
            }
        } else {
            int i7 = i2 % 3;
            i4 = i7 != 1 ? i7 != 2 ? i5 : i5 + 3 : i5 + 2;
        }
        int i8 = i4;
        if (bVar.f2035g) {
            i8 = i4;
            if (i2 > 0) {
                int i9 = (i2 - 1) / 57;
                if (!bVar.f2036h) {
                    i6 = 1;
                }
                i8 = i4 + ((i9 + 1) * i6);
            }
        }
        bVar.f2026a = new byte[i8];
        bVar.m36037a(bArr, i, i2, true);
        if (f2025a || bVar.f2027b == i8) {
            return bVar.f2026a;
        }
        throw new AssertionError();
    }

    /* renamed from: b */
    public static String m36038b(byte[] bArr, int i) {
        try {
            return new String(m36040a(bArr, i), C0463C.ASCII_NAME);
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }
}
