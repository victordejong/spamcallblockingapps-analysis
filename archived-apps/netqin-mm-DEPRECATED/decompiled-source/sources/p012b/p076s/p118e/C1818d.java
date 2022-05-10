package p012b.p076s.p118e;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
/* renamed from: b.s.e.d */
/* loaded from: classes-dex2jar.jar:b/s/e/d.class */
public class C1818d {

    /* renamed from: d */
    public static final String f7294d = new String("♫".getBytes(StandardCharsets.UTF_8), StandardCharsets.UTF_8);

    /* renamed from: a */
    public final StringBuilder f7295a = new StringBuilder();

    /* renamed from: b */
    public int f7296b = 0;

    /* renamed from: c */
    public AbstractC1827i f7297c;

    /* renamed from: b.s.e.d$a */
    /* loaded from: classes-dex2jar.jar:b/s/e/d$a.class */
    public class C1819a implements AbstractC1827i {
        public C1819a(C1818d dVar) {
        }

        @Override // p012b.p076s.p118e.C1818d.AbstractC1827i
        /* renamed from: a */
        public void mo31997a(C1821c cVar) {
        }
    }

    /* renamed from: b.s.e.d$b */
    /* loaded from: classes-dex2jar.jar:b/s/e/d$b.class */
    public static class C1820b {
        public C1820b(int i, int i2, int i3, int i4) {
        }
    }

    /* renamed from: b.s.e.d$c */
    /* loaded from: classes-dex2jar.jar:b/s/e/d$c.class */
    public static class C1821c {

        /* renamed from: a */
        public final int f7298a;

        /* renamed from: b */
        public final Object f7299b;

        public C1821c(int i, Object obj) {
            this.f7298a = i;
            this.f7299b = obj;
        }
    }

    /* renamed from: b.s.e.d$d */
    /* loaded from: classes-dex2jar.jar:b/s/e/d$d.class */
    public static class C1822d {

        /* renamed from: a */
        public final int f7300a;

        /* renamed from: b */
        public final int f7301b;

        /* renamed from: c */
        public final boolean f7302c;

        /* renamed from: d */
        public final boolean f7303d;

        public C1822d(int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            this.f7300a = i;
            this.f7301b = i2;
            this.f7302c = z;
            this.f7303d = z2;
        }
    }

    /* renamed from: b.s.e.d$e */
    /* loaded from: classes-dex2jar.jar:b/s/e/d$e.class */
    public static class C1823e {
        public C1823e(C1820b bVar, C1820b bVar2, C1820b bVar3) {
        }
    }

    /* renamed from: b.s.e.d$f */
    /* loaded from: classes-dex2jar.jar:b/s/e/d$f.class */
    public static class C1824f {

        /* renamed from: a */
        public final int f7304a;

        /* renamed from: b */
        public final int f7305b;

        public C1824f(int i, int i2) {
            this.f7304a = i;
            this.f7305b = i2;
        }
    }

    /* renamed from: b.s.e.d$g */
    /* loaded from: classes-dex2jar.jar:b/s/e/d$g.class */
    public static class C1825g {

        /* renamed from: a */
        public final int f7306a;

        /* renamed from: b */
        public final boolean f7307b;

        /* renamed from: c */
        public final boolean f7308c;

        /* renamed from: d */
        public final int f7309d;

        /* renamed from: e */
        public final int f7310e;

        /* renamed from: f */
        public final int f7311f;

        /* renamed from: g */
        public final int f7312g;

        /* renamed from: h */
        public final int f7313h;

        public C1825g(int i, boolean z, boolean z2, boolean z3, int i2, boolean z4, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.f7306a = i;
            this.f7307b = z;
            this.f7308c = z4;
            this.f7309d = i3;
            this.f7310e = i4;
            this.f7311f = i5;
            this.f7312g = i6;
            this.f7313h = i7;
        }
    }

    /* renamed from: b.s.e.d$h */
    /* loaded from: classes-dex2jar.jar:b/s/e/d$h.class */
    public static class C1826h {
        public C1826h(C1820b bVar, C1820b bVar2, int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7) {
        }
    }

    /* renamed from: b.s.e.d$i */
    /* loaded from: classes-dex2jar.jar:b/s/e/d$i.class */
    public interface AbstractC1827i {
        /* renamed from: a */
        void mo31997a(C1821c cVar);
    }

    public C1818d(AbstractC1827i iVar) {
        this.f7297c = new C1819a(this);
        if (iVar != null) {
            this.f7297c = iVar;
        }
    }

    /* renamed from: a */
    public final int m32007a(byte[] bArr, int i) {
        int i2 = this.f7296b;
        if (i2 < 24 || i2 > 31) {
            int i3 = this.f7296b;
            if (i3 < 16 || i3 > 23) {
                int i4 = this.f7296b;
                if (i4 == 3) {
                    m32009a(new C1821c(2, Character.valueOf((char) i4)));
                } else if (i4 != 8) {
                    switch (i4) {
                        case 12:
                            m32009a(new C1821c(2, Character.valueOf((char) i4)));
                            break;
                        case 13:
                            this.f7295a.append('\n');
                            break;
                        case 14:
                            m32009a(new C1821c(2, Character.valueOf((char) i4)));
                            break;
                    }
                } else {
                    m32009a(new C1821c(2, Character.valueOf((char) i4)));
                }
            } else {
                i++;
            }
        } else {
            if (i2 == 24) {
                try {
                    if (bArr[i] == 0) {
                        this.f7295a.append((char) bArr[i + 1]);
                    } else {
                        this.f7295a.append(new String(Arrays.copyOfRange(bArr, i, i + 2), "EUC-KR"));
                    }
                } catch (UnsupportedEncodingException e) {
                    Log.e("Cea708CCParser", "P16 Code - Could not find supported encoding", e);
                }
            }
            i += 2;
        }
        return i;
    }

    /* renamed from: a */
    public final void m32010a() {
        if (this.f7295a.length() > 0) {
            this.f7297c.mo31997a(new C1821c(1, this.f7295a.toString()));
            this.f7295a.setLength(0);
        }
    }

    /* renamed from: a */
    public final void m32009a(C1821c cVar) {
        m32010a();
        this.f7297c.mo31997a(cVar);
    }

    /* renamed from: a */
    public void m32008a(byte[] bArr) {
        int i = 0;
        while (i < bArr.length) {
            i = m31998j(bArr, i);
        }
        m32010a();
    }

    /* renamed from: b */
    public final int m32006b(byte[] bArr, int i) {
        int i2 = this.f7296b;
        switch (i2) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
                m32009a(new C1821c(3, Integer.valueOf(i2 - 128)));
                break;
            case 136:
                byte b = bArr[i];
                i++;
                m32009a(new C1821c(4, Integer.valueOf(b & 255)));
                break;
            case 137:
                byte b2 = bArr[i];
                i++;
                m32009a(new C1821c(5, Integer.valueOf(b2 & 255)));
                break;
            case 138:
                byte b3 = bArr[i];
                i++;
                m32009a(new C1821c(6, Integer.valueOf(b3 & 255)));
                break;
            case 139:
                byte b4 = bArr[i];
                i++;
                m32009a(new C1821c(7, Integer.valueOf(b4 & 255)));
                break;
            case 140:
                byte b5 = bArr[i];
                i++;
                m32009a(new C1821c(8, Integer.valueOf(b5 & 255)));
                break;
            case 141:
                byte b6 = bArr[i];
                i++;
                m32009a(new C1821c(9, Integer.valueOf(b6 & 255)));
                break;
            case 142:
                m32009a(new C1821c(10, null));
                break;
            case 143:
                m32009a(new C1821c(11, null));
                break;
            case 144:
                byte b7 = bArr[i];
                byte b8 = bArr[i];
                byte b9 = bArr[i];
                int i3 = i + 1;
                boolean z = (bArr[i3] & 128) != 0;
                i += 2;
                m32009a(new C1821c(12, new C1822d(b8 & 3, (b9 & 12) >> 2, (b7 & 240) >> 4, bArr[i3] & 7, (bArr[i3] & 56) >> 3, (bArr[i3] & 64) != 0, z)));
                break;
            case 145:
                int i4 = i + 1;
                int i5 = i4 + 1;
                i = i5 + 1;
                m32009a(new C1821c(13, new C1823e(new C1820b((bArr[i] & 192) >> 6, (bArr[i] & 48) >> 4, (bArr[i] & 12) >> 2, bArr[i] & 3), new C1820b((bArr[i4] & 192) >> 6, (bArr[i4] & 48) >> 4, (bArr[i4] & 12) >> 2, bArr[i4] & 3), new C1820b(0, (bArr[i5] & 48) >> 4, (bArr[i5] & 12) >> 2, bArr[i5] & 3))));
                break;
            case 146:
                byte b10 = bArr[i];
                i += 2;
                m32009a(new C1821c(14, new C1824f(b10 & 15, bArr[i + 1] & 63)));
                break;
            case 151:
                C1820b bVar = new C1820b((bArr[i] & 192) >> 6, (bArr[i] & 48) >> 4, (bArr[i] & 12) >> 2, bArr[i] & 3);
                int i6 = i + 1;
                byte b11 = bArr[i6];
                int i7 = i + 2;
                byte b12 = bArr[i7];
                C1820b bVar2 = new C1820b(0, (bArr[i6] & 48) >> 4, (bArr[i6] & 12) >> 2, bArr[i6] & 3);
                boolean z2 = (bArr[i7] & 64) != 0;
                byte b13 = bArr[i7];
                byte b14 = bArr[i7];
                byte b15 = bArr[i7];
                int i8 = i + 3;
                i += 4;
                m32009a(new C1821c(15, new C1826h(bVar, bVar2, ((b11 & 192) >> 6) | ((b12 & 128) >> 5), z2, (b13 & 48) >> 4, (b14 & 12) >> 2, b15 & 3, (bArr[i8] & 12) >> 2, (bArr[i8] & 240) >> 4, bArr[i8] & 3)));
                break;
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                boolean z3 = (bArr[i] & 32) != 0;
                boolean z4 = (bArr[i] & 16) != 0;
                boolean z5 = (bArr[i] & 8) != 0;
                byte b16 = bArr[i];
                int i9 = i + 1;
                boolean z6 = (bArr[i9] & 128) != 0;
                int i10 = i + 3;
                int i11 = i + 5;
                i += 6;
                m32009a(new C1821c(16, new C1825g(i2 - 152, z3, z4, z5, b16 & 7, z6, bArr[i9] & Byte.MAX_VALUE, bArr[i + 2] & 255, (bArr[i10] & 240) >> 4, bArr[i10] & 15, bArr[i + 4] & 63, bArr[i11] & 7, (bArr[i11] & 56) >> 3)));
                break;
        }
        return i;
    }

    /* renamed from: c */
    public final int m32005c(byte[] bArr, int i) {
        int i2;
        int i3 = this.f7296b;
        if (i3 < 0 || i3 > 7) {
            int i4 = this.f7296b;
            if (i4 < 8 || i4 > 15) {
                int i5 = this.f7296b;
                if (i5 < 16 || i5 > 23) {
                    int i6 = this.f7296b;
                    i2 = i;
                    if (i6 >= 24) {
                        i2 = i;
                        if (i6 <= 31) {
                            i2 = i + 3;
                        }
                    }
                } else {
                    i2 = i + 2;
                }
            } else {
                i2 = i + 1;
            }
        } else {
            i2 = i;
        }
        return i2;
    }

    /* renamed from: d */
    public final int m32004d(byte[] bArr, int i) {
        int i2;
        int i3 = this.f7296b;
        if (i3 < 128 || i3 > 135) {
            int i4 = this.f7296b;
            i2 = i;
            if (i4 >= 136) {
                i2 = i;
                if (i4 <= 143) {
                    i2 = i + 5;
                }
            }
        } else {
            i2 = i + 4;
        }
        return i2;
    }

    /* renamed from: e */
    public final int m32003e(byte[] bArr, int i) {
        int i2;
        int i3 = bArr[i] & 255;
        this.f7296b = i3;
        int i4 = i + 1;
        if (i3 < 0 || i3 > 31) {
            int i5 = this.f7296b;
            if (i5 < 128 || i5 > 159) {
                int i6 = this.f7296b;
                if (i6 < 32 || i6 > 127) {
                    int i7 = this.f7296b;
                    i2 = i4;
                    if (i7 >= 160) {
                        i2 = i4;
                        if (i7 <= 255) {
                            m31999i(bArr, i4);
                            i2 = i4;
                        }
                    }
                } else {
                    m32000h(bArr, i4);
                    i2 = i4;
                }
            } else {
                i2 = m32004d(bArr, i4);
            }
        } else {
            i2 = m32005c(bArr, i4);
        }
        return i2;
    }

    /* renamed from: f */
    public final int m32002f(byte[] bArr, int i) {
        int i2 = this.f7296b;
        if (i2 == 127) {
            this.f7295a.append(f7294d);
        } else {
            this.f7295a.append((char) i2);
        }
        return i;
    }

    /* renamed from: g */
    public final int m32001g(byte[] bArr, int i) {
        this.f7295a.append((char) this.f7296b);
        return i;
    }

    /* renamed from: h */
    public final int m32000h(byte[] bArr, int i) {
        return i;
    }

    /* renamed from: i */
    public final int m31999i(byte[] bArr, int i) {
        return i;
    }

    /* renamed from: j */
    public final int m31998j(byte[] bArr, int i) {
        int i2;
        int i3 = bArr[i] & 255;
        this.f7296b = i3;
        int i4 = i + 1;
        if (i3 == 16) {
            i2 = m32003e(bArr, i4);
        } else if (i3 < 0 || i3 > 31) {
            int i5 = this.f7296b;
            if (i5 < 128 || i5 > 159) {
                int i6 = this.f7296b;
                if (i6 < 32 || i6 > 127) {
                    int i7 = this.f7296b;
                    i2 = i4;
                    if (i7 >= 160) {
                        i2 = i4;
                        if (i7 <= 255) {
                            m32001g(bArr, i4);
                            i2 = i4;
                        }
                    }
                } else {
                    m32002f(bArr, i4);
                    i2 = i4;
                }
            } else {
                i2 = m32006b(bArr, i4);
            }
        } else {
            i2 = m32007a(bArr, i4);
        }
        return i2;
    }
}
