package androidx.work;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: androidx.work.e */
/* loaded from: classes-dex2jar.jar:androidx/work/e.class */
public final class C0474e {

    /* renamed from: b */
    private static final String f2471b = AbstractC0541m.m4305f("Data");

    /* renamed from: c */
    public static final C0474e f2472c = new C0475a().m4497a();

    /* renamed from: a */
    Map<String, Object> f2473a;

    /* renamed from: androidx.work.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/e$a.class */
    public static final class C0475a {

        /* renamed from: a */
        private Map<String, Object> f2474a = new HashMap();

        /* renamed from: a */
        public C0474e m4497a() {
            C0474e c0474e = new C0474e(this.f2474a);
            C0474e.m4498k(c0474e);
            return c0474e;
        }

        /* renamed from: b */
        public C0475a m4496b(String str, Object obj) {
            if (obj == null) {
                this.f2474a.put(str, null);
            } else {
                Class<?> cls = obj.getClass();
                if (cls == Boolean.class || cls == Byte.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class || cls == Boolean[].class || cls == Byte[].class || cls == Integer[].class || cls == Long[].class || cls == Float[].class || cls == Double[].class || cls == String[].class) {
                    this.f2474a.put(str, obj);
                } else if (cls == boolean[].class) {
                    this.f2474a.put(str, C0474e.m4508a((boolean[]) obj));
                } else if (cls == byte[].class) {
                    this.f2474a.put(str, C0474e.m4507b((byte[]) obj));
                } else if (cls == int[].class) {
                    this.f2474a.put(str, C0474e.m4504e((int[]) obj));
                } else if (cls == long[].class) {
                    this.f2474a.put(str, C0474e.m4503f((long[]) obj));
                } else if (cls == float[].class) {
                    this.f2474a.put(str, C0474e.m4505d((float[]) obj));
                } else if (cls != double[].class) {
                    throw new IllegalArgumentException(String.format("Key %s has invalid type %s", str, cls));
                } else {
                    this.f2474a.put(str, C0474e.m4506c((double[]) obj));
                }
            }
            return this;
        }

        /* renamed from: c */
        public C0475a m4495c(C0474e c0474e) {
            m4494d(c0474e.f2473a);
            return this;
        }

        /* renamed from: d */
        public C0475a m4494d(Map<String, Object> map) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                m4496b(entry.getKey(), entry.getValue());
            }
            return this;
        }

        /* renamed from: e */
        public C0475a m4493e(String str, String str2) {
            this.f2474a.put(str, str2);
            return this;
        }
    }

    C0474e() {
    }

    public C0474e(C0474e c0474e) {
        this.f2473a = new HashMap(c0474e.f2473a);
    }

    C0474e(Map<String, ?> map) {
        this.f2473a = new HashMap(map);
    }

    /* renamed from: a */
    static Boolean[] m4508a(boolean[] zArr) {
        Boolean[] boolArr = new Boolean[zArr.length];
        for (int i = 0; i < zArr.length; i++) {
            boolArr[i] = Boolean.valueOf(zArr[i]);
        }
        return boolArr;
    }

    /* renamed from: b */
    static Byte[] m4507b(byte[] bArr) {
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = Byte.valueOf(bArr[i]);
        }
        return bArr2;
    }

    /* renamed from: c */
    static Double[] m4506c(double[] dArr) {
        Double[] dArr2 = new Double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = Double.valueOf(dArr[i]);
        }
        return dArr2;
    }

    /* renamed from: d */
    static Float[] m4505d(float[] fArr) {
        Float[] fArr2 = new Float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            fArr2[i] = Float.valueOf(fArr[i]);
        }
        return fArr2;
    }

    /* renamed from: e */
    static Integer[] m4504e(int[] iArr) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }

    /* renamed from: f */
    static Long[] m4503f(long[] jArr) {
        Long[] lArr = new Long[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            lArr[i] = Long.valueOf(jArr[i]);
        }
        return lArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x008a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a4 -> B:32:0x00ae). Please submit an issue!!! */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.work.C0474e m4502g(byte[] r4) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.C0474e.m4502g(byte[]):androidx.work.e");
    }

    /* renamed from: k */
    public static byte[] m4498k(C0474e c0474e) {
        Throwable th;
        IOException e;
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream3 = null;
        try {
            try {
                objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e2) {
            e = e2;
            objectOutputStream = null;
        }
        try {
            objectOutputStream2.writeInt(c0474e.m4499j());
            for (Map.Entry<String, Object> entry : c0474e.f2473a.entrySet()) {
                objectOutputStream2.writeUTF(entry.getKey());
                objectOutputStream2.writeObject(entry.getValue());
            }
            try {
                objectOutputStream2.close();
            } catch (IOException e3) {
                Log.e(f2471b, "Error in Data#toByteArray: ", e3);
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e4) {
                Log.e(f2471b, "Error in Data#toByteArray: ", e4);
            }
            if (byteArrayOutputStream.size() > 10240) {
                throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e5) {
            objectOutputStream = objectOutputStream2;
            e = e5;
            Log.e(f2471b, "Error in Data#toByteArray: ", e);
            ObjectOutputStream objectOutputStream4 = objectOutputStream;
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (objectOutputStream != null) {
                try {
                    objectOutputStream.close();
                } catch (IOException e6) {
                    Log.e(f2471b, "Error in Data#toByteArray: ", e6);
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e7) {
                Log.e(f2471b, "Error in Data#toByteArray: ", e7);
            }
            return byteArray;
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream3 = objectOutputStream2;
            if (objectOutputStream3 != null) {
                try {
                    objectOutputStream3.close();
                } catch (IOException e8) {
                    Log.e(f2471b, "Error in Data#toByteArray: ", e8);
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e9) {
                Log.e(f2471b, "Error in Data#toByteArray: ", e9);
            }
            throw th;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0474e.class != obj.getClass()) {
            return false;
        }
        C0474e c0474e = (C0474e) obj;
        Set<String> keySet = this.f2473a.keySet();
        if (!keySet.equals(c0474e.f2473a.keySet())) {
            return false;
        }
        for (String str : keySet) {
            Object obj2 = this.f2473a.get(str);
            Object obj3 = c0474e.f2473a.get(str);
            if (!((obj2 == null || obj3 == null) ? obj2 == obj3 : (!(obj2 instanceof Object[]) || !(obj3 instanceof Object[])) ? obj2.equals(obj3) : Arrays.deepEquals((Object[]) obj2, (Object[]) obj3))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: h */
    public Map<String, Object> m4501h() {
        return Collections.unmodifiableMap(this.f2473a);
    }

    public int hashCode() {
        return this.f2473a.hashCode() * 31;
    }

    /* renamed from: i */
    public String m4500i(String str) {
        Object obj = this.f2473a.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    /* renamed from: j */
    public int m4499j() {
        return this.f2473a.size();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Data {");
        if (!this.f2473a.isEmpty()) {
            for (String str : this.f2473a.keySet()) {
                sb.append(str);
                sb.append(" : ");
                Object obj = this.f2473a.get(str);
                if (obj instanceof Object[]) {
                    sb.append(Arrays.toString((Object[]) obj));
                } else {
                    sb.append(obj);
                }
                sb.append(", ");
            }
        }
        sb.append("}");
        return sb.toString();
    }
}
