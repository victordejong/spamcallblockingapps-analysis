package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.hardware.SensorManager;
import android.os.Build;
import com.appsflyer.AFLogger;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.appsflyer.internal.a */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/a.class */
public final class C0649a {

    /* renamed from: ǃ */
    private static int f2949 = 0;

    /* renamed from: ι */
    private static int f2951 = 1;

    /* renamed from: ı */
    private static char[] f2948 = {63839, 22950, 47286, 7086, 31369, 56729, 15518, 40874, 65274, 20989, 45262, 5065, 29382, 54568, 13349, 38714, 63015, 18758, 43046, 2841, 27242, 52597, 11370, 36684, 60993, 16726, 41403, 129, 25527, 49806, 9611, 33939, 59291, 18170, 17714, 27152, 17694, 58856, 1266, 43004, 50834, 25060, 33006, 9200, 17075, 60837, 3236, 44989, 52903, 26996, 34942, 11134, 19060, 62827, 10559, 35274, 26835, 52186, 43748, 3574, 60585, 20434, 11988, 33183, 24820, 50172, 41652, 1345, 58384, 18180, 9737, 39277, 30757, 56186, 47697, 7446, 64589, 24439, 15913, 37218, 29072, 53449, 45959, 4787, 62904, 21670, 'a', 41112, 16776, 58000, 33719, 9383, 50592, 26260, 2015, 43221, 18866, 60112, 35817, 11274, 52480, 28175, 3858, 45103, 20737, 61987, 37718, 13391, 54595, 30335, 5986, 57860, 17149, 41965, 245, 25042, 50882, 10181, 34033, 58813, 19106, 43915, 2195, 27034, 52858, 12131, 35946, 60715, 21088, 45900, 4169, 28974, 54820, 14131, 'a', 41112, 16776, 58000, 33719, 9383, 50592, 26260, 2015, 43221, 18866, 60115, 35835, 11271, 52506, 28169, 3892, 45111, 20799, 61993, 64255, 23046, 47894, 6158, 31017, 56889, 16190, 39946, 64832, 21085, 45942, 4130, 28995, 54930, 14211, 9117, '\\', 41176, 'j', 41111, 16794, 57987, 33782, 9383, 50603, 26260, 1988, 43211, 18924, 60150, 35809, 11276, '/', 41109, 16781, 57985, 33712, 9387, '.', 41180, 16835, 58046, 33707, 9444, 50668, 26260, 1946, 43151, 'C', 41118, 16777, 57985, 33715, 9405, 50609, 26327, 2037, 43230, 18943, 60151, 35832, 11274, 52509, 28165, 3854, 'F', 41111, 16773, 57998, 33725, 9386, 50660, 26318, 2015, 43142, 18939, 60151, 35836, 11358, 52503, 28171, 3843, 45118, 20777, 62050, 37704, 13391, 54608, 30322, 5936, 47217, 22677, 63878, 39552, 15358, 56497, 32178, 7843, 49107, 24796, 470, 41713, 17377, 58602, 34112, 9808, 'g', 41107, 16792, 58027, 33718, 9405, 50608, 26331, 2012, 43210, 18937, 60150, 35785, 11278, 52484, 28166, 3849, 45109, 20781, 62006, 37713, 13377, 54602, 30313, 35976, 11349, 52546, 28234, 3960, 43126, 18810, 59932, 35625, 9224, 50481, 26165, 1830, 41174, 16843, 58084, 33747, 15614, 56802, 32505, 8071, 47244, 22912, 64191, 1993, 42776, 17930, 58625, 33842, 8997, 49771, 24924, 'Q', 44895, 20092, 60790, 35938, 11217, 51849, 27008, 2185, 47029, 22182, 62894, 38083, 13252, 53967, 29109, 4338, 49132, 24327, 65045, 40200, 15413, 56187, 31282, 6438, 47181, 26443, 1549, 42354, 17529, 58216, 33424, 8591, 49309, 28602, 3762, 44457, 19595, 60315};

    /* renamed from: Ι */
    private static long f2950 = -5315750788454244106L;

    /* renamed from: com.appsflyer.internal.a$b */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/a$b.class */
    public static final class C0650b extends HashMap<String, Object> {

        /* renamed from: Ɩ */
        private static int f2953 = 1;

        /* renamed from: ɩ */
        private static int f2955;

        /* renamed from: Ι */
        private final Map<String, Object> f2956;

        /* renamed from: ι */
        private final Context f2957;

        /* renamed from: ı */
        private static char[] f2952 = {'a', 29181, 58217, 21669, 50693, 14442, 43463, 6990, 36012, 65042, 28771, 57817, 16883, 12408, 41670, 5422, 34713, 'N', 29140, 58217, 21651, 50750, 14406, 43500, 7033, 'k', 29182, 58192, 34332, 63360, 25893, 53959, 16499, 48665, 12280, 40224, 2759, 30823, 62993, 26529, 54623, 17105, 45161, 11777, 40877, 3345, 31479, 59550, 26112, 55277, 17731, 45810, 8331, 40569, 4019, 32074, 60154, 22685, 54896, 18394, 46434, 8930, 37001, 3643, 32706, 60788, 23319, 51337, 18040, 46985, 'k', 29182, 58192, 21736, 50773, 14398, 43419, 48619, 52351, 24265, 59695, 31637, 34246, 5198, 42693, 12603, 17309, 52715, 23648, 61096, 31014, 35730, 22008, 9339, 46792, 305, 37778, '-', 29161, 58197, 21759, 50758, 'f', 29178, 58207, 21693, 50697, 14435, 43394, 7002, 36029, 65053, 28779, 57819, 21285, 50347, 13843, 43131, 6615, 35691, 64653, 28388, 57466, 20887, 49956, 13452, 42724, 6230, 35291, 64377, 27779, 57062, 20574, 49581, 13120, 42142, 5870, 34898, 63913, 27415, 56694, 20212, 49239, 12733, 41812, 5417, 62116, 33596, 4498, 42610, 13515, 51876, 23380, 59854, 32298, 3205, 33452, 4950, 41395, 13951, 50318, 23267, 60231, 31157, 50798, 47098, 9565, 37548, '\f', 65121, 28617, 56604, 19134, 14354, 46709, 10179, 38181, 676, 61531, 28283, 57308, 19760, 14976, 43233, 9853, 38806, 1311, 62115, 24787, 56952, 20468, 15620, 43682, 6367, 38502, 1922, 62766, 25274, 53470, 20091, 16263, 47271, 51501, 23432, 60530, 32474, 32934, 4368, 41882, 13438, 18130, 51384, 39154, 59689, 31626, 45277, 49488, 21494, 58380, 30381, 35035, 47215, '&', 29155, '&', 29160, 55053, 42688, 37559, 58234, 29078, 50736, 21708, 43751, 15107, 35293, 7801, 27792, 58093, 29467, 49661, 22138, 42186, 15017};

        /* renamed from: ǃ */
        private static long f2954 = 2987417467579232667L;

        /* renamed from: com.appsflyer.internal.a$b$b */
        /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/a$b$b.class */
        public static final class C0651b {

            /* renamed from: ı */
            private long f2958;

            /* renamed from: Ι */
            private final Object f2959;

            /* renamed from: ι */
            public String f2960;

            C0651b() {
            }

            public C0651b(long j, String str) {
                this.f2959 = new Object();
                this.f2958 = 0L;
                this.f2960 = "";
                this.f2958 = j;
                this.f2960 = str;
            }

            /* renamed from: ı */
            public static C0651b m4092(String str) {
                if (str == null) {
                    return new C0651b(0L, "");
                }
                String[] split = str.split(",");
                return split.length < 2 ? new C0651b(0L, "") : new C0651b(Long.parseLong(split[0]), split[1]);
            }

            /* renamed from: ı */
            private boolean m4093(long j, String str) {
                synchronized (this.f2959) {
                    if (str != null) {
                        if (!str.equals(this.f2960) && m4091(j)) {
                            this.f2958 = j;
                            this.f2960 = str;
                            return true;
                        }
                    }
                    return false;
                }
            }

            /* renamed from: ǃ */
            private boolean m4091(long j) {
                return j - this.f2958 > 2000;
            }

            /* renamed from: ǃ */
            static byte[] m4090(String str) throws Exception {
                return str.getBytes();
            }

            /* renamed from: ɩ */
            static byte[] m4089(byte[] bArr) throws Exception {
                for (int i = 0; i < bArr.length; i++) {
                    bArr[i] = (byte) (bArr[i] ^ ((i % 2) + 42));
                }
                return bArr;
            }

            /* renamed from: Ι */
            static String m4087(byte[] bArr) throws Exception {
                StringBuilder sb = new StringBuilder();
                for (byte b : bArr) {
                    String hexString = Integer.toHexString(b);
                    String str = hexString;
                    if (hexString.length() == 1) {
                        str = "0".concat(String.valueOf(hexString));
                    }
                    sb.append(str);
                }
                return sb.toString();
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder();
                sb.append(this.f2958);
                sb.append(",");
                sb.append(this.f2960);
                return sb.toString();
            }

            /* renamed from: Ι */
            public final boolean m4088(C0651b c0651b) {
                return m4093(c0651b.f2958, c0651b.f2960);
            }
        }

        public C0650b(Map<String, Object> map, Context context) {
            this.f2956 = map;
            this.f2957 = context;
            put(m4095(), m4094());
        }

        /* renamed from: ı */
        private static String m4097(int i, int i2, char c) {
            int i3 = f2953 + 31;
            f2955 = i3 % 128;
            if (i3 % 2 != 0) {
            }
            char[] cArr = new char[i];
            int i4 = 0;
            while (true) {
                if (i4 < i ? true : true) {
                    break;
                }
                int i5 = f2955;
                int i6 = i5 + 53;
                f2953 = i6 % 128;
                if (i6 % 2 == 0) {
                    cArr[i4] = (char) ((f2952[i2 << i4] * (i4 ^ f2954)) % c);
                    i4 += 102;
                } else {
                    cArr[i4] = (char) ((f2952[i2 + i4] ^ (i4 * f2954)) ^ c);
                    i4++;
                }
                f2953 = (i5 + 33) % 128;
            }
            String str = new String(cArr);
            int i7 = f2953 + 11;
            f2955 = i7 % 128;
            if (i7 % 2 == 0) {
                return str;
            }
            throw new ArithmeticException("divide by zero");
        }

        /* renamed from: ǃ */
        private static StringBuilder m4096(String... strArr) throws Exception {
            ArrayList arrayList = new ArrayList();
            f2955 = (f2953 + 47) % 128;
            int i = 0;
            while (true) {
                if (!(i < 3 ? true : true)) {
                    break;
                }
                arrayList.add(Integer.valueOf(strArr[i].length()));
                i++;
            }
            Collections.sort(arrayList);
            int intValue = ((Integer) arrayList.get(0)).intValue();
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            while (true) {
                if (!(i2 >= intValue)) {
                    f2955 = (f2953 + 15) % 128;
                    Integer num = null;
                    for (int i3 = 0; i3 < 3; i3++) {
                        char charAt = strArr[i3].charAt(i2);
                        if (num != null) {
                            charAt ^= num.intValue();
                            f2955 = (f2953 + 97) % 128;
                        }
                        num = Integer.valueOf(charAt);
                    }
                    sb.append(Integer.toHexString(num.intValue()));
                    i2++;
                } else {
                    return sb;
                }
            }
        }

        /* renamed from: Ι */
        private String m4095() {
            f2953 = (f2955 + 23) % 128;
            try {
                String num = Integer.toString(Build.VERSION.SDK_INT);
                String obj = this.f2956.get(m4097(12, 0, (char) 0).intern()).toString();
                String obj2 = this.f2956.get(m4097(5, 12, (char) 16785).intern()).toString();
                if (!(obj2 != null)) {
                    obj2 = m4097(8, 17, (char) 0).intern();
                }
                StringBuilder sb = new StringBuilder(obj);
                sb.reverse();
                StringBuilder m4096 = m4096(num, obj2, sb.toString());
                int length = m4096.length();
                if (!(length > 4 ? true : true)) {
                    int i = length;
                    while (true) {
                        if (!(i < 4 ? true : true)) {
                            break;
                        }
                        i++;
                        m4096.append('1');
                    }
                } else {
                    int i2 = f2955 + 13;
                    f2953 = i2 % 128;
                    if (!(i2 % 2 == 0 ? true : true)) {
                        m4096.delete(4, length);
                    } else {
                        m4096.delete(2, length);
                    }
                }
                m4096.insert(0, m4097(3, 25, (char) 0).intern());
                return m4096.toString();
            } catch (Exception e) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(m4097(42, 28, (char) 34426).intern());
                sb2.append(e);
                AFLogger.afRDLog(sb2.toString());
                return m4097(7, 70, (char) 0).intern();
            }
        }

        /* renamed from: ι */
        private String m4094() {
            String str;
            String str2;
            int i;
            String str3;
            boolean z;
            int i2;
            try {
                String obj = this.f2956.get(m4097(12, 0, (char) 0).intern()).toString();
                String obj2 = this.f2956.get(m4097(15, 77, (char) 48525).intern()).toString();
                String replaceAll = m4097(5, 92, (char) 21966).intern().replaceAll(m4097(5, 97, (char) 0).intern(), "");
                StringBuilder sb = new StringBuilder();
                sb.append(obj);
                sb.append(obj2);
                sb.append(replaceAll);
                String m4083 = C0652ab.m4083(sb.toString());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("");
                sb2.append(m4083.substring(0, 16));
                str = sb2.toString();
            } catch (Exception e) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(m4097(44, 102, (char) 0).intern());
                sb3.append(e);
                AFLogger.afRDLog(sb3.toString());
                StringBuilder sb4 = new StringBuilder();
                sb4.append("");
                sb4.append(m4097(18, 146, (char) 62150).intern());
                str = sb4.toString();
            }
            try {
                Intent registerReceiver = this.f2957.registerReceiver(null, new IntentFilter(m4097(37, 164, (char) 50703).intern()));
                i = -2700;
                if (!(registerReceiver != null ? true : true)) {
                    f2953 = (f2955 + 125) % 128;
                    i = registerReceiver.getIntExtra(m4097(11, 201, (char) 47315).intern(), -2700);
                }
                str3 = this.f2957.getApplicationInfo().nativeLibraryDir;
                z = true;
                if (str3 != null) {
                    z = true;
                }
            } catch (Exception e2) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append(m4097(44, 102, (char) 0).intern());
                sb5.append(e2);
                AFLogger.afRDLog(sb5.toString());
                StringBuilder sb6 = new StringBuilder();
                sb6.append(str);
                sb6.append(m4097(16, 228, (char) 37585).intern());
                str2 = sb6.toString();
            }
            if (z) {
                if (str3.contains(m4097(3, 212, (char) 39050).intern()) ? true : true) {
                    f2955 = (f2953 + 37) % 128;
                    i2 = 1;
                    int size = ((SensorManager) this.f2957.getSystemService(m4097(6, 215, (char) 45230).intern())).getSensorList(-1).size();
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append(m4097(1, 221, (char) 47117).intern());
                    sb7.append(i);
                    sb7.append(m4097(2, 222, (char) 0).intern());
                    sb7.append(i2);
                    sb7.append(m4097(2, 224, (char) 0).intern());
                    sb7.append(size);
                    sb7.append(m4097(2, 226, (char) 55083).intern());
                    sb7.append(this.f2956.size());
                    String obj3 = sb7.toString();
                    StringBuilder sb8 = new StringBuilder();
                    sb8.append(str);
                    sb8.append(C0651b.m4087(C0651b.m4089(C0651b.m4090(obj3))));
                    str2 = sb8.toString();
                    return str2;
                }
            }
            i2 = 0;
            int size2 = ((SensorManager) this.f2957.getSystemService(m4097(6, 215, (char) 45230).intern())).getSensorList(-1).size();
            StringBuilder sb72 = new StringBuilder();
            sb72.append(m4097(1, 221, (char) 47117).intern());
            sb72.append(i);
            sb72.append(m4097(2, 222, (char) 0).intern());
            sb72.append(i2);
            sb72.append(m4097(2, 224, (char) 0).intern());
            sb72.append(size2);
            sb72.append(m4097(2, 226, (char) 55083).intern());
            sb72.append(this.f2956.size());
            String obj32 = sb72.toString();
            StringBuilder sb82 = new StringBuilder();
            sb82.append(str);
            sb82.append(C0651b.m4087(C0651b.m4089(C0651b.m4090(obj32))));
            str2 = sb82.toString();
            return str2;
        }
    }

    C0649a() {
    }

    /* renamed from: ı */
    private static String m4105(String str) {
        if (!(!str.contains(m4104(1, 169, (char) 9139).intern()) ? true : true)) {
            return str;
        }
        String[] split = str.split(m4104(2, 170, (char) 0).intern());
        int length = split.length;
        StringBuilder sb = new StringBuilder();
        int i = length - 1;
        sb.append(split[i]);
        sb.append(m4104(1, 169, (char) 9139).intern());
        int i2 = 1;
        while (true) {
            if (!(i2 < i)) {
                sb.append(split[0]);
                return sb.toString();
            }
            f2951 = (f2949 + 11) % 128;
            sb.append(split[i2]);
            sb.append(m4104(1, 169, (char) 9139).intern());
            i2++;
            f2951 = (f2949 + 85) % 128;
        }
    }

    /* renamed from: ǃ */
    private static String m4104(int i, int i2, char c) {
        int i3 = f2951;
        f2949 = (i3 + 75) % 128;
        char[] cArr = new char[i];
        int i4 = 0;
        f2949 = (i3 + 5) % 128;
        while (true) {
            if (!(i4 < i ? true : true)) {
                return new String(cArr);
            }
            cArr[i4] = (char) ((f2948[i2 + i4] ^ (i4 * f2950)) ^ c);
            i4++;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:2|(1:4)(1:5)|6|(4:8|(1:10)(1:11)|12|(3:14|27|28))(1:15)|29|17|(1:19)(1:20)|21|(2:23|24)|27|28) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005f, code lost:
        if (java.lang.System.getProperties().containsKey(m4104(4, 27982, 0).intern()) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c1, code lost:
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c3, code lost:
        r0 = com.appsflyer.internal.C0655af.m4065();
        r0 = m4104(17, 202, 0).intern();
        r0 = new java.lang.StringBuilder();
        r0.append(m4104(41, 219, 0).intern());
        r0.append(r13);
        r0.m4072(null, r0, r0.toString());
        r11 = null;
     */
    /* renamed from: Ι */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String m4103(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C0649a.m4103(android.content.Context):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x01e0, code lost:
        if (m4100(m4104(14, 81, 0).intern()) != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x01fa, code lost:
        if (m4100(m4104(25, 86, 0).intern()) != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x01fd, code lost:
        r5 = m4104(1, 34, 17667).intern();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x020d, code lost:
        r5 = m4104(1, 35, 27168).intern();
     */
    /* renamed from: Ι */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m4102(android.content.Context r5, long r6) {
        /*
            Method dump skipped, instructions count: 876
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C0649a.m4102(android.content.Context, long):java.lang.String");
    }

    /* renamed from: Ι */
    private static String m4101(Context context, String str) {
        Iterator it;
        try {
            it = ((List) PackageManager.class.getDeclaredMethod(m4104(24, 260, (char) 0).intern(), Integer.TYPE).invoke(context.getPackageManager(), 0)).iterator();
        } catch (IllegalAccessException e) {
            C0655af m4065 = C0655af.m4065();
            String intern = m4104(24, 284, (char) 36043).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(m4104(47, 308, (char) 1935).intern());
            sb.append(e);
            m4065.m4072(null, intern, sb.toString());
        } catch (NoSuchMethodException e2) {
            C0655af m40652 = C0655af.m4065();
            String intern2 = m4104(24, 284, (char) 36043).intern();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(m4104(47, 308, (char) 1935).intern());
            sb2.append(e2);
            m40652.m4072(null, intern2, sb2.toString());
        } catch (InvocationTargetException e3) {
            C0655af m40653 = C0655af.m4065();
            String intern3 = m4104(24, 284, (char) 36043).intern();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(m4104(47, 308, (char) 1935).intern());
            sb3.append(e3);
            m40653.m4072(null, intern3, sb3.toString());
        }
        do {
            if (!it.hasNext()) {
                f2949 = (f2951 + 45) % 128;
                return Boolean.FALSE.toString();
            }
            int i = f2951 + 17;
            f2949 = i % 128;
            if (i % 2 != 0 ? true : true) {
                ((PackageItemInfo) ((ApplicationInfo) it.next())).packageName.equals(str);
                throw new ArithmeticException("divide by zero");
            }
        } while (((PackageItemInfo) ((ApplicationInfo) it.next())).packageName.equals(str) ? true : true);
        return Boolean.TRUE.toString();
    }

    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* renamed from: Ι */
    private static String m4099(String str, Long l) {
        char c;
        boolean z = true;
        if (str != null && l != null) {
            int i = f2949 + 41;
            f2951 = i % 128;
            if (i % 2 != 0 ? str.length() == 32 : str.length() == 14) {
                StringBuilder sb = new StringBuilder(str);
                String obj = l.toString();
                char c2 = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < obj.length(); i3++) {
                    f2951 = (f2949 + 49) % 128;
                    i2 += Character.getNumericValue(obj.charAt(i3));
                }
                String hexString = Integer.toHexString(i2);
                sb.replace(7, hexString.length() + 7, hexString);
                int i4 = 0;
                while (true) {
                    c = c2;
                    if (i4 < sb.length()) {
                        c2 += Character.getNumericValue(sb.charAt(i4));
                        i4++;
                    }
                }
                while (c > 100) {
                    int i5 = f2951 + 13;
                    f2949 = i5 % 128;
                    c = !(i5 % 2 != 0 ? true : true) ? c % 'd' : c * 'd';
                }
                sb.insert(23, c);
                if (c < 10) {
                    sb.insert(23, m4104(1, 35, (char) 27168).intern());
                    f2949 = (f2951 + 71) % 128;
                }
                return sb.toString();
            }
        }
        String intern = m4104(32, 54, (char) 10589).intern();
        int i6 = f2951 + 109;
        f2949 = i6 % 128;
        if (i6 % 2 == 0) {
            z = false;
        }
        if (z) {
            throw new ArithmeticException("divide by zero");
        }
        return intern;
    }

    /* renamed from: Ι */
    private static boolean m4100(String str) {
        int i = f2949 + 103;
        f2951 = i % 128;
        if (i % 2 == 0) {
        }
        try {
            Class.forName(str);
            f2951 = (f2949 + 111) % 128;
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: ι */
    private static String m4098(Context context) {
        f2951 = (f2949 + 29) % 128;
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
            f2951 = (f2949 + 37) % 128;
            return str;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }
}
