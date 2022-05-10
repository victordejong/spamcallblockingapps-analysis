package p012b.p076s.p078b.p079a.p080a1;

import android.app.UiModeManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.text.TextUtils;
import com.android.volley.Request;
import java.io.Closeable;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import p012b.p076s.p078b.p079a.C1244l0;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
/* renamed from: b.s.b.a.a1.d0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/d0.class */
public final class C1167d0 {

    /* renamed from: d */
    public static final String f4691d;

    /* renamed from: e */
    public static final String f4692e;

    /* renamed from: a */
    public static final int f4688a = Build.VERSION.SDK_INT;

    /* renamed from: b */
    public static final String f4689b = Build.DEVICE;

    /* renamed from: c */
    public static final String f4690c = Build.MANUFACTURER;

    /* renamed from: f */
    public static final byte[] f4693f = new byte[0];

    /* renamed from: g */
    public static final Pattern f4694g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");

    /* renamed from: h */
    public static final int[] f4695h = {0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};

    static {
        String str = Build.MODEL;
        f4691d = str;
        String str2 = f4689b;
        String str3 = f4690c;
        int i = f4688a;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 17 + String.valueOf(str).length() + String.valueOf(str3).length());
        sb.append(str2);
        sb.append(", ");
        sb.append(str);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(i);
        f4692e = sb.toString();
        Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        Pattern.compile("%([A-Fa-f0-9]{2})");
    }

    /* renamed from: a */
    public static float m34496a(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }

    /* renamed from: a */
    public static int m34495a(int i) {
        switch (i) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return 204;
            case 5:
                return 220;
            case 6:
                return 252;
            case 7:
                return 1276;
            case 8:
                int i2 = f4688a;
                return (i2 < 23 && i2 < 21) ? 0 : 6396;
            default:
                return 0;
        }
    }

    /* renamed from: a */
    public static int m34494a(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    /* renamed from: a */
    public static int m34493a(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    /* renamed from: a */
    public static int m34491a(long j, long j2) {
        return j < j2 ? -1 : j == j2 ? 0 : 1;
    }

    /* renamed from: a */
    public static int m34488a(Context context) {
        ConnectivityManager connectivityManager;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return 0;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return 1;
        }
        int type = activeNetworkInfo.getType();
        if (type != 0) {
            if (type == 1) {
                return 2;
            }
            if (!(type == 4 || type == 5)) {
                if (type != 6) {
                    return type != 9 ? 8 : 7;
                }
                return 5;
            }
        }
        return m34486a(activeNetworkInfo);
    }

    /* renamed from: a */
    public static int m34486a(NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 1:
            case 2:
                return 3;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 17:
                return 4;
            case 13:
                return 5;
            case 16:
            default:
                return 6;
            case 18:
                return 2;
        }
    }

    /* renamed from: a */
    public static int m34485a(Uri uri) {
        String path = uri.getPath();
        return path == null ? 3 : m34439e(path);
    }

    /* renamed from: a */
    public static <T extends Comparable<? super T>> int m34470a(List<? extends Comparable<? super T>> list, T t, boolean z, boolean z2) {
        int binarySearch = Collections.binarySearch(list, t);
        int i = binarySearch;
        if (binarySearch < 0) {
            i = -(binarySearch + 2);
        } else {
            do {
                i--;
                if (i < 0) {
                    break;
                }
            } while (((Comparable) list.get(i)).compareTo(t) == 0);
            if (z) {
                i++;
            }
        }
        int i2 = i;
        if (z2) {
            i2 = Math.max(0, i);
        }
        return i2;
    }

    /* renamed from: a */
    public static int m34467a(byte[] bArr, int i, int i2, int i3) {
        while (i < i2) {
            i3 = f4695h[((i3 >>> 24) ^ (bArr[i] & 255)) & 255] ^ (i3 << 8);
            i++;
        }
        return i3;
    }

    /* renamed from: a */
    public static int m34466a(int[] iArr, int i, boolean z, boolean z2) {
        int i2;
        int binarySearch = Arrays.binarySearch(iArr, i);
        int i3 = binarySearch;
        if (binarySearch < 0) {
            i2 = -(binarySearch + 2);
        } else {
            do {
                i3--;
                if (i3 < 0) {
                    break;
                }
            } while (iArr[i3] == i);
            i2 = z ? i3 + 1 : i3;
        }
        int i4 = i2;
        if (z2) {
            i4 = Math.max(0, i2);
        }
        return i4;
    }

    /* renamed from: a */
    public static int m34464a(long[] jArr, long j, boolean z, boolean z2) {
        int binarySearch = Arrays.binarySearch(jArr, j);
        int i = binarySearch;
        if (binarySearch < 0) {
            i = binarySearch ^ (-1);
        } else {
            do {
                i++;
                if (i >= jArr.length) {
                    break;
                }
            } while (jArr[i] == j);
            if (z) {
                i--;
            }
        }
        int i2 = i;
        if (z2) {
            i2 = Math.min(jArr.length - 1, i);
        }
        return i2;
    }

    /* renamed from: a */
    public static long m34492a(long j, float f) {
        if (f == 1.0f) {
            return j;
        }
        double d = j;
        double d2 = f;
        Double.isNaN(d);
        Double.isNaN(d2);
        return Math.round(d * d2);
    }

    /* renamed from: a */
    public static long m34490a(long j, long j2, long j3) {
        long j4 = j + j2;
        return ((j ^ j4) & (j2 ^ j4)) < 0 ? j3 : j4;
    }

    /* renamed from: a */
    public static long m34489a(long j, C1244l0 l0Var, long j2, long j3) {
        if (C1244l0.f4939c.equals(l0Var)) {
            return j;
        }
        long d = m34442d(j, l0Var.f4944a, Long.MIN_VALUE);
        long a = m34490a(j, l0Var.f4945b, Long.MAX_VALUE);
        boolean z = true;
        boolean z2 = d <= j2 && j2 <= a;
        if (d > j3 || j3 > a) {
            z = false;
        }
        return (!z2 || !z) ? z2 ? j2 : z ? j3 : d : Math.abs(j2 - j) <= Math.abs(j3 - j) ? j2 : j3;
    }

    /* renamed from: a */
    public static Handler m34484a(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static <T> T m34479a(T t) {
        return t;
    }

    /* renamed from: a */
    public static String m34487a(Context context, String str) {
        String str2;
        try {
            str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            str2 = "?";
        }
        String str3 = Build.VERSION.RELEASE;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("/");
        sb.append(str2);
        sb.append(" (Linux;Android ");
        sb.append(str3);
        sb.append(") ");
        sb.append("ExoPlayerLib/2.10.1");
        return sb.toString();
    }

    /* renamed from: a */
    public static String m34476a(String str, int i) {
        String[] i2 = m34433i(str);
        String str2 = null;
        if (i2.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str3 : i2) {
            if (i == C1178m.m34402h(str3)) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str3);
            }
        }
        if (sb.length() > 0) {
            str2 = sb.toString();
        }
        return str2;
    }

    /* renamed from: a */
    public static String m34473a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* renamed from: a */
    public static String m34469a(Locale locale) {
        return f4688a >= 21 ? m34450b(locale) : locale.toString();
    }

    /* renamed from: a */
    public static String m34468a(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, Charset.forName(Request.DEFAULT_PARAMS_ENCODING));
    }

    /* renamed from: a */
    public static final /* synthetic */ Thread m34475a(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    /* renamed from: a */
    public static void m34482a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: a */
    public static void m34481a(AbstractC1684g gVar) {
        if (gVar != null) {
            try {
                gVar.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m34480a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static <T> void m34471a(List<T> list, int i, int i2) {
        if (i < 0 || i2 > list.size() || i > i2) {
            throw new IllegalArgumentException();
        } else if (i != i2) {
            list.subList(i, i2).clear();
        }
    }

    /* renamed from: a */
    public static void m34465a(long[] jArr, long j, long j2) {
        if (j2 >= j && j2 % j == 0) {
            long j3 = j2 / j;
            for (int i = 0; i < jArr.length; i++) {
                jArr[i] = jArr[i] / j3;
            }
        } else if (j2 >= j || j % j2 != 0) {
            double d = j;
            double d2 = j2;
            Double.isNaN(d);
            Double.isNaN(d2);
            double d3 = d / d2;
            for (int i2 = 0; i2 < jArr.length; i2++) {
                double d4 = jArr[i2];
                Double.isNaN(d4);
                jArr[i2] = (long) (d4 * d3);
            }
        } else {
            long j4 = j / j2;
            for (int i3 = 0; i3 < jArr.length; i3++) {
                jArr[i3] = jArr[i3] * j4;
            }
        }
    }

    /* renamed from: a */
    public static boolean m34483a(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* renamed from: a */
    public static boolean m34478a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: a */
    public static boolean m34461a(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (m34478a(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static byte[] m34477a(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) ((Character.digit(str.charAt(i2), 16) << 4) + Character.digit(str.charAt(i2 + 1), 16));
        }
        return bArr;
    }

    /* renamed from: a */
    public static int[] m34472a(List<Integer> list) {
        if (list == null) {
            return null;
        }
        int size = list.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = list.get(i).intValue();
        }
        return iArr;
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static <T> T[] m34463a(T[] tArr) {
        return tArr;
    }

    /* renamed from: a */
    public static <T> T[] m34462a(T[] tArr, int i) {
        C1160a.m34520a(i <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i);
    }

    /* renamed from: a */
    public static <T> T[] m34460a(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    /* renamed from: a */
    public static String[] m34497a() {
        String[] b = m34459b();
        for (int i = 0; i < b.length; i++) {
            b[i] = m34435g(b[i]);
        }
        return b;
    }

    /* renamed from: a */
    public static String[] m34474a(String str, String str2) {
        return str.split(str2, -1);
    }

    /* renamed from: b */
    public static int m34458b(int i) {
        switch (i) {
            case 0:
                return 16777216;
            case 1:
                return 3538944;
            case 2:
                return 13107200;
            case 3:
            case 4:
            case 5:
                return 131072;
            case 6:
                return 0;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: b */
    public static int m34457b(int i, int i2) {
        if (i == Integer.MIN_VALUE) {
            return i2 * 3;
        }
        if (i != 1073741824) {
            if (i == 2) {
                return i2 * 2;
            }
            if (i == 3) {
                return i2;
            }
            if (i != 4) {
                throw new IllegalArgumentException();
            }
        }
        return i2 * 4;
    }

    /* renamed from: b */
    public static int m34449b(long[] jArr, long j, boolean z, boolean z2) {
        int binarySearch = Arrays.binarySearch(jArr, j);
        int i = binarySearch;
        if (binarySearch < 0) {
            i = -(binarySearch + 2);
        } else {
            do {
                i--;
                if (i < 0) {
                    break;
                }
            } while (jArr[i] == j);
            if (z) {
                i++;
            }
        }
        int i2 = i;
        if (z2) {
            i2 = Math.max(0, i);
        }
        return i2;
    }

    /* renamed from: b */
    public static long m34456b(long j, float f) {
        if (f == 1.0f) {
            return j;
        }
        double d = j;
        double d2 = f;
        Double.isNaN(d);
        Double.isNaN(d2);
        return Math.round(d / d2);
    }

    /* renamed from: b */
    public static long m34455b(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j, j3));
    }

    /* renamed from: b */
    public static String m34450b(Locale locale) {
        return locale.toLanguageTag();
    }

    /* renamed from: b */
    public static String m34448b(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < objArr.length; i++) {
            sb.append(objArr[i].getClass().getSimpleName());
            if (i < objArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static Locale m34452b(String str) {
        return f4688a >= 21 ? m34444c(str) : new Locale(str);
    }

    /* renamed from: b */
    public static boolean m34454b(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    /* renamed from: b */
    public static boolean m34453b(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || "file".equals(scheme);
    }

    /* renamed from: b */
    public static String[] m34459b() {
        return f4688a >= 24 ? m34447c() : new String[]{m34469a(Resources.getSystem().getConfiguration().locale)};
    }

    /* renamed from: b */
    public static String[] m34451b(String str, String str2) {
        return str.split(str2, 2);
    }

    /* renamed from: c */
    public static int m34446c(int i) {
        if (i == 8) {
            return 3;
        }
        if (i == 16) {
            return 2;
        }
        if (i != 24) {
            return i != 32 ? 0 : 1073741824;
        }
        return Integer.MIN_VALUE;
    }

    /* renamed from: c */
    public static long m34445c(long j, long j2, long j3) {
        if (j3 >= j2 && j3 % j2 == 0) {
            return j / (j3 / j2);
        }
        if (j3 < j2 && j2 % j3 == 0) {
            return j * (j2 / j3);
        }
        double d = j2;
        double d2 = j3;
        Double.isNaN(d);
        Double.isNaN(d2);
        double d3 = d / d2;
        double d4 = j;
        Double.isNaN(d4);
        return (long) (d4 * d3);
    }

    /* renamed from: c */
    public static Locale m34444c(String str) {
        return Locale.forLanguageTag(str);
    }

    /* renamed from: c */
    public static String[] m34447c() {
        return m34474a(Resources.getSystem().getConfiguration().getLocales().toLanguageTags(), ",");
    }

    /* renamed from: d */
    public static int m34443d(int i) {
        if (i == 13) {
            return 1;
        }
        switch (i) {
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            default:
                return 3;
        }
    }

    /* renamed from: d */
    public static long m34442d(long j, long j2, long j3) {
        long j4 = j - j2;
        return ((j ^ j4) & (j2 ^ j)) < 0 ? j3 : j4;
    }

    /* renamed from: d */
    public static byte[] m34441d(String str) {
        return str.getBytes(Charset.forName(Request.DEFAULT_PARAMS_ENCODING));
    }

    /* renamed from: e */
    public static int m34439e(String str) {
        String j = m34432j(str);
        if (j.endsWith(".mpd")) {
            return 0;
        }
        if (j.endsWith(".m3u8")) {
            return 2;
        }
        return j.matches(".*\\.ism(l)?(/manifest(\\(.+\\))?)?") ? 1 : 3;
    }

    /* renamed from: e */
    public static boolean m34440e(int i) {
        return i == Integer.MIN_VALUE || i == 1073741824;
    }

    /* renamed from: f */
    public static ExecutorService m34437f(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory(str) { // from class: b.s.b.a.a1.c0

            /* renamed from: a */
            public final String f4686a;

            {
                this.f4686a = str;
            }

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return C1167d0.m34475a(this.f4686a, runnable);
            }
        });
    }

    /* renamed from: f */
    public static boolean m34438f(int i) {
        return i == 3 || i == 2 || i == Integer.MIN_VALUE || i == 1073741824 || i == 4;
    }

    /* renamed from: g */
    public static String m34435g(String str) {
        if (str == null) {
            return null;
        }
        try {
            Locale b = m34452b(str);
            int length = b.getLanguage().length();
            String iSO3Language = b.getISO3Language();
            if (iSO3Language.isEmpty()) {
                return m34432j(str);
            }
            String a = m34469a(b);
            String valueOf = String.valueOf(iSO3Language);
            String valueOf2 = String.valueOf(a.substring(length));
            return m34432j(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        } catch (MissingResourceException e) {
            return m34432j(str);
        }
    }

    /* renamed from: g */
    public static boolean m34436g(int i) {
        return i == 10 || i == 13;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m34434h(java.lang.String r9) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p080a1.C1167d0.m34434h(java.lang.String):long");
    }

    /* renamed from: i */
    public static String[] m34433i(String str) {
        return TextUtils.isEmpty(str) ? new String[0] : m34474a(str.trim(), "(\\s*,\\s*)");
    }

    /* renamed from: j */
    public static String m34432j(String str) {
        if (str != null) {
            str = str.toLowerCase(Locale.US);
        }
        return str;
    }

    /* renamed from: k */
    public static String m34431k(String str) {
        if (str != null) {
            str = str.toUpperCase(Locale.US);
        }
        return str;
    }
}
