package p012b.p076s.p078b.p079a.p102w0.p105n0.p106q;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.source.UnrecognizedInputFormatException;
import androidx.media2.exoplayer.external.source.hls.HlsTrackMetadataEntry;
import androidx.recyclerview.widget.RecyclerView;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p012b.p076s.p078b.p079a.C1220c;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1163b0;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1178m;
import p012b.p076s.p078b.p079a.p086s0.p091v.C1414j;
import p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1620e;
import p012b.p076s.p078b.p079a.p111z0.C1701v;
/* renamed from: b.s.b.a.w0.n0.q.h */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/q/h.class */
public final class C1626h implements C1701v.AbstractC1702a<AbstractC1625g> {

    /* renamed from: a */
    public final C1620e f6746a;

    /* renamed from: b */
    public static final Pattern f6721b = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");

    /* renamed from: c */
    public static final Pattern f6722c = Pattern.compile("VIDEO=\"(.+?)\"");

    /* renamed from: d */
    public static final Pattern f6723d = Pattern.compile("AUDIO=\"(.+?)\"");

    /* renamed from: e */
    public static final Pattern f6724e = Pattern.compile("SUBTITLES=\"(.+?)\"");

    /* renamed from: f */
    public static final Pattern f6725f = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");

    /* renamed from: g */
    public static final Pattern f6726g = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");

    /* renamed from: h */
    public static final Pattern f6727h = Pattern.compile("CHANNELS=\"(.+?)\"");

    /* renamed from: i */
    public static final Pattern f6728i = Pattern.compile("CODECS=\"(.+?)\"");

    /* renamed from: j */
    public static final Pattern f6729j = Pattern.compile("RESOLUTION=(\\d+x\\d+)");

    /* renamed from: k */
    public static final Pattern f6730k = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");

    /* renamed from: l */
    public static final Pattern f6731l = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");

    /* renamed from: m */
    public static final Pattern f6732m = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");

    /* renamed from: n */
    public static final Pattern f6733n = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");

    /* renamed from: o */
    public static final Pattern f6734o = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");

    /* renamed from: p */
    public static final Pattern f6735p = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");

    /* renamed from: q */
    public static final Pattern f6736q = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");

    /* renamed from: r */
    public static final Pattern f6737r = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");

    /* renamed from: s */
    public static final Pattern f6738s = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");

    /* renamed from: t */
    public static final Pattern f6739t = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");

    /* renamed from: u */
    public static final Pattern f6740u = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");

    /* renamed from: v */
    public static final Pattern f6741v = Pattern.compile("KEYFORMAT=\"(.+?)\"");

    /* renamed from: w */
    public static final Pattern f6742w = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");

    /* renamed from: x */
    public static final Pattern f6743x = Pattern.compile("URI=\"(.+?)\"");

    /* renamed from: y */
    public static final Pattern f6744y = Pattern.compile("IV=([^,.*]+)");

    /* renamed from: z */
    public static final Pattern f6745z = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");

    /* renamed from: A */
    public static final Pattern f6710A = Pattern.compile("LANGUAGE=\"(.+?)\"");

    /* renamed from: B */
    public static final Pattern f6711B = Pattern.compile("NAME=\"(.+?)\"");

    /* renamed from: C */
    public static final Pattern f6712C = Pattern.compile("GROUP-ID=\"(.+?)\"");

    /* renamed from: D */
    public static final Pattern f6713D = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");

    /* renamed from: E */
    public static final Pattern f6714E = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");

    /* renamed from: F */
    public static final Pattern f6715F = m32543a("AUTOSELECT");

    /* renamed from: G */
    public static final Pattern f6716G = m32543a("DEFAULT");

    /* renamed from: H */
    public static final Pattern f6717H = m32543a("FORCED");

    /* renamed from: I */
    public static final Pattern f6718I = Pattern.compile("VALUE=\"(.+?)\"");

    /* renamed from: J */
    public static final Pattern f6719J = Pattern.compile("IMPORT=\"(.+?)\"");

    /* renamed from: K */
    public static final Pattern f6720K = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    /* renamed from: b.s.b.a.w0.n0.q.h$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/q/h$a.class */
    public static class C1627a {

        /* renamed from: a */
        public final BufferedReader f6747a;

        /* renamed from: b */
        public final Queue<String> f6748b;

        /* renamed from: c */
        public String f6749c;

        public C1627a(Queue<String> queue, BufferedReader bufferedReader) {
            this.f6748b = queue;
            this.f6747a = bufferedReader;
        }

        /* renamed from: a */
        public boolean m32527a() throws IOException {
            String trim;
            if (this.f6749c != null) {
                return true;
            }
            if (!this.f6748b.isEmpty()) {
                this.f6749c = this.f6748b.poll();
                return true;
            }
            do {
                String readLine = this.f6747a.readLine();
                this.f6749c = readLine;
                if (readLine == null) {
                    return false;
                }
                trim = readLine.trim();
                this.f6749c = trim;
            } while (trim.isEmpty());
            return true;
        }

        /* renamed from: b */
        public String m32526b() throws IOException {
            String str = null;
            if (m32527a()) {
                str = this.f6749c;
                this.f6749c = null;
            }
            return str;
        }
    }

    public C1626h() {
        this(C1620e.f6665l);
    }

    public C1626h(C1620e eVar) {
        this.f6746a = eVar;
    }

    /* renamed from: a */
    public static double m32540a(String str, Pattern pattern) throws ParserException {
        return Double.parseDouble(m32532b(str, pattern, Collections.emptyMap()));
    }

    /* renamed from: a */
    public static int m32544a(BufferedReader bufferedReader, boolean z, int i) throws IOException {
        while (i != -1 && Character.isWhitespace(i) && (z || !C1167d0.m34436g(i))) {
            i = bufferedReader.read();
        }
        return i;
    }

    /* renamed from: a */
    public static int m32541a(String str, Map<String, String> map) {
        String a = m32538a(str, f6727h, map);
        return a != null ? Integer.parseInt(C1167d0.m34451b(a, "/")[0]) : -1;
    }

    /* renamed from: a */
    public static DrmInitData.SchemeData m32542a(String str, String str2, Map<String, String> map) throws ParserException {
        String a = m32539a(str, f6742w, "1", map);
        if ("urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2)) {
            String b = m32532b(str, f6743x, map);
            return new DrmInitData.SchemeData(C1220c.f4893d, "video/mp4", Base64.decode(b.substring(b.indexOf(44)), 0));
        } else if ("com.widevine".equals(str2)) {
            return new DrmInitData.SchemeData(C1220c.f4893d, "hls", C1167d0.m34441d(str));
        } else {
            if (!"com.microsoft.playready".equals(str2) || !"1".equals(a)) {
                return null;
            }
            String b2 = m32532b(str, f6743x, map);
            return new DrmInitData.SchemeData(C1220c.f4894e, "video/mp4", C1414j.m33380a(C1220c.f4894e, Base64.decode(b2.substring(b2.indexOf(44)), 0)));
        }
    }

    /* renamed from: a */
    public static C1620e.C1622b m32536a(ArrayList<C1620e.C1622b> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            C1620e.C1622b bVar = arrayList.get(i);
            if (str.equals(bVar.f6680d)) {
                return bVar;
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static C1620e m32546a(C1627a aVar, String str) throws IOException {
        char c;
        float f;
        String str2;
        int i;
        int i2;
        String str3;
        int i3;
        int i4;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        boolean z = false;
        boolean z2 = false;
        while (true) {
            int i5 = -1;
            if (!aVar.m32527a()) {
                break;
            }
            String b = aVar.m32526b();
            if (b.startsWith("#EXT")) {
                arrayList8.add(b);
            }
            if (b.startsWith("#EXT-X-DEFINE")) {
                hashMap2.put(m32532b(b, f6711B, hashMap2), m32532b(b, f6718I, hashMap2));
            } else if (b.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                z = true;
            } else if (b.startsWith("#EXT-X-MEDIA")) {
                arrayList6.add(b);
            } else if (b.startsWith("#EXT-X-SESSION-KEY")) {
                DrmInitData.SchemeData a = m32542a(b, m32539a(b, f6741v, "identity", hashMap2), hashMap2);
                if (a != null) {
                    arrayList7.add(new DrmInitData(m32535b(m32532b(b, f6740u, hashMap2)), a));
                }
            } else if (b.startsWith("#EXT-X-STREAM-INF")) {
                boolean contains = b.contains("CLOSED-CAPTIONS=NONE");
                int b2 = m32533b(b, f6726g);
                String a2 = m32538a(b, f6721b, hashMap2);
                if (a2 != null) {
                    b2 = Integer.parseInt(a2);
                }
                String a3 = m32538a(b, f6728i, hashMap2);
                String a4 = m32538a(b, f6729j, hashMap2);
                if (a4 != null) {
                    String[] split = a4.split("x");
                    int parseInt = Integer.parseInt(split[0]);
                    i4 = Integer.parseInt(split[1]);
                    if (parseInt <= 0 || i4 <= 0) {
                        i4 = -1;
                    } else {
                        i5 = parseInt;
                    }
                } else {
                    i5 = -1;
                    i4 = -1;
                }
                String a5 = m32538a(b, f6730k, hashMap2);
                float parseFloat = a5 != null ? Float.parseFloat(a5) : -1.0f;
                String a6 = m32538a(b, f6722c, hashMap2);
                String a7 = m32538a(b, f6723d, hashMap2);
                String a8 = m32538a(b, f6724e, hashMap2);
                String a9 = m32538a(b, f6725f, hashMap2);
                Uri b3 = C1163b0.m34509b(str, m32529c(aVar.m32526b(), hashMap2));
                arrayList.add(new C1620e.C1622b(b3, Format.m38174a(Integer.toString(arrayList.size()), (String) null, "application/x-mpegURL", (String) null, a3, b2, i5, i4, parseFloat, (List<byte[]>) null, 0, 0), a6, a7, a8, a9));
                ArrayList arrayList9 = (ArrayList) hashMap.get(b3);
                ArrayList arrayList10 = arrayList9;
                if (arrayList9 == null) {
                    arrayList10 = new ArrayList();
                    hashMap.put(b3, arrayList10);
                }
                arrayList10.add(new HlsTrackMetadataEntry.VariantInfo(b2, a6, a7, a8, a9));
                z2 |= contains;
            }
        }
        ArrayList arrayList11 = new ArrayList();
        HashSet hashSet = new HashSet();
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            C1620e.C1622b bVar = (C1620e.C1622b) arrayList.get(i6);
            if (hashSet.add(bVar.f6677a)) {
                C1160a.m34518b(bVar.f6678b.f1560g == null);
                arrayList11.add(bVar.m32554a(bVar.f6678b.m38188a(new Metadata(new HlsTrackMetadataEntry(null, null, (List) hashMap.get(bVar.f6677a))))));
            }
        }
        List list = null;
        Format format = null;
        for (int i7 = 0; i7 < arrayList6.size(); i7++) {
            String str4 = (String) arrayList6.get(i7);
            String b4 = m32532b(str4, f6712C, hashMap2);
            String b5 = m32532b(str4, f6711B, hashMap2);
            String a10 = m32538a(str4, f6743x, hashMap2);
            Uri b6 = a10 == null ? null : C1163b0.m34509b(str, a10);
            String a11 = m32538a(str4, f6710A, hashMap2);
            int c2 = m32530c(str4);
            int b7 = m32534b(str4, hashMap2);
            StringBuilder sb = new StringBuilder(String.valueOf(b4).length() + 1 + String.valueOf(b5).length());
            sb.append(b4);
            sb.append(":");
            sb.append(b5);
            String sb2 = sb.toString();
            Metadata metadata = new Metadata(new HlsTrackMetadataEntry(b4, b5, Collections.emptyList()));
            String b8 = m32532b(str4, f6745z, hashMap2);
            switch (b8.hashCode()) {
                case -959297733:
                    if (b8.equals("SUBTITLES")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -333210994:
                    if (b8.equals("CLOSED-CAPTIONS")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 62628790:
                    if (b8.equals("AUDIO")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 81665115:
                    if (b8.equals("VIDEO")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            if (c == 0) {
                C1620e.C1622b b9 = m32531b(arrayList, b4);
                if (b9 != null) {
                    Format format2 = b9.f6678b;
                    str2 = C1167d0.m34476a(format2.f1559f, 2);
                    i = format2.f1567n;
                    i2 = format2.f1568o;
                    f = format2.f1569p;
                } else {
                    str2 = null;
                    i = -1;
                    i2 = -1;
                    f = -1.0f;
                }
                Format a12 = Format.m38174a(sb2, b5, "application/x-mpegURL", str2 != null ? C1178m.m34406d(str2) : null, str2, -1, i, i2, f, (List<byte[]>) null, c2, b7).m38188a(metadata);
                if (b6 != null) {
                    arrayList2.add(new C1620e.C1621a(b6, a12, b4, b5));
                }
            } else if (c == 1) {
                C1620e.C1622b a13 = m32536a(arrayList, b4);
                String a14 = a13 != null ? C1167d0.m34476a(a13.f6678b.f1559f, 1) : null;
                Format a15 = Format.m38171a(sb2, b5, "application/x-mpegURL", a14 != null ? C1178m.m34406d(a14) : null, a14, -1, m32541a(str4, hashMap2), -1, (List<byte[]>) null, c2, b7, a11);
                if (b6 == null) {
                    format = a15;
                } else {
                    arrayList3.add(new C1620e.C1621a(b6, a15.m38188a(metadata), b4, b5));
                }
            } else if (c == 2) {
                arrayList4.add(new C1620e.C1621a(b6, Format.m38168b(sb2, b5, "application/x-mpegURL", "text/vtt", null, -1, c2, b7, a11).m38188a(metadata), b4, b5));
            } else if (c == 3) {
                String b10 = m32532b(str4, f6714E, hashMap2);
                if (b10.startsWith("CC")) {
                    i3 = Integer.parseInt(b10.substring(2));
                    str3 = "application/cea-608";
                } else {
                    i3 = Integer.parseInt(b10.substring(7));
                    str3 = "application/cea-708";
                }
                List list2 = list;
                if (list == null) {
                    list2 = new ArrayList();
                }
                list2.add(Format.m38172a(sb2, b5, (String) null, str3, (String) null, -1, c2, b7, a11, i3));
                list = list2;
            }
        }
        if (z2) {
            list = Collections.emptyList();
        }
        return new C1620e(str, arrayList8, arrayList11, arrayList2, arrayList3, arrayList4, arrayList5, format, list, z, hashMap2, arrayList7);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v248, types: [long] */
    /* JADX WARN: Type inference failed for: r33v1 */
    /* JADX WARN: Type inference failed for: r33v4 */
    /* JADX WARN: Type inference failed for: r40v0 */
    /* JADX WARN: Type inference failed for: r40v1 */
    /* JADX WARN: Type inference failed for: r40v2, types: [long] */
    /* JADX WARN: Type inference failed for: r40v3 */
    /* JADX WARN: Type inference failed for: r40v4 */
    /* JADX WARN: Type inference failed for: r40v5 */
    /* JADX WARN: Type inference failed for: r43v0 */
    /* JADX WARN: Type inference failed for: r43v1 */
    /* JADX WARN: Type inference failed for: r43v2, types: [long] */
    /* JADX WARN: Type inference failed for: r43v3 */
    /* JADX WARN: Type inference failed for: r43v4 */
    /* JADX WARN: Type inference failed for: r43v5 */
    /* JADX WARN: Type inference failed for: r48v10 */
    /* JADX WARN: Type inference failed for: r48v29 */
    /* JADX WARN: Type inference failed for: r48v8, types: [long] */
    /* JADX WARN: Type inference failed for: r48v9 */
    /* JADX WARN: Type inference failed for: r50v0 */
    /* JADX WARN: Type inference failed for: r50v10 */
    /* JADX WARN: Type inference failed for: r50v11 */
    /* JADX WARN: Type inference failed for: r50v12 */
    /* JADX WARN: Type inference failed for: r50v13 */
    /* JADX WARN: Type inference failed for: r50v15 */
    /* JADX WARN: Type inference failed for: r50v18, types: [long] */
    /* JADX WARN: Type inference failed for: r50v19 */
    /* JADX WARN: Type inference failed for: r50v2 */
    /* JADX WARN: Type inference failed for: r50v20 */
    /* JADX WARN: Type inference failed for: r50v3 */
    /* JADX WARN: Type inference failed for: r50v4 */
    /* JADX WARN: Type inference failed for: r50v5 */
    /* JADX WARN: Type inference failed for: r50v6 */
    /* JADX WARN: Type inference failed for: r50v7 */
    /* JADX WARN: Type inference failed for: r50v8 */
    /* JADX WARN: Type inference failed for: r50v9 */
    /* JADX WARN: Type inference failed for: r58v12 */
    /* JADX WARN: Type inference failed for: r58v13 */
    /* JADX WARN: Type inference failed for: r58v14 */
    /* JADX WARN: Type inference failed for: r58v15 */
    /* JADX WARN: Type inference failed for: r58v16 */
    /* JADX WARN: Type inference failed for: r58v17 */
    /* JADX WARN: Type inference failed for: r58v18 */
    /* JADX WARN: Type inference failed for: r58v19 */
    /* JADX WARN: Type inference failed for: r58v20 */
    /* JADX WARN: Type inference failed for: r58v21 */
    /* JADX WARN: Type inference failed for: r58v22 */
    /* JADX WARN: Type inference failed for: r58v6 */
    /* JADX WARN: Type inference failed for: r58v7 */
    /* JADX WARN: Type inference failed for: r58v8 */
    /* JADX WARN: Type inference failed for: r61v0 */
    /* JADX WARN: Type inference failed for: r61v1, types: [long] */
    /* JADX WARN: Type inference failed for: r61v2 */
    /* JADX WARN: Type inference failed for: r61v3 */
    /* JADX WARN: Type inference failed for: r63v0 */
    /* JADX WARN: Type inference failed for: r63v1, types: [long] */
    /* JADX WARN: Type inference failed for: r63v2 */
    /* JADX WARN: Type inference failed for: r63v3 */
    /* JADX WARN: Type inference failed for: r68v13 */
    /* JADX WARN: Type inference failed for: r70v0 */
    /* JADX WARN: Type inference failed for: r70v1 */
    /* JADX WARN: Type inference failed for: r70v10 */
    /* JADX WARN: Type inference failed for: r70v11 */
    /* JADX WARN: Type inference failed for: r70v12 */
    /* JADX WARN: Type inference failed for: r70v13 */
    /* JADX WARN: Type inference failed for: r70v2 */
    /* JADX WARN: Type inference failed for: r70v4 */
    /* JADX WARN: Type inference failed for: r70v5 */
    /* JADX WARN: Type inference failed for: r70v6 */
    /* JADX WARN: Type inference failed for: r70v7 */
    /* JADX WARN: Type inference failed for: r70v8 */
    /* JADX WARN: Type inference failed for: r70v9 */
    /* JADX WARN: Type inference failed for: r73v0 */
    /* JADX WARN: Type inference failed for: r73v1, types: [long] */
    /* JADX WARN: Type inference failed for: r73v10 */
    /* JADX WARN: Type inference failed for: r73v11 */
    /* JADX WARN: Type inference failed for: r73v12 */
    /* JADX WARN: Type inference failed for: r73v13 */
    /* JADX WARN: Type inference failed for: r73v2 */
    /* JADX WARN: Type inference failed for: r73v3 */
    /* JADX WARN: Type inference failed for: r73v4 */
    /* JADX WARN: Type inference failed for: r73v5 */
    /* JADX WARN: Type inference failed for: r73v6 */
    /* JADX WARN: Type inference failed for: r73v7 */
    /* JADX WARN: Type inference failed for: r73v8 */
    /* JADX WARN: Type inference failed for: r73v9 */
    /* JADX WARN: Type inference failed for: r77v0 */
    /* JADX WARN: Type inference failed for: r77v1 */
    /* JADX WARN: Type inference failed for: r77v10 */
    /* JADX WARN: Type inference failed for: r77v11 */
    /* JADX WARN: Type inference failed for: r77v12 */
    /* JADX WARN: Type inference failed for: r77v2 */
    /* JADX WARN: Type inference failed for: r77v3 */
    /* JADX WARN: Type inference failed for: r77v4 */
    /* JADX WARN: Type inference failed for: r77v5 */
    /* JADX WARN: Type inference failed for: r77v6 */
    /* JADX WARN: Type inference failed for: r77v7 */
    /* JADX WARN: Type inference failed for: r77v8 */
    /* JADX WARN: Type inference failed for: r77v9 */
    /* JADX WARN: Unknown variable types count: 8 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1623f m32547a(p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1620e r22, p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1626h.C1627a r23, java.lang.String r24) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2037
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1626h.m32547a(b.s.b.a.w0.n0.q.e, b.s.b.a.w0.n0.q.h$a, java.lang.String):b.s.b.a.w0.n0.q.f");
    }

    /* renamed from: a */
    public static String m32539a(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = matcher.group(1);
        }
        String str3 = str2;
        if (!map.isEmpty()) {
            str3 = str2 == null ? str2 : m32529c(str2, map);
        }
        return str3;
    }

    /* renamed from: a */
    public static String m32538a(String str, Pattern pattern, Map<String, String> map) {
        return m32539a(str, pattern, null, map);
    }

    /* renamed from: a */
    public static Pattern m32543a(String str) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 9);
        sb.append(str);
        sb.append("=(");
        sb.append("NO");
        sb.append("|");
        sb.append("YES");
        sb.append(")");
        return Pattern.compile(sb.toString());
    }

    /* renamed from: a */
    public static boolean m32545a(BufferedReader bufferedReader) throws IOException {
        int read = bufferedReader.read();
        int i = read;
        if (read == 239) {
            if (!(bufferedReader.read() == 187 && bufferedReader.read() == 191)) {
                return false;
            }
            i = bufferedReader.read();
        }
        int a = m32544a(bufferedReader, true, i);
        for (int i2 = 0; i2 < 7; i2++) {
            if (a != "#EXTM3U".charAt(i2)) {
                return false;
            }
            a = bufferedReader.read();
        }
        return C1167d0.m34436g(m32544a(bufferedReader, false, a));
    }

    /* renamed from: a */
    public static boolean m32537a(String str, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? matcher.group(1).equals("YES") : z;
    }

    /* renamed from: b */
    public static int m32534b(String str, Map<String, String> map) {
        String a = m32538a(str, f6713D, map);
        int i = 0;
        if (TextUtils.isEmpty(a)) {
            return 0;
        }
        String[] a2 = C1167d0.m34474a(a, ",");
        if (C1167d0.m34461a((Object[]) a2, (Object) "public.accessibility.describes-video")) {
            i = RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN;
        }
        int i2 = i;
        if (C1167d0.m34461a((Object[]) a2, (Object) "public.accessibility.transcribes-spoken-dialog")) {
            i2 = i | 4096;
        }
        int i3 = i2;
        if (C1167d0.m34461a((Object[]) a2, (Object) "public.accessibility.describes-music-and-sound")) {
            i3 = i2 | 1024;
        }
        int i4 = i3;
        if (C1167d0.m34461a((Object[]) a2, (Object) "public.easy-to-read")) {
            i4 = i3 | 8192;
        }
        return i4;
    }

    /* renamed from: b */
    public static int m32533b(String str, Pattern pattern) throws ParserException {
        return Integer.parseInt(m32532b(str, pattern, Collections.emptyMap()));
    }

    /* renamed from: b */
    public static C1620e.C1622b m32531b(ArrayList<C1620e.C1622b> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            C1620e.C1622b bVar = arrayList.get(i);
            if (str.equals(bVar.f6679c)) {
                return bVar;
            }
        }
        return null;
    }

    /* renamed from: b */
    public static String m32535b(String str) {
        return ("SAMPLE-AES-CENC".equals(str) || "SAMPLE-AES-CTR".equals(str)) ? "cenc" : "cbcs";
    }

    /* renamed from: b */
    public static String m32532b(String str, Pattern pattern, Map<String, String> map) throws ParserException {
        String a = m32538a(str, pattern, map);
        if (a != null) {
            return a;
        }
        String pattern2 = pattern.pattern();
        StringBuilder sb = new StringBuilder(String.valueOf(pattern2).length() + 19 + String.valueOf(str).length());
        sb.append("Couldn't match ");
        sb.append(pattern2);
        sb.append(" in ");
        sb.append(str);
        throw new ParserException(sb.toString());
    }

    /* renamed from: c */
    public static int m32530c(String str) {
        int i = m32537a(str, f6716G, false) ? 1 : 0;
        int i2 = i;
        if (m32537a(str, f6717H, false)) {
            i2 = i | 2;
        }
        int i3 = i2;
        if (m32537a(str, f6715F, false)) {
            i3 = i2 | 4;
        }
        return i3;
    }

    /* renamed from: c */
    public static long m32528c(String str, Pattern pattern) throws ParserException {
        return Long.parseLong(m32532b(str, pattern, Collections.emptyMap()));
    }

    /* renamed from: c */
    public static String m32529c(String str, Map<String, String> map) {
        Matcher matcher = f6720K.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String group = matcher.group(1);
            if (map.containsKey(group)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(map.get(group)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Finally extract failed */
    @Override // p012b.p076s.p078b.p079a.p111z0.C1701v.AbstractC1702a
    /* renamed from: a */
    public AbstractC1625g mo32328a(Uri uri, InputStream inputStream) throws IOException {
        String trim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (m32545a(bufferedReader)) {
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        trim = readLine.trim();
                        if (!trim.isEmpty()) {
                            if (!trim.startsWith("#EXT-X-STREAM-INF")) {
                                if (trim.startsWith("#EXT-X-TARGETDURATION") || trim.startsWith("#EXT-X-MEDIA-SEQUENCE") || trim.startsWith("#EXTINF") || trim.startsWith("#EXT-X-KEY") || trim.startsWith("#EXT-X-BYTERANGE") || trim.equals("#EXT-X-DISCONTINUITY") || trim.equals("#EXT-X-DISCONTINUITY-SEQUENCE") || trim.equals("#EXT-X-ENDLIST")) {
                                    break;
                                }
                                arrayDeque.add(trim);
                            } else {
                                arrayDeque.add(trim);
                                C1620e a = m32546a(new C1627a(arrayDeque, bufferedReader), uri.toString());
                                C1167d0.m34480a((Closeable) bufferedReader);
                                return a;
                            }
                        }
                    } else {
                        C1167d0.m34480a((Closeable) bufferedReader);
                        throw new ParserException("Failed to parse the playlist, could not identify any tags.");
                    }
                }
                arrayDeque.add(trim);
                C1623f a2 = m32547a(this.f6746a, new C1627a(arrayDeque, bufferedReader), uri.toString());
                C1167d0.m34480a((Closeable) bufferedReader);
                return a2;
            }
            throw new UnrecognizedInputFormatException("Input does not start with the #EXTM3U header.", uri);
        } catch (Throwable th) {
            C1167d0.m34480a((Closeable) bufferedReader);
            throw th;
        }
    }
}
