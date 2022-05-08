package p065f.p066a.p068b.p069a.p070r;

import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;
/* renamed from: f.a.b.a.r.o */
/* loaded from: classes-dex2jar.jar:f/a/b/a/r/o.class */
public class C4281o {

    /* renamed from: e */
    public static byte[] f10346e;

    /* renamed from: f */
    public static byte[] f10347f;

    /* renamed from: a */
    public ByteArrayInputStream f10348a;

    /* renamed from: b */
    public C4280n f10349b = null;

    /* renamed from: c */
    public C4278l f10350c = null;

    /* renamed from: d */
    public final boolean f10351d;

    public C4281o(byte[] bArr, boolean z) {
        this.f10348a = null;
        this.f10348a = new ByteArrayInputStream(bArr);
        this.f10351d = z;
    }

    /* renamed from: a */
    public static int m29128a(C4282p pVar) {
        byte[] d;
        if (f10346e == null && f10347f == null) {
            return 1;
        }
        if (f10347f == null) {
            return (f10346e == null || (d = pVar.m29103d()) == null || true != Arrays.equals(f10346e, d)) ? 1 : 0;
        }
        byte[] a = pVar.m29110a();
        return (a == null || true != Arrays.equals(f10347f, a)) ? 1 : 0;
    }

    /* renamed from: a */
    public static void m29123a(ByteArrayInputStream byteArrayInputStream, HashMap<Integer, Object> hashMap, Integer num) {
        int available;
        int intValue;
        int available2 = byteArrayInputStream.available();
        int intValue2 = num.intValue();
        while (intValue2 > 0) {
            int read = byteArrayInputStream.read();
            intValue2--;
            if (read != 129) {
                if (read != 131) {
                    if (read == 133 || read == 151) {
                        byte[] b = m29119b(byteArrayInputStream, 0);
                        if (!(b == null || hashMap == null)) {
                            hashMap.put(151, b);
                        }
                        available = byteArrayInputStream.available();
                        intValue = num.intValue();
                    } else {
                        if (read != 153) {
                            if (read != 137) {
                                if (read != 138) {
                                    if (-1 == m29117c(byteArrayInputStream, intValue2)) {
                                        Log.e("PduParser", "Corrupt Content-Type");
                                    } else {
                                        intValue2 = 0;
                                    }
                                }
                            }
                        }
                        byte[] b2 = m29119b(byteArrayInputStream, 0);
                        if (!(b2 == null || hashMap == null)) {
                            hashMap.put(153, b2);
                        }
                        available = byteArrayInputStream.available();
                        intValue = num.intValue();
                    }
                }
                byteArrayInputStream.mark(1);
                int c = m29118c(byteArrayInputStream);
                byteArrayInputStream.reset();
                if (c > 127) {
                    int g = m29113g(byteArrayInputStream);
                    String[] strArr = C4279m.f10344a;
                    if (g < strArr.length) {
                        hashMap.put(131, strArr[g].getBytes());
                    }
                } else {
                    byte[] b3 = m29119b(byteArrayInputStream, 0);
                    if (!(b3 == null || hashMap == null)) {
                        hashMap.put(131, b3);
                    }
                }
                available = byteArrayInputStream.available();
                intValue = num.intValue();
            } else {
                byteArrayInputStream.mark(1);
                int c2 = m29118c(byteArrayInputStream);
                byteArrayInputStream.reset();
                if ((c2 <= 32 || c2 >= 127) && c2 != 0) {
                    int e = (int) m29115e(byteArrayInputStream);
                    if (hashMap != null) {
                        hashMap.put(129, Integer.valueOf(e));
                    }
                } else {
                    byte[] b4 = m29119b(byteArrayInputStream, 0);
                    try {
                        hashMap.put(129, Integer.valueOf(C4269c.m29158a(new String(b4))));
                    } catch (UnsupportedEncodingException e2) {
                        Log.e("PduParser", Arrays.toString(b4), e2);
                        hashMap.put(129, 0);
                    }
                }
                available = byteArrayInputStream.available();
                intValue = num.intValue();
            }
            intValue2 = intValue - (available2 - available);
        }
        if (intValue2 != 0) {
            Log.e("PduParser", "Corrupt Content-Type");
        }
    }

    /* renamed from: a */
    public static void m29122a(String str) {
    }

    /* renamed from: a */
    public static boolean m29130a(int i) {
        if (i < 32 || i > 126) {
            return (i >= 128 && i <= 255) || i == 9 || i == 10 || i == 13;
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m29129a(C4280n nVar) {
        if (nVar == null) {
            return false;
        }
        int d = nVar.m29133d(140);
        if (nVar.m29133d(141) == 0) {
            return false;
        }
        switch (d) {
            case 128:
                return (nVar.m29132e(132) == null || nVar.m29141a(137) == null || nVar.m29132e(152) == null) ? false : true;
            case 129:
                return (nVar.m29133d(146) == 0 || nVar.m29132e(152) == null) ? false : true;
            case 130:
                return (nVar.m29132e(131) == null || -1 == nVar.m29134c(136) || nVar.m29132e(138) == null || -1 == nVar.m29134c(142) || nVar.m29132e(152) == null) ? false : true;
            case 131:
                return (nVar.m29133d(149) == 0 || nVar.m29132e(152) == null) ? false : true;
            case 132:
                return (nVar.m29132e(132) == null || -1 == nVar.m29134c(133)) ? false : true;
            case 133:
                return nVar.m29132e(152) != null;
            case 134:
                return (-1 == nVar.m29134c(133) || nVar.m29132e(139) == null || nVar.m29133d(149) == 0 || nVar.m29136b(151) == null) ? false : true;
            case 135:
                return (nVar.m29141a(137) == null || nVar.m29132e(139) == null || nVar.m29133d(155) == 0 || nVar.m29136b(151) == null) ? false : true;
            case 136:
                return (-1 == nVar.m29134c(133) || nVar.m29141a(137) == null || nVar.m29132e(139) == null || nVar.m29133d(155) == 0 || nVar.m29136b(151) == null) ? false : true;
            default:
                return false;
        }
    }

    /* renamed from: a */
    public static byte[] m29126a(ByteArrayInputStream byteArrayInputStream, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int read = byteArrayInputStream.read();
        while (-1 != read && read != 0) {
            if (i == 2) {
                if (m29121b(read)) {
                    byteArrayOutputStream.write(read);
                }
            } else if (m29130a(read)) {
                byteArrayOutputStream.write(read);
            }
            read = byteArrayInputStream.read();
        }
        if (byteArrayOutputStream.size() > 0) {
            return byteArrayOutputStream.toByteArray();
        }
        return null;
    }

    /* renamed from: a */
    public static byte[] m29124a(ByteArrayInputStream byteArrayInputStream, HashMap<Integer, Object> hashMap) {
        byte[] bArr;
        byteArrayInputStream.mark(1);
        int read = byteArrayInputStream.read();
        byteArrayInputStream.reset();
        int i = read & 255;
        if (i < 32) {
            int i2 = m29111i(byteArrayInputStream);
            int available = byteArrayInputStream.available();
            byteArrayInputStream.mark(1);
            int read2 = byteArrayInputStream.read();
            byteArrayInputStream.reset();
            int i3 = read2 & 255;
            if (i3 >= 32 && i3 <= 127) {
                bArr = m29119b(byteArrayInputStream, 0);
            } else if (i3 > 127) {
                int g = m29113g(byteArrayInputStream);
                String[] strArr = C4279m.f10344a;
                if (g < strArr.length) {
                    bArr = strArr[g].getBytes();
                } else {
                    byteArrayInputStream.reset();
                    bArr = m29119b(byteArrayInputStream, 0);
                }
            } else {
                Log.e("PduParser", "Corrupt content-type");
                return C4279m.f10344a[0].getBytes();
            }
            int available2 = i2 - (available - byteArrayInputStream.available());
            if (available2 > 0) {
                m29123a(byteArrayInputStream, hashMap, Integer.valueOf(available2));
            }
            if (available2 < 0) {
                Log.e("PduParser", "Corrupt MMS message");
                return C4279m.f10344a[0].getBytes();
            }
        } else {
            bArr = i <= 127 ? m29119b(byteArrayInputStream, 0) : C4279m.f10344a[m29113g(byteArrayInputStream)].getBytes();
        }
        return bArr;
    }

    /* renamed from: b */
    public static boolean m29121b(int i) {
        if (i < 33 || i > 126 || i == 34 || i == 44 || i == 47 || i == 123 || i == 125 || i == 40 || i == 41) {
            return false;
        }
        switch (i) {
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
                return false;
            default:
                switch (i) {
                    case 91:
                    case 92:
                    case 93:
                        return false;
                    default:
                        return true;
                }
        }
    }

    /* renamed from: b */
    public static byte[] m29119b(ByteArrayInputStream byteArrayInputStream, int i) {
        byteArrayInputStream.mark(1);
        int read = byteArrayInputStream.read();
        if (1 == i && 34 == read) {
            byteArrayInputStream.mark(1);
        } else if (i == 0 && 127 == read) {
            byteArrayInputStream.mark(1);
        } else {
            byteArrayInputStream.reset();
        }
        return m29126a(byteArrayInputStream, i);
    }

    /* renamed from: c */
    public static int m29118c(ByteArrayInputStream byteArrayInputStream) {
        return byteArrayInputStream.read() & 255;
    }

    /* renamed from: c */
    public static int m29117c(ByteArrayInputStream byteArrayInputStream, int i) {
        int read = byteArrayInputStream.read(new byte[i], 0, i);
        int i2 = read;
        if (read < i) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: d */
    public static C4271e m29116d(ByteArrayInputStream byteArrayInputStream) {
        int i;
        byteArrayInputStream.mark(1);
        int read = byteArrayInputStream.read() & 255;
        if (read == 0) {
            return new C4271e("");
        }
        byteArrayInputStream.reset();
        if (read < 32) {
            m29111i(byteArrayInputStream);
            i = m29113g(byteArrayInputStream);
        } else {
            i = 0;
        }
        byte[] b = m29119b(byteArrayInputStream, 0);
        try {
            return i != 0 ? new C4271e(i, b) : new C4271e(b);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: e */
    public static long m29115e(ByteArrayInputStream byteArrayInputStream) {
        byteArrayInputStream.mark(1);
        int read = byteArrayInputStream.read();
        byteArrayInputStream.reset();
        return read > 127 ? m29113g(byteArrayInputStream) : m29114f(byteArrayInputStream);
    }

    /* renamed from: f */
    public static long m29114f(ByteArrayInputStream byteArrayInputStream) {
        int read = byteArrayInputStream.read() & 255;
        if (read <= 8) {
            long j = 0;
            for (int i = 0; i < read; i++) {
                j = (j << 8) + (byteArrayInputStream.read() & 255);
            }
            return j;
        }
        throw new RuntimeException("Octet count greater than 8 and I can't represent that!");
    }

    /* renamed from: g */
    public static int m29113g(ByteArrayInputStream byteArrayInputStream) {
        return byteArrayInputStream.read() & 127;
    }

    /* renamed from: h */
    public static int m29112h(ByteArrayInputStream byteArrayInputStream) {
        int i = 0;
        int read = byteArrayInputStream.read();
        int i2 = read;
        if (read == -1) {
            return read;
        }
        while ((i2 & 128) != 0) {
            i = (i << 7) | (i2 & 127);
            int read2 = byteArrayInputStream.read();
            i2 = read2;
            if (read2 == -1) {
                return read2;
            }
        }
        return (i << 7) | (i2 & 127);
    }

    /* renamed from: i */
    public static int m29111i(ByteArrayInputStream byteArrayInputStream) {
        int read = byteArrayInputStream.read() & 255;
        if (read <= 30) {
            return read;
        }
        if (read == 31) {
            return m29112h(byteArrayInputStream);
        }
        throw new RuntimeException("Value length > LENGTH_QUOTE!");
    }

    /* renamed from: a */
    public C4272f m29131a() {
        ByteArrayInputStream byteArrayInputStream = this.f10348a;
        if (byteArrayInputStream == null) {
            return null;
        }
        this.f10349b = m29127a(byteArrayInputStream);
        C4280n nVar = this.f10349b;
        if (nVar == null) {
            return null;
        }
        int d = nVar.m29133d(140);
        if (!m29129a(this.f10349b)) {
            m29122a("check mandatory headers failed!");
            return null;
        }
        if (128 == d || 132 == d) {
            this.f10350c = m29120b(this.f10348a);
            if (this.f10350c == null) {
                return null;
            }
        }
        switch (d) {
            case 128:
                return new C4288v(this.f10349b, this.f10350c);
            case 129:
                return new C4287u(this.f10349b);
            case 130:
                return new C4276j(this.f10349b);
            case 131:
                return new C4277k(this.f10349b);
            case 132:
                C4286t tVar = new C4286t(this.f10349b, this.f10350c);
                byte[] b = tVar.m29094b();
                if (b == null) {
                    return null;
                }
                String str = new String(b);
                if (str.equals("application/vnd.wap.multipart.mixed") || str.equals("application/vnd.wap.multipart.related") || str.equals("application/vnd.wap.multipart.alternative")) {
                    return tVar;
                }
                if (!str.equals("application/vnd.wap.multipart.alternative")) {
                    return null;
                }
                C4282p a = this.f10350c.m29145a(0);
                this.f10350c.m29146a();
                this.f10350c.m29144a(0, a);
                return tVar;
            case 133:
                return new C4267a(this.f10349b);
            case 134:
                return new C4270d(this.f10349b);
            case 135:
                return new C4285s(this.f10349b);
            case 136:
                return new C4284r(this.f10349b);
            default:
                m29122a("Parser doesn't support this message type in this version!");
                return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [f.a.b.a.r.n] */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p065f.p066a.p068b.p069a.p070r.C4280n m29127a(java.io.ByteArrayInputStream r8) {
        /*
            Method dump skipped, instructions count: 2038
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p065f.p066a.p068b.p069a.p070r.C4281o.m29127a(java.io.ByteArrayInputStream):f.a.b.a.r.n");
    }

    /* renamed from: a */
    public boolean m29125a(ByteArrayInputStream byteArrayInputStream, C4282p pVar, int i) {
        int available;
        int available2 = byteArrayInputStream.available();
        int i2 = i;
        while (i2 > 0) {
            int read = byteArrayInputStream.read();
            i2--;
            if (read > 127) {
                if (read != 142) {
                    if (read != 174) {
                        if (read == 192) {
                            byte[] b = m29119b(byteArrayInputStream, 1);
                            if (b != null) {
                                pVar.m29106b(b);
                            }
                            available = byteArrayInputStream.available();
                        } else if (read != 197) {
                            if (-1 == m29117c(byteArrayInputStream, i2)) {
                                Log.e("PduParser", "Corrupt Part headers");
                                return false;
                            }
                            i2 = 0;
                        }
                    }
                    if (this.f10351d) {
                        int i3 = m29111i(byteArrayInputStream);
                        byteArrayInputStream.mark(1);
                        int available3 = byteArrayInputStream.available();
                        int read2 = byteArrayInputStream.read();
                        if (read2 == 128) {
                            pVar.m29108a(C4282p.f10352c);
                        } else if (read2 == 129) {
                            pVar.m29108a(C4282p.f10353d);
                        } else if (read2 == 130) {
                            pVar.m29108a(C4282p.f10354e);
                        } else {
                            byteArrayInputStream.reset();
                            pVar.m29108a(m29119b(byteArrayInputStream, 0));
                        }
                        if (available3 - byteArrayInputStream.available() < i3) {
                            if (byteArrayInputStream.read() == 152) {
                                pVar.m29097g(m29119b(byteArrayInputStream, 0));
                            }
                            int available4 = available3 - byteArrayInputStream.available();
                            if (available4 < i3) {
                                int i4 = i3 - available4;
                                byteArrayInputStream.read(new byte[i4], 0, i4);
                            }
                        }
                        available = byteArrayInputStream.available();
                    }
                } else {
                    byte[] b2 = m29119b(byteArrayInputStream, 0);
                    if (b2 != null) {
                        pVar.m29104c(b2);
                    }
                    available = byteArrayInputStream.available();
                }
                i2 = i - (available2 - available);
            } else if (read < 32 || read > 127) {
                if (-1 == m29117c(byteArrayInputStream, i2)) {
                    Log.e("PduParser", "Corrupt Part headers");
                    return false;
                }
                i2 = 0;
            } else {
                byte[] b3 = m29119b(byteArrayInputStream, 0);
                byte[] b4 = m29119b(byteArrayInputStream, 0);
                if (true == "Content-Transfer-Encoding".equalsIgnoreCase(new String(b3))) {
                    pVar.m29102d(b4);
                }
                available = byteArrayInputStream.available();
                i2 = i - (available2 - available);
            }
        }
        if (i2 == 0) {
            return true;
        }
        Log.e("PduParser", "Corrupt Part headers");
        return false;
    }

    /* renamed from: b */
    public C4278l m29120b(ByteArrayInputStream byteArrayInputStream) {
        if (byteArrayInputStream == null) {
            return null;
        }
        int h = m29112h(byteArrayInputStream);
        C4278l lVar = new C4278l();
        for (int i = 0; i < h; i++) {
            int h2 = m29112h(byteArrayInputStream);
            int h3 = m29112h(byteArrayInputStream);
            C4282p pVar = new C4282p();
            int available = byteArrayInputStream.available();
            if (available <= 0) {
                return null;
            }
            HashMap hashMap = new HashMap();
            byte[] a = m29124a(byteArrayInputStream, hashMap);
            if (a != null) {
                pVar.m29100e(a);
            } else {
                pVar.m29100e(C4279m.f10344a[0].getBytes());
            }
            byte[] bArr = (byte[]) hashMap.get(151);
            if (bArr != null) {
                pVar.m29096h(bArr);
            }
            Integer num = (Integer) hashMap.get(129);
            if (num != null) {
                pVar.m29109a(num.intValue());
            }
            int available2 = h2 - (available - byteArrayInputStream.available());
            if (available2 > 0) {
                if (!m29125a(byteArrayInputStream, pVar, available2)) {
                    return null;
                }
            } else if (available2 < 0) {
                return null;
            }
            if (pVar.m29107b() == null && pVar.m29099f() == null && pVar.m29101e() == null && pVar.m29110a() == null) {
                pVar.m29104c(Long.toOctalString(System.currentTimeMillis()).getBytes());
            }
            C4282p pVar2 = pVar;
            if (h3 > 0) {
                byte[] bArr2 = new byte[h3];
                String str = new String(pVar.m29103d());
                byteArrayInputStream.read(bArr2, 0, h3);
                if (str.equalsIgnoreCase("application/vnd.wap.multipart.alternative")) {
                    pVar2 = m29120b(new ByteArrayInputStream(bArr2)).m29145a(0);
                } else {
                    byte[] c = pVar.m29105c();
                    byte[] bArr3 = bArr2;
                    if (c != null) {
                        String str2 = new String(c);
                        if (str2.equalsIgnoreCase("base64")) {
                            bArr3 = C4268b.m29161a(bArr2);
                        } else {
                            bArr3 = bArr2;
                            if (str2.equalsIgnoreCase("quoted-printable")) {
                                bArr3 = C4283q.m29095a(bArr2);
                            }
                        }
                    }
                    if (bArr3 == null) {
                        m29122a("Decode part data error!");
                        return null;
                    }
                    pVar.m29098f(bArr3);
                    pVar2 = pVar;
                }
            }
            if (m29128a(pVar2) == 0) {
                lVar.m29144a(0, pVar2);
            } else {
                lVar.m29143a(pVar2);
            }
        }
        return lVar;
    }
}
