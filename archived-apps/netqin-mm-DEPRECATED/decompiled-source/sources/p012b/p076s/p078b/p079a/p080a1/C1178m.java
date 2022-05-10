package p012b.p076s.p078b.p079a.p080a1;

import android.text.TextUtils;
import java.util.ArrayList;
/* renamed from: b.s.b.a.a1.m */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/m.class */
public final class C1178m {

    /* renamed from: a */
    public static final ArrayList<C1179a> f4710a = new ArrayList<>();

    /* renamed from: b.s.b.a.a1.m$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/a1/m$a.class */
    public static final class C1179a {

        /* renamed from: a */
        public final String f4711a;

        /* renamed from: b */
        public final String f4712b;

        /* renamed from: c */
        public final int f4713c;
    }

    /* renamed from: a */
    public static String m34410a(int i) {
        if (i == 32) {
            return "video/mp4v-es";
        }
        if (i == 33) {
            return "video/avc";
        }
        if (i == 35) {
            return "video/hevc";
        }
        if (i == 64) {
            return "audio/mp4a-latm";
        }
        if (i == 163) {
            return "video/wvc1";
        }
        if (i == 177) {
            return "video/x-vnd.on2.vp9";
        }
        if (i == 165) {
            return "audio/ac3";
        }
        if (i == 166) {
            return "audio/eac3";
        }
        switch (i) {
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
                return "video/mpeg2";
            case 102:
            case 103:
            case 104:
                return "audio/mp4a-latm";
            case 105:
            case 107:
                return "audio/mpeg";
            case 106:
                return "video/mpeg";
            default:
                switch (i) {
                    case 169:
                    case 172:
                        return "audio/vnd.dts";
                    case 170:
                    case 171:
                        return "audio/vnd.dts.hd";
                    case 173:
                        return "audio/opus";
                    case 174:
                        return "audio/ac4";
                    default:
                        return null;
                }
        }
    }

    /* renamed from: a */
    public static String m34409a(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : C1167d0.m34433i(str)) {
            String d = m34406d(str2);
            if (d != null && m34400j(d)) {
                return d;
            }
        }
        return null;
    }

    /* renamed from: b */
    public static String m34408b(String str) {
        int size = f4710a.size();
        for (int i = 0; i < size; i++) {
            C1179a aVar = f4710a.get(i);
            if (str.startsWith(aVar.f4712b)) {
                return aVar.f4711a;
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    public static int m34407c(String str) {
        char c;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1556697186:
                if (str.equals("audio/true-hd")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return 5;
            case 1:
            case 2:
                return 6;
            case 3:
                return 17;
            case 4:
                return 7;
            case 5:
                return 8;
            case 6:
                return 14;
            default:
                return 0;
        }
    }

    /* renamed from: d */
    public static String m34406d(String str) {
        if (str == null) {
            return null;
        }
        String j = C1167d0.m34432j(str.trim());
        if (j.startsWith("avc1") || j.startsWith("avc3")) {
            return "video/avc";
        }
        if (j.startsWith("hev1") || j.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (j.startsWith("dvav") || j.startsWith("dva1") || j.startsWith("dvhe") || j.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (j.startsWith("av01")) {
            return "video/av01";
        }
        if (j.startsWith("vp9") || j.startsWith("vp09")) {
            return "video/x-vnd.on2.vp9";
        }
        if (j.startsWith("vp8") || j.startsWith("vp08")) {
            return "video/x-vnd.on2.vp8";
        }
        if (!j.startsWith("mp4a")) {
            return (j.startsWith("ac-3") || j.startsWith("dac3")) ? "audio/ac3" : (j.startsWith("ec-3") || j.startsWith("dec3")) ? "audio/eac3" : j.startsWith("ec+3") ? "audio/eac3-joc" : (j.startsWith("ac-4") || j.startsWith("dac4")) ? "audio/ac4" : (j.startsWith("dtsc") || j.startsWith("dtse")) ? "audio/vnd.dts" : (j.startsWith("dtsh") || j.startsWith("dtsl")) ? "audio/vnd.dts.hd" : j.startsWith("opus") ? "audio/opus" : j.startsWith("vorbis") ? "audio/vorbis" : j.startsWith("flac") ? "audio/flac" : m34408b(j);
        }
        String str2 = null;
        if (j.startsWith("mp4a.")) {
            String substring = j.substring(5);
            str2 = null;
            if (substring.length() >= 2) {
                try {
                    str2 = m34410a(Integer.parseInt(C1167d0.m34431k(substring.substring(0, 2)), 16));
                } catch (NumberFormatException e) {
                    str2 = null;
                }
            }
        }
        String str3 = str2;
        if (str2 == null) {
            str3 = "audio/mp4a-latm";
        }
        return str3;
    }

    /* renamed from: e */
    public static String m34405e(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    /* renamed from: f */
    public static int m34404f(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (m34400j(str)) {
            return 1;
        }
        if (m34398l(str)) {
            return 2;
        }
        if (m34399k(str) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
            return 3;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return 4;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 5;
        }
        return m34403g(str);
    }

    /* renamed from: g */
    public static int m34403g(String str) {
        int size = f4710a.size();
        for (int i = 0; i < size; i++) {
            C1179a aVar = f4710a.get(i);
            if (str.equals(aVar.f4711a)) {
                return aVar.f4713c;
            }
        }
        return -1;
    }

    /* renamed from: h */
    public static int m34402h(String str) {
        return m34404f(m34406d(str));
    }

    /* renamed from: i */
    public static String m34401i(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : C1167d0.m34433i(str)) {
            String d = m34406d(str2);
            if (d != null && m34398l(d)) {
                return d;
            }
        }
        return null;
    }

    /* renamed from: j */
    public static boolean m34400j(String str) {
        return "audio".equals(m34405e(str));
    }

    /* renamed from: k */
    public static boolean m34399k(String str) {
        return "text".equals(m34405e(str));
    }

    /* renamed from: l */
    public static boolean m34398l(String str) {
        return "video".equals(m34405e(str));
    }
}
