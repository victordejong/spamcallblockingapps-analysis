package androidx.media2.exoplayer.external.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.security.NetworkSecurityPolicy;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.ExoPlayerLibraryInfo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.Renderer;
import androidx.media2.exoplayer.external.RendererCapabilities;
import androidx.media2.exoplayer.external.RenderersFactory;
import androidx.media2.exoplayer.external.SeekParameters;
import androidx.media2.exoplayer.external.audio.AudioRendererEventListener;
import androidx.media2.exoplayer.external.audio.AudioRendererEventListener$$CC;
import androidx.media2.exoplayer.external.decoder.DecoderCounters;
import androidx.media2.exoplayer.external.drm.DrmSessionManager;
import androidx.media2.exoplayer.external.drm.FrameworkMediaCrypto;
import androidx.media2.exoplayer.external.extractor.ogg.OpusReader;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.video.VideoRendererEventListener;
import androidx.media2.exoplayer.external.video.VideoRendererEventListener$$CC;
import androidx.media2.session.MediaSessionImplBase;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p459j.p460a.p596x.p599m.C14427a;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/Util.class */
public final class Util {
    public static final String DEVICE_DEBUG_INFO;
    public static final String TAG = "Util";
    public static final int SDK_INT = Build.VERSION.SDK_INT;
    public static final String DEVICE = Build.DEVICE;
    public static final String MANUFACTURER = Build.MANUFACTURER;
    public static final String MODEL = Build.MODEL;
    public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    public static final Pattern XS_DATE_TIME_PATTERN = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
    public static final Pattern XS_DURATION_PATTERN = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
    public static final Pattern ESCAPED_CHARACTER_PATTERN = Pattern.compile("%([A-Fa-f0-9]{2})");
    public static final int[] CRC32_BYTES_MSBF = {0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};

    static {
        String str = DEVICE;
        String str2 = MODEL;
        String str3 = MANUFACTURER;
        int i = SDK_INT;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 17 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(str2);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(str3);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(i);
        DEVICE_DEBUG_INFO = sb.toString();
    }

    public static long addWithOverflowDefault(long j, long j2, long j3) {
        long j4 = j + j2;
        return ((j ^ j4) & (j2 ^ j4)) < 0 ? j3 : j4;
    }

    public static boolean areEqual(@Nullable Object obj, @Nullable Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static <T extends Comparable<? super T>> int binarySearchCeil(List<? extends Comparable<? super T>> list, T t, boolean z, boolean z2) {
        int binarySearch = Collections.binarySearch(list, t);
        if (binarySearch < 0) {
            binarySearch ^= -1;
        } else {
            int size = list.size();
            do {
                binarySearch++;
                if (binarySearch >= size) {
                    break;
                }
            } while (((Comparable) list.get(binarySearch)).compareTo(t) == 0);
            if (z) {
                binarySearch--;
            }
        }
        int i = binarySearch;
        if (z2) {
            i = Math.min(list.size() - 1, binarySearch);
        }
        return i;
    }

    public static int binarySearchCeil(int[] iArr, int i, boolean z, boolean z2) {
        int i2;
        int binarySearch = Arrays.binarySearch(iArr, i);
        int i3 = binarySearch;
        if (binarySearch < 0) {
            i2 = binarySearch ^ (-1);
        } else {
            do {
                i3++;
                if (i3 >= iArr.length) {
                    break;
                }
            } while (iArr[i3] == i);
            i2 = z ? i3 - 1 : i3;
        }
        int i4 = i2;
        if (z2) {
            i4 = Math.min(iArr.length - 1, i2);
        }
        return i4;
    }

    public static int binarySearchCeil(long[] jArr, long j, boolean z, boolean z2) {
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

    public static <T extends Comparable<? super T>> int binarySearchFloor(List<? extends Comparable<? super T>> list, T t, boolean z, boolean z2) {
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

    public static int binarySearchFloor(int[] iArr, int i, boolean z, boolean z2) {
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

    public static int binarySearchFloor(long[] jArr, long j, boolean z, boolean z2) {
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

    public static <T> T castNonNull(@Nullable T t) {
        return t;
    }

    public static <T> T[] castNonNullTypeArray(T[] tArr) {
        return tArr;
    }

    public static int ceilDivide(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    public static long ceilDivide(long j, long j2) {
        return ((j + j2) - 1) / j2;
    }

    @TargetApi(24)
    public static boolean checkCleartextTrafficPermitted(Uri... uriArr) {
        if (SDK_INT < 24) {
            return true;
        }
        for (Uri uri : uriArr) {
            if ("http".equals(uri.getScheme()) && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted((String) Assertions.checkNotNull(uri.getHost()))) {
                return false;
            }
        }
        return true;
    }

    public static void closeQuietly(@Nullable DataSource dataSource) {
        if (dataSource != null) {
            try {
                dataSource.close();
            } catch (IOException e) {
            }
        }
    }

    public static void closeQuietly(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static int compareLong(long j, long j2) {
        int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
        return i < 0 ? -1 : i == 0 ? 0 : 1;
    }

    public static float constrainValue(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }

    public static int constrainValue(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    public static long constrainValue(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j, j3));
    }

    public static boolean contains(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (areEqual(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    public static int crc(byte[] bArr, int i, int i2, int i3) {
        while (i < i2) {
            i3 = CRC32_BYTES_MSBF[((i3 >>> 24) ^ (bArr[i] & 255)) & 255] ^ (i3 << 8);
            i++;
        }
        return i3;
    }

    public static Handler createHandler(Handler.Callback callback) {
        return createHandler(getLooper(), callback);
    }

    public static Handler createHandler(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    public static File createTempDirectory(Context context, String str) throws IOException {
        File createTempFile = createTempFile(context, str);
        createTempFile.delete();
        createTempFile.mkdir();
        return createTempFile;
    }

    public static File createTempFile(Context context, String str) throws IOException {
        return File.createTempFile(str, null, context.getCacheDir());
    }

    public static String escapeFileName(String str) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i2 = i2;
            if (shouldEscapeCharacter(str.charAt(i3))) {
                i2++;
            }
        }
        if (i2 == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder((i2 * 2) + length);
        int i4 = i2;
        while (i4 > 0) {
            char charAt = str.charAt(i);
            if (shouldEscapeCharacter(charAt)) {
                sb.append('%');
                sb.append(Integer.toHexString(charAt));
                i4--;
            } else {
                sb.append(charAt);
            }
            i++;
        }
        if (i < length) {
            sb.append((CharSequence) str, i, length);
        }
        return sb.toString();
    }

    public static String formatInvariant(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static String fromUtf8Bytes(byte[] bArr) {
        return new String(bArr, Charset.forName("UTF-8"));
    }

    public static String fromUtf8Bytes(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, Charset.forName("UTF-8"));
    }

    public static int getAudioContentTypeForStreamType(int i) {
        if (i != 0) {
            return (i == 1 || i == 2 || i == 4 || i == 5 || i == 8) ? 4 : 2;
        }
        return 1;
    }

    public static int getAudioTrackChannelConfig(int i) {
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
                return C14427a.f32275e;
            case 7:
                return 1276;
            case 8:
                int i2 = SDK_INT;
                return (i2 < 23 && i2 < 21) ? 0 : 6396;
            default:
                return 0;
        }
    }

    public static int getAudioUsageForStreamType(int i) {
        if (i == 0) {
            return 2;
        }
        if (i == 1) {
            return 13;
        }
        if (i == 2) {
            return 6;
        }
        int i2 = 4;
        if (i != 4) {
            i2 = 5;
            if (i != 5) {
                return i != 8 ? 1 : 3;
            }
        }
        return i2;
    }

    public static byte[] getBytesFromHexString(String str) {
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) ((Character.digit(str.charAt(i2), 16) << 4) + Character.digit(str.charAt(i2 + 1), 16));
        }
        return bArr;
    }

    @Nullable
    public static String getCodecsOfType(String str, int i) {
        String[] splitCodecs = splitCodecs(str);
        String str2 = null;
        if (splitCodecs.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str3 : splitCodecs) {
            if (i == MimeTypes.getTrackTypeOfCodec(str3)) {
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

    public static String getCommaDelimitedSimpleClassNames(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < objArr.length; i++) {
            sb.append(objArr[i].getClass().getSimpleName());
            if (i < objArr.length - 1) {
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
            }
        }
        return sb.toString();
    }

    public static String getCountryCode(@Nullable Context context) {
        TelephonyManager telephonyManager;
        if (!(context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null)) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return toUpperInvariant(networkCountryIso);
            }
        }
        return toUpperInvariant(Locale.getDefault().getCountry());
    }

    public static int getDefaultBufferSize(int i) {
        switch (i) {
            case 0:
                return 16777216;
            case 1:
                return C0463C.DEFAULT_AUDIO_BUFFER_SIZE;
            case 2:
                return C0463C.DEFAULT_VIDEO_BUFFER_SIZE;
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

    public static void getDisplaySizeV16(Display display, Point point) {
        display.getSize(point);
    }

    @TargetApi(17)
    public static void getDisplaySizeV17(Display display, Point point) {
        display.getRealSize(point);
    }

    @TargetApi(23)
    public static void getDisplaySizeV23(Display display, Point point) {
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    @Nullable
    public static UUID getDrmUuid(String str) {
        char c;
        String lowerInvariant = toLowerInvariant(str);
        int hashCode = lowerInvariant.hashCode();
        if (hashCode == -1860423953) {
            if (lowerInvariant.equals("playready")) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode != -1400551171) {
            if (hashCode == 790309106 && lowerInvariant.equals("clearkey")) {
                c = 2;
            }
            c = 65535;
        } else {
            if (lowerInvariant.equals("widevine")) {
                c = 0;
            }
            c = 65535;
        }
        if (c == 0) {
            return C0463C.WIDEVINE_UUID;
        }
        if (c == 1) {
            return C0463C.PLAYREADY_UUID;
        }
        if (c == 2) {
            return C0463C.CLEARKEY_UUID;
        }
        try {
            return UUID.fromString(str);
        } catch (RuntimeException e) {
            return null;
        }
    }

    public static int getIntegerCodeForString(String str) {
        int length = str.length();
        Assertions.checkArgument(length <= 4);
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i = (i << 8) | str.charAt(i2);
        }
        return i;
    }

    public static Locale getLocaleForLanguageTag(String str) {
        return SDK_INT >= 21 ? getLocaleForLanguageTagV21(str) : new Locale(str);
    }

    @TargetApi(21)
    public static Locale getLocaleForLanguageTagV21(String str) {
        return Locale.forLanguageTag(str);
    }

    public static String getLocaleLanguageTag(Locale locale) {
        return SDK_INT >= 21 ? getLocaleLanguageTagV21(locale) : locale.toString();
    }

    @TargetApi(21)
    public static String getLocaleLanguageTagV21(Locale locale) {
        return locale.toLanguageTag();
    }

    public static Looper getLooper() {
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            myLooper = Looper.getMainLooper();
        }
        return myLooper;
    }

    public static long getMediaDurationForPlayoutDuration(long j, float f) {
        return f == 1.0f ? j : Math.round(j * f);
    }

    public static int getMobileNetworkType(NetworkInfo networkInfo) {
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

    public static int getNetworkType(Context context) {
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
        return getMobileNetworkType(activeNetworkInfo);
    }

    public static int getPcmEncoding(int i) {
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

    public static int getPcmFrameSize(int i, int i2) {
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

    public static Point getPhysicalDisplaySize(Context context) {
        return getPhysicalDisplaySize(context, ((WindowManager) context.getSystemService("window")).getDefaultDisplay());
    }

    public static Point getPhysicalDisplaySize(Context context, Display display) {
        if (SDK_INT <= 28 && display.getDisplayId() == 0 && isTv(context)) {
            if ("Sony".equals(MANUFACTURER) && MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(OpusReader.DEFAULT_SEEK_PRE_ROLL_SAMPLES, 2160);
            }
            String systemProperty = SDK_INT < 28 ? getSystemProperty("sys.display-size") : getSystemProperty("vendor.display-size");
            if (!TextUtils.isEmpty(systemProperty)) {
                try {
                    String[] split = split(systemProperty.trim(), "x");
                    if (split.length == 2) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        if (parseInt > 0 && parseInt2 > 0) {
                            return new Point(parseInt, parseInt2);
                        }
                    }
                } catch (NumberFormatException e) {
                }
                String valueOf = String.valueOf(systemProperty);
                Log.m37487e(TAG, valueOf.length() != 0 ? "Invalid display size: ".concat(valueOf) : new String("Invalid display size: "));
            }
        }
        Point point = new Point();
        int i = SDK_INT;
        if (i >= 23) {
            getDisplaySizeV23(display, point);
        } else if (i >= 17) {
            getDisplaySizeV17(display, point);
        } else {
            getDisplaySizeV16(display, point);
        }
        return point;
    }

    public static long getPlayoutDurationForMediaDuration(long j, float f) {
        return f == 1.0f ? j : Math.round(j / f);
    }

    public static RendererCapabilities[] getRendererCapabilities(RenderersFactory renderersFactory, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager) {
        Renderer[] createRenderers = renderersFactory.createRenderers(new Handler(), new VideoRendererEventListener() { // from class: androidx.media2.exoplayer.external.util.Util.1
            @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
            public void onDroppedFrames(int i, long j) {
                VideoRendererEventListener$$CC.onDroppedFrames$$dflt$$(this, i, j);
            }

            @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
            public void onRenderedFirstFrame(Surface surface) {
                VideoRendererEventListener$$CC.onRenderedFirstFrame$$dflt$$(this, surface);
            }

            @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
            public void onVideoDecoderInitialized(String str, long j, long j2) {
                VideoRendererEventListener$$CC.onVideoDecoderInitialized$$dflt$$(this, str, j, j2);
            }

            @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
            public void onVideoDisabled(DecoderCounters decoderCounters) {
                VideoRendererEventListener$$CC.onVideoDisabled$$dflt$$(this, decoderCounters);
            }

            @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
            public void onVideoEnabled(DecoderCounters decoderCounters) {
                VideoRendererEventListener$$CC.onVideoEnabled$$dflt$$(this, decoderCounters);
            }

            @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
            public void onVideoInputFormatChanged(Format format) {
                VideoRendererEventListener$$CC.onVideoInputFormatChanged$$dflt$$(this, format);
            }

            @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
            public void onVideoSizeChanged(int i, int i2, int i3, float f) {
                VideoRendererEventListener$$CC.onVideoSizeChanged$$dflt$$(this, i, i2, i3, f);
            }
        }, new AudioRendererEventListener() { // from class: androidx.media2.exoplayer.external.util.Util.2
            @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
            public void onAudioDecoderInitialized(String str, long j, long j2) {
                AudioRendererEventListener$$CC.onAudioDecoderInitialized$$dflt$$(this, str, j, j2);
            }

            @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
            public void onAudioDisabled(DecoderCounters decoderCounters) {
                AudioRendererEventListener$$CC.onAudioDisabled$$dflt$$(this, decoderCounters);
            }

            @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
            public void onAudioEnabled(DecoderCounters decoderCounters) {
                AudioRendererEventListener$$CC.onAudioEnabled$$dflt$$(this, decoderCounters);
            }

            @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
            public void onAudioInputFormatChanged(Format format) {
                AudioRendererEventListener$$CC.onAudioInputFormatChanged$$dflt$$(this, format);
            }

            @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
            public void onAudioSessionId(int i) {
                AudioRendererEventListener$$CC.onAudioSessionId$$dflt$$(this, i);
            }

            @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
            public void onAudioSinkUnderrun(int i, long j, long j2) {
                AudioRendererEventListener$$CC.onAudioSinkUnderrun$$dflt$$(this, i, j, j2);
            }
        }, Util$$Lambda$1.$instance, Util$$Lambda$2.$instance, drmSessionManager);
        RendererCapabilities[] rendererCapabilitiesArr = new RendererCapabilities[createRenderers.length];
        for (int i = 0; i < createRenderers.length; i++) {
            rendererCapabilitiesArr[i] = createRenderers[i].getCapabilities();
        }
        return rendererCapabilitiesArr;
    }

    public static int getStreamTypeForAudioUsage(int i) {
        switch (i) {
            case 1:
            case 12:
            case 14:
                return 3;
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
            case 11:
            default:
                return 3;
            case 13:
                return 1;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v3 */
    public static String getStringForTime(StringBuilder sb, Formatter formatter, long j) {
        long j2 = j;
        if (j == C0463C.TIME_UNSET) {
            j2 = 0;
        }
        long j3 = (j2 + 500) / 1000;
        long j4 = j3 % 60;
        long j5 = (j3 / 60) % 60;
        long j6 = j3 / 3600;
        sb.setLength(0);
        return j6 > 0 ? formatter.format("%d:%02d:%02d", Long.valueOf(j6), Long.valueOf(j5), Long.valueOf(j4)).toString() : formatter.format("%02d:%02d", Long.valueOf(j5), Long.valueOf(j4)).toString();
    }

    public static String[] getSystemLanguageCodes() {
        String[] systemLocales = getSystemLocales();
        for (int i = 0; i < systemLocales.length; i++) {
            systemLocales[i] = normalizeLanguageCode(systemLocales[i]);
        }
        return systemLocales;
    }

    public static String[] getSystemLocales() {
        return SDK_INT >= 24 ? getSystemLocalesV24() : new String[]{getLocaleLanguageTag(Resources.getSystem().getConfiguration().locale)};
    }

    @TargetApi(24)
    public static String[] getSystemLocalesV24() {
        return split(Resources.getSystem().getConfiguration().getLocales().toLanguageTags(), ",");
    }

    @Nullable
    public static String getSystemProperty(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e) {
            String valueOf = String.valueOf(str);
            Log.m37486e(TAG, valueOf.length() != 0 ? "Failed to read system property ".concat(valueOf) : new String("Failed to read system property "), e);
            return null;
        }
    }

    public static String getUserAgent(Context context, String str) {
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
        sb.append(ExoPlayerLibraryInfo.VERSION_SLASHY);
        return sb.toString();
    }

    public static byte[] getUtf8Bytes(String str) {
        return str.getBytes(Charset.forName("UTF-8"));
    }

    public static int inferContentType(Uri uri) {
        String path = uri.getPath();
        return path == null ? 3 : inferContentType(path);
    }

    public static int inferContentType(Uri uri, String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            i = inferContentType(uri);
        } else {
            String valueOf = String.valueOf(str);
            i = inferContentType(valueOf.length() != 0 ? MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM.concat(valueOf) : new String(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM));
        }
        return i;
    }

    public static int inferContentType(String str) {
        String lowerInvariant = toLowerInvariant(str);
        if (lowerInvariant.endsWith(".mpd")) {
            return 0;
        }
        if (lowerInvariant.endsWith(".m3u8")) {
            return 2;
        }
        return lowerInvariant.matches(".*\\.ism(l)?(/manifest(\\(.+\\))?)?") ? 1 : 3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x009d, code lost:
        r10.reset();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a2, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean inflate(androidx.media2.exoplayer.external.util.ParsableByteArray r7, androidx.media2.exoplayer.external.util.ParsableByteArray r8, @androidx.annotation.Nullable java.util.zip.Inflater r9) {
        /*
            r0 = r7
            int r0 = r0.bytesLeft()
            if (r0 > 0) goto L_0x0009
            r0 = 0
            return r0
        L_0x0009:
            r0 = r8
            byte[] r0 = r0.data
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r10
            int r0 = r0.length
            r1 = r7
            int r1 = r1.bytesLeft()
            if (r0 >= r1) goto L_0x0024
            r0 = r7
            int r0 = r0.bytesLeft()
            r1 = 2
            int r0 = r0 * r1
            byte[] r0 = new byte[r0]
            r11 = r0
        L_0x0024:
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0032
            java.util.zip.Inflater r0 = new java.util.zip.Inflater
            r1 = r0
            r1.<init>()
            r10 = r0
        L_0x0032:
            r0 = r10
            r1 = r7
            byte[] r1 = r1.data
            r2 = r7
            int r2 = r2.getPosition()
            r3 = r7
            int r3 = r3.bytesLeft()
            r0.setInput(r1, r2, r3)
            r0 = 0
            r12 = r0
        L_0x0045:
            r0 = r12
            r1 = r10
            r2 = r11
            r3 = r12
            r4 = r11
            int r4 = r4.length     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            r5 = r12
            int r4 = r4 - r5
            int r1 = r1.inflate(r2, r3, r4)     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            int r0 = r0 + r1
            r13 = r0
            r0 = r10
            boolean r0 = r0.finished()     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            if (r0 == 0) goto L_0x006d
            r0 = r8
            r1 = r11
            r2 = r13
            r0.reset(r1, r2)     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            r0 = r10
            r0.reset()
            r0 = 1
            return r0
        L_0x006d:
            r0 = r10
            boolean r0 = r0.needsDictionary()     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            if (r0 != 0) goto L_0x009d
            r0 = r10
            boolean r0 = r0.needsInput()     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            if (r0 == 0) goto L_0x007e
            goto L_0x009d
        L_0x007e:
            r0 = r13
            r12 = r0
            r0 = r13
            r1 = r11
            int r1 = r1.length     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            if (r0 != r1) goto L_0x0045
            r0 = r11
            r1 = r11
            int r1 = r1.length     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            r2 = 2
            int r1 = r1 * r2
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)     // Catch: all -> 0x00a3, DataFormatException -> 0x00aa
            r11 = r0
            r0 = r13
            r12 = r0
            goto L_0x0045
        L_0x009d:
            r0 = r10
            r0.reset()
            r0 = 0
            return r0
        L_0x00a3:
            r7 = move-exception
            r0 = r10
            r0.reset()
            r0 = r7
            throw r0
        L_0x00aa:
            r7 = move-exception
            r0 = r10
            r0.reset()
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.Util.inflate(androidx.media2.exoplayer.external.util.ParsableByteArray, androidx.media2.exoplayer.external.util.ParsableByteArray, java.util.zip.Inflater):boolean");
    }

    public static boolean isEncodingHighResolutionIntegerPcm(int i) {
        return i == Integer.MIN_VALUE || i == 1073741824;
    }

    public static boolean isEncodingLinearPcm(int i) {
        return i == 3 || i == 2 || i == Integer.MIN_VALUE || i == 1073741824 || i == 4;
    }

    public static boolean isLinebreak(int i) {
        return i == 10 || i == 13;
    }

    public static boolean isLocalFileUri(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || "file".equals(scheme);
    }

    public static boolean isTv(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    public static final /* synthetic */ void lambda$getRendererCapabilities$1$Util(List list) {
    }

    public static final /* synthetic */ void lambda$getRendererCapabilities$2$Util(Metadata metadata) {
    }

    public static final /* synthetic */ Thread lambda$newSingleThreadExecutor$0$Util(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    @TargetApi(23)
    public static boolean maybeRequestReadExternalStoragePermission(Activity activity, Uri... uriArr) {
        if (SDK_INT < 23) {
            return false;
        }
        for (Uri uri : uriArr) {
            if (isLocalFileUri(uri)) {
                if (activity.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0) {
                    return false;
                } else {
                    activity.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 0);
                    return true;
                }
            }
        }
        return false;
    }

    public static ExecutorService newSingleThreadExecutor(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory(str) { // from class: androidx.media2.exoplayer.external.util.Util$$Lambda$0
            public final String arg$1;

            {
                this.arg$1 = str;
            }

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return Util.lambda$newSingleThreadExecutor$0$Util(this.arg$1, runnable);
            }
        });
    }

    public static String normalizeLanguageCode(String str) {
        if (str == null) {
            return null;
        }
        try {
            Locale localeForLanguageTag = getLocaleForLanguageTag(str);
            int length = localeForLanguageTag.getLanguage().length();
            String iSO3Language = localeForLanguageTag.getISO3Language();
            if (iSO3Language.isEmpty()) {
                return toLowerInvariant(str);
            }
            String localeLanguageTag = getLocaleLanguageTag(localeForLanguageTag);
            String valueOf = String.valueOf(iSO3Language);
            String valueOf2 = String.valueOf(localeLanguageTag.substring(length));
            return toLowerInvariant(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        } catch (MissingResourceException e) {
            return toLowerInvariant(str);
        }
    }

    public static <T> T[] nullSafeArrayConcatenation(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    public static <T> T[] nullSafeArrayCopy(T[] tArr, int i) {
        Assertions.checkArgument(i <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i);
    }

    public static <T> T[] nullSafeArrayCopyOfRange(T[] tArr, int i, int i2) {
        boolean z = true;
        Assertions.checkArgument(i >= 0);
        if (i2 > tArr.length) {
            z = false;
        }
        Assertions.checkArgument(z);
        return (T[]) Arrays.copyOfRange(tArr, i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long parseXsDateTime(java.lang.String r9) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.Util.parseXsDateTime(java.lang.String):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1, types: [long] */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long parseXsDuration(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.Util.parseXsDuration(java.lang.String):long");
    }

    public static boolean readBoolean(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    public static void recursiveDelete(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                recursiveDelete(file2);
            }
        }
        file.delete();
    }

    public static <T> void removeRange(List<T> list, int i, int i2) {
        if (i < 0 || i2 > list.size() || i > i2) {
            throw new IllegalArgumentException();
        } else if (i != i2) {
            list.subList(i, i2).clear();
        }
    }

    public static long resolveSeekPositionUs(long j, SeekParameters seekParameters, long j2, long j3) {
        if (SeekParameters.EXACT.equals(seekParameters)) {
            return j;
        }
        long subtractWithOverflowDefault = subtractWithOverflowDefault(j, seekParameters.toleranceBeforeUs, Long.MIN_VALUE);
        long addWithOverflowDefault = addWithOverflowDefault(j, seekParameters.toleranceAfterUs, Long.MAX_VALUE);
        boolean z = true;
        boolean z2 = subtractWithOverflowDefault <= j2 && j2 <= addWithOverflowDefault;
        if (subtractWithOverflowDefault > j3 || j3 > addWithOverflowDefault) {
            z = false;
        }
        return (!z2 || !z) ? z2 ? j2 : z ? j3 : subtractWithOverflowDefault : Math.abs(j2 - j) <= Math.abs(j3 - j) ? j2 : j3;
    }

    public static long scaleLargeTimestamp(long j, long j2, long j3) {
        int i = (j3 > j2 ? 1 : (j3 == j2 ? 0 : -1));
        if (i >= 0 && j3 % j2 == 0) {
            return j / (j3 / j2);
        }
        if (i < 0 && j2 % j3 == 0) {
            return j * (j2 / j3);
        }
        return (long) (j * (j2 / j3));
    }

    public static long[] scaleLargeTimestamps(List<Long> list, long j, long j2) {
        long[] jArr = new long[list.size()];
        int i = (j2 > j ? 1 : (j2 == j ? 0 : -1));
        if (i >= 0 && j2 % j == 0) {
            long j3 = j2 / j;
            for (int i2 = 0; i2 < jArr.length; i2++) {
                jArr[i2] = list.get(i2).longValue() / j3;
            }
        } else if (i >= 0 || j % j2 != 0) {
            double d = j / j2;
            for (int i3 = 0; i3 < jArr.length; i3++) {
                jArr[i3] = (long) (list.get(i3).longValue() * d);
            }
        } else {
            long j4 = j / j2;
            for (int i4 = 0; i4 < jArr.length; i4++) {
                jArr[i4] = list.get(i4).longValue() * j4;
            }
        }
        return jArr;
    }

    public static void scaleLargeTimestampsInPlace(long[] jArr, long j, long j2) {
        int i = (j2 > j ? 1 : (j2 == j ? 0 : -1));
        if (i >= 0 && j2 % j == 0) {
            long j3 = j2 / j;
            for (int i2 = 0; i2 < jArr.length; i2++) {
                jArr[i2] = jArr[i2] / j3;
            }
        } else if (i >= 0 || j % j2 != 0) {
            double d = j / j2;
            for (int i3 = 0; i3 < jArr.length; i3++) {
                jArr[i3] = (long) (jArr[i3] * d);
            }
        } else {
            long j4 = j / j2;
            for (int i4 = 0; i4 < jArr.length; i4++) {
                jArr[i4] = jArr[i4] * j4;
            }
        }
    }

    public static boolean shouldEscapeCharacter(char c) {
        return c == '\"' || c == '%' || c == '*' || c == '/' || c == ':' || c == '<' || c == '\\' || c == '|' || c == '>' || c == '?';
    }

    public static void sneakyThrow(Throwable th) {
        sneakyThrowInternal(th);
    }

    public static <T extends Throwable> void sneakyThrowInternal(Throwable th) throws Throwable {
        throw th;
    }

    public static String[] split(String str, String str2) {
        return str.split(str2, -1);
    }

    public static String[] splitAtFirst(String str, String str2) {
        return str.split(str2, 2);
    }

    public static String[] splitCodecs(String str) {
        return TextUtils.isEmpty(str) ? new String[0] : split(str.trim(), "(\\s*,\\s*)");
    }

    @Nullable
    public static ComponentName startForegroundService(Context context, Intent intent) {
        return SDK_INT >= 26 ? context.startForegroundService(intent) : context.startService(intent);
    }

    public static long subtractWithOverflowDefault(long j, long j2, long j3) {
        long j4 = j - j2;
        return ((j ^ j4) & (j2 ^ j)) < 0 ? j3 : j4;
    }

    public static int[] toArray(List<Integer> list) {
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

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public static String toLowerInvariant(String str) {
        if (str != null) {
            str = str.toLowerCase(Locale.US);
        }
        return str;
    }

    public static String toUpperInvariant(String str) {
        if (str != null) {
            str = str.toUpperCase(Locale.US);
        }
        return str;
    }

    @Nullable
    public static String unescapeFileName(String str) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i2 = i2;
            if (str.charAt(i3) == '%') {
                i2++;
            }
        }
        if (i2 == 0) {
            return str;
        }
        int i4 = length - (i2 * 2);
        StringBuilder sb = new StringBuilder(i4);
        Matcher matcher = ESCAPED_CHARACTER_PATTERN.matcher(str);
        while (i2 > 0 && matcher.find()) {
            sb.append((CharSequence) str, i, matcher.start());
            sb.append((char) Integer.parseInt(matcher.group(1), 16));
            i = matcher.end();
            i2--;
        }
        if (i < length) {
            sb.append((CharSequence) str, i, length);
        }
        if (sb.length() != i4) {
            return null;
        }
        return sb.toString();
    }

    public static void writeBoolean(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }
}
