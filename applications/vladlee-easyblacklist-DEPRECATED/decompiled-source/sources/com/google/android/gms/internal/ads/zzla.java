package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.gms.ads.AdRequest;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzla.class */
public final class zzla {

    /* renamed from: d */
    private static final SparseIntArray f15094d;

    /* renamed from: e */
    private static final SparseIntArray f15095e;

    /* renamed from: f */
    private static final Map<String, Integer> f15096f;

    /* renamed from: a */
    private static final zzkt f15091a = zzkt.zzbd("OMX.google.raw.decoder");

    /* renamed from: b */
    private static final Pattern f15092b = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: c */
    private static final HashMap<C2451a, List<zzkt>> f15093c = new HashMap<>();

    /* renamed from: g */
    private static int f15097g = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.zzla$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzla$a.class */
    public static final class C2451a {

        /* renamed from: a */
        public final String f15098a;

        /* renamed from: b */
        public final boolean f15099b;

        public C2451a(String str, boolean z) {
            this.f15098a = str;
            this.f15099b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != C2451a.class) {
                return false;
            }
            C2451a aVar = (C2451a) obj;
            return TextUtils.equals(this.f15098a, aVar.f15098a) && this.f15099b == aVar.f15099b;
        }

        public final int hashCode() {
            String str = this.f15098a;
            return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (this.f15099b ? 1231 : 1237);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f15094d = sparseIntArray;
        sparseIntArray.put(66, 1);
        f15094d.put(77, 2);
        f15094d.put(88, 4);
        f15094d.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f15095e = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        f15095e.put(11, 4);
        f15095e.put(12, 8);
        f15095e.put(13, 16);
        f15095e.put(20, 32);
        f15095e.put(21, 64);
        f15095e.put(22, 128);
        f15095e.put(30, 256);
        f15095e.put(31, AdRequest.MAX_CONTENT_URL_LENGTH);
        f15095e.put(32, 1024);
        f15095e.put(40, 2048);
        f15095e.put(41, CodedOutputStream.DEFAULT_BUFFER_SIZE);
        f15095e.put(42, 8192);
        f15095e.put(50, 16384);
        f15095e.put(51, 32768);
        f15095e.put(52, 65536);
        HashMap hashMap = new HashMap();
        f15096f = hashMap;
        hashMap.put("L30", 1);
        f15096f.put("L60", 4);
        f15096f.put("L63", 16);
        f15096f.put("L90", 64);
        f15096f.put("L93", 256);
        f15096f.put("L120", 1024);
        f15096f.put("L123", Integer.valueOf((int) CodedOutputStream.DEFAULT_BUFFER_SIZE));
        f15096f.put("L150", 16384);
        f15096f.put("L153", 65536);
        f15096f.put("L156", 262144);
        f15096f.put("L180", 1048576);
        f15096f.put("L183", 4194304);
        f15096f.put("L186", 16777216);
        f15096f.put("H30", 2);
        f15096f.put("H60", 8);
        f15096f.put("H63", 32);
        f15096f.put("H90", 128);
        f15096f.put("H93", Integer.valueOf((int) AdRequest.MAX_CONTENT_URL_LENGTH));
        f15096f.put("H120", 2048);
        f15096f.put("H123", 8192);
        f15096f.put("H150", 32768);
        f15096f.put("H153", 131072);
        f15096f.put("H156", 524288);
        f15096f.put("H180", 2097152);
        f15096f.put("H183", 8388608);
        f15096f.put("H186", 33554432);
    }

    /* renamed from: a */
    private static Pair<Integer, Integer> m3187a(String str, String[] strArr) {
        Integer num;
        Integer num2;
        String valueOf;
        StringBuilder sb;
        String str2;
        if (strArr.length < 2) {
            String valueOf2 = String.valueOf(str);
            Log.w("MediaCodecUtil", valueOf2.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf2) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                int parseInt = Integer.parseInt(strArr[1].substring(0, 2), 16);
                num2 = Integer.valueOf(Integer.parseInt(strArr[1].substring(4), 16));
                num = Integer.valueOf(parseInt);
            } else if (strArr.length >= 3) {
                num = Integer.valueOf(Integer.parseInt(strArr[1]));
                num2 = Integer.valueOf(Integer.parseInt(strArr[2]));
            } else {
                String valueOf3 = String.valueOf(str);
                Log.w("MediaCodecUtil", valueOf3.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf3) : new String("Ignoring malformed AVC codec string: "));
                return null;
            }
            Integer valueOf4 = Integer.valueOf(f15094d.get(num.intValue()));
            if (valueOf4 == null) {
                valueOf = String.valueOf(num);
                sb = new StringBuilder(String.valueOf(valueOf).length() + 21);
                str2 = "Unknown AVC profile: ";
            } else {
                Integer valueOf5 = Integer.valueOf(f15095e.get(num2.intValue()));
                if (valueOf5 != null) {
                    return new Pair<>(valueOf4, valueOf5);
                }
                valueOf = String.valueOf(num2);
                sb = new StringBuilder(String.valueOf(valueOf).length() + 19);
                str2 = "Unknown AVC level: ";
            }
            sb.append(str2);
            sb.append(valueOf);
            Log.w("MediaCodecUtil", sb.toString());
            return null;
        } catch (NumberFormatException e) {
            String valueOf6 = String.valueOf(str);
            Log.w("MediaCodecUtil", valueOf6.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf6) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:183:0x0405, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x025c A[Catch: Exception -> 0x0411, TRY_ENTER, TRY_LEAVE, TryCatch #3 {Exception -> 0x0411, blocks: (B:2:0x0000, B:6:0x0027, B:10:0x0049, B:13:0x0056, B:15:0x005e, B:17:0x0068, B:19:0x0073, B:21:0x007e, B:23:0x0089, B:25:0x0094, B:28:0x00a2, B:30:0x00aa, B:33:0x00b8, B:35:0x00c0, B:37:0x00cb, B:40:0x00da, B:42:0x00e2, B:44:0x00ed, B:46:0x00f9, B:48:0x0105, B:50:0x0111, B:52:0x011d, B:54:0x0129, B:56:0x0135, B:58:0x0141, B:60:0x014d, B:62:0x0159, B:64:0x0165, B:66:0x0171, B:69:0x0180, B:71:0x0188, B:73:0x0193, B:75:0x019f, B:77:0x01ab, B:79:0x01b7, B:82:0x01c6, B:85:0x01d2, B:87:0x01dd, B:89:0x01e9, B:91:0x01f5, B:93:0x0201, B:95:0x020d, B:97:0x0219, B:100:0x0228, B:102:0x0230, B:104:0x023c, B:111:0x025c, B:116:0x027d, B:155:0x0352, B:158:0x035e, B:160:0x0367, B:161:0x03a8, B:162:0x03fe, B:163:0x03ff), top: B:176:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02eb A[Catch: Exception -> 0x02de, TRY_ENTER, TryCatch #1 {Exception -> 0x02de, blocks: (B:121:0x02aa, B:123:0x02b6, B:126:0x02c5, B:128:0x02cd, B:136:0x02eb, B:141:0x02ff, B:144:0x0309, B:149:0x0328), top: B:172:0x02aa }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0405 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.google.android.gms.internal.ads.zzkt> m3189a(com.google.android.gms.internal.ads.zzla.C2451a r7, com.google.android.gms.internal.ads.aof r8) {
        /*
            Method dump skipped, instructions count: 1052
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzla.m3189a(com.google.android.gms.internal.ads.zzla$a, com.google.android.gms.internal.ads.aof):java.util.List");
    }

    /* renamed from: a */
    private static List<zzkt> m3188a(String str, boolean z) {
        synchronized (zzla.class) {
            try {
                C2451a aVar = new C2451a(str, z);
                List<zzkt> list = f15093c.get(aVar);
                if (list != null) {
                    return list;
                }
                List<zzkt> a = m3189a(aVar, zzoq.SDK_INT >= 21 ? new aog(z) : new aoe((byte) 0));
                List<zzkt> list2 = a;
                if (z) {
                    list2 = a;
                    if (a.isEmpty()) {
                        list2 = a;
                        if (21 <= zzoq.SDK_INT) {
                            list2 = a;
                            if (zzoq.SDK_INT <= 23) {
                                List<zzkt> a2 = m3189a(aVar, new aoe((byte) 0));
                                list2 = a2;
                                if (!a2.isEmpty()) {
                                    String str2 = a2.get(0).name;
                                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                                    sb.append(str);
                                    sb.append(". Assuming: ");
                                    sb.append(str2);
                                    Log.w("MediaCodecUtil", sb.toString());
                                    list2 = a2;
                                }
                            }
                        }
                    }
                }
                List<zzkt> unmodifiableList = Collections.unmodifiableList(list2);
                f15093c.put(aVar, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static zzkt zzb(String str, boolean z) {
        List<zzkt> a = m3188a(str, z);
        if (a.isEmpty()) {
            return null;
        }
        return a.get(0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0061, code lost:
        if (r0.equals("hev1") != false) goto L_0x0087;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> zzbg(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzla.zzbg(java.lang.String):android.util.Pair");
    }

    public static zzkt zzhb() {
        return f15091a;
    }

    public static int zzhc() {
        int i;
        if (f15097g == -1) {
            int i2 = 0;
            zzkt zzb = zzb("video/avc", false);
            if (zzb != null) {
                int i3 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : zzb.zzgu()) {
                    int i4 = codecProfileLevel.level;
                    if (i4 == 1 || i4 == 2) {
                        i = 25344;
                    } else {
                        switch (i4) {
                            case 8:
                            case 16:
                            case 32:
                                i = 101376;
                                continue;
                            case 64:
                                i = 202752;
                                continue;
                            case 128:
                            case 256:
                                i = 414720;
                                continue;
                            case AdRequest.MAX_CONTENT_URL_LENGTH /* 512 */:
                                i = 921600;
                                continue;
                            case 1024:
                                i = 1310720;
                                continue;
                            case 2048:
                            case CodedOutputStream.DEFAULT_BUFFER_SIZE /* 4096 */:
                                i = 2097152;
                                continue;
                            case 8192:
                                i = 2228224;
                                continue;
                            case 16384:
                                i = 5652480;
                                continue;
                            case 32768:
                            case 65536:
                                i = 9437184;
                                continue;
                            default:
                                i = -1;
                                continue;
                        }
                    }
                    i3 = Math.max(i, i3);
                }
                i2 = Math.max(i3, zzoq.SDK_INT >= 21 ? 345600 : 172800);
            }
            f15097g = i2;
        }
        return f15097g;
    }
}
