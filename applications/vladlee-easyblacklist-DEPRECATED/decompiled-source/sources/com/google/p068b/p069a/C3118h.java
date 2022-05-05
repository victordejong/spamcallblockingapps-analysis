package com.google.p068b.p069a;

import com.google.p068b.p069a.C3123j;
import com.google.p068b.p069a.C3128k;
import com.google.p068b.p069a.p070a.AbstractC3106a;
import com.google.p068b.p069a.p070a.C3107b;
import com.google.p068b.p069a.p070a.C3108c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.b.a.h */
/* loaded from: classes-dex2jar.jar:com/google/b/a/h.class */
public class C3118h {

    /* renamed from: a */
    static final Pattern f18774a;

    /* renamed from: b */
    static final Pattern f18775b;

    /* renamed from: c */
    static final Pattern f18776c;

    /* renamed from: d */
    static final String f18777d;

    /* renamed from: e */
    static final Pattern f18778e;

    /* renamed from: f */
    private static final Logger f18779f = Logger.getLogger(C3118h.class.getName());

    /* renamed from: g */
    private static final Map<Integer, String> f18780g;

    /* renamed from: h */
    private static final Set<Integer> f18781h;

    /* renamed from: i */
    private static final Set<Integer> f18782i;

    /* renamed from: j */
    private static final Map<Character, Character> f18783j;

    /* renamed from: k */
    private static final Map<Character, Character> f18784k;

    /* renamed from: l */
    private static final Map<Character, Character> f18785l;

    /* renamed from: m */
    private static final Map<Character, Character> f18786m;

    /* renamed from: n */
    private static final Pattern f18787n;

    /* renamed from: o */
    private static final String f18788o;

    /* renamed from: p */
    private static final Pattern f18789p;

    /* renamed from: q */
    private static final Pattern f18790q;

    /* renamed from: r */
    private static final Pattern f18791r;

    /* renamed from: s */
    private static final Pattern f18792s;

    /* renamed from: t */
    private static final String f18793t;

    /* renamed from: u */
    private static final String f18794u;

    /* renamed from: v */
    private static final Pattern f18795v;

    /* renamed from: w */
    private static final Pattern f18796w;

    /* renamed from: x */
    private static final Pattern f18797x;

    /* renamed from: y */
    private static final Pattern f18798y;

    /* renamed from: z */
    private static C3118h f18799z;

    /* renamed from: A */
    private final AbstractC3114e f18800A;

    /* renamed from: B */
    private final Map<Integer, List<String>> f18801B;

    /* renamed from: C */
    private final AbstractC3106a f18802C = C3107b.m749a();

    /* renamed from: D */
    private final Set<String> f18803D = new HashSet(35);

    /* renamed from: E */
    private final C3108c f18804E = new C3108c();

    /* renamed from: F */
    private final Set<String> f18805F = new HashSet(320);

    /* renamed from: G */
    private final Set<Integer> f18806G = new HashSet();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.google.b.a.h$a */
    /* loaded from: classes-dex2jar.jar:com/google/b/a/h$a.class */
    public static final class EnumC3119a extends Enum<EnumC3119a> {

        /* renamed from: a */
        public static final int f18807a = 1;

        /* renamed from: b */
        public static final int f18808b = 2;

        /* renamed from: c */
        public static final int f18809c = 3;

        /* renamed from: d */
        public static final int f18810d = 4;

        /* renamed from: e */
        private static final /* synthetic */ int[] f18811e = {f18807a, f18808b, f18809c, f18810d};

        /* renamed from: a */
        public static int[] m709a() {
            return (int[]) f18811e.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.google.b.a.h$b */
    /* loaded from: classes-dex2jar.jar:com/google/b/a/h$b.class */
    public static final class EnumC3120b extends Enum<EnumC3120b> {

        /* renamed from: a */
        public static final int f18812a = 1;

        /* renamed from: b */
        public static final int f18813b = 2;

        /* renamed from: c */
        public static final int f18814c = 3;

        /* renamed from: d */
        public static final int f18815d = 4;

        /* renamed from: e */
        public static final int f18816e = 5;

        /* renamed from: f */
        public static final int f18817f = 6;

        /* renamed from: g */
        public static final int f18818g = 7;

        /* renamed from: h */
        public static final int f18819h = 8;

        /* renamed from: i */
        public static final int f18820i = 9;

        /* renamed from: j */
        public static final int f18821j = 10;

        /* renamed from: k */
        public static final int f18822k = 11;

        /* renamed from: l */
        public static final int f18823l = 12;

        /* renamed from: m */
        private static final /* synthetic */ int[] f18824m = {f18812a, f18813b, f18814c, f18815d, f18816e, f18817f, f18818g, f18819h, f18820i, f18821j, f18822k, f18823l};

        /* renamed from: a */
        public static int[] m708a() {
            return (int[]) f18824m.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.google.b.a.h$c */
    /* loaded from: classes-dex2jar.jar:com/google/b/a/h$c.class */
    public static final class EnumC3121c extends Enum<EnumC3121c> {

        /* renamed from: a */
        public static final int f18825a = 1;

        /* renamed from: b */
        public static final int f18826b = 2;

        /* renamed from: c */
        public static final int f18827c = 3;

        /* renamed from: d */
        public static final int f18828d = 4;

        /* renamed from: e */
        public static final int f18829e = 5;

        /* renamed from: f */
        public static final int f18830f = 6;

        /* renamed from: g */
        private static final /* synthetic */ int[] f18831g = {f18825a, f18826b, f18827c, f18828d, f18829e, f18830f};
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(52, "1");
        hashMap.put(54, "9");
        f18780g = Collections.unmodifiableMap(hashMap);
        HashSet hashSet = new HashSet();
        hashSet.add(86);
        f18781h = Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.add(52);
        hashSet2.add(54);
        hashSet2.add(55);
        hashSet2.add(62);
        hashSet2.addAll(hashSet);
        f18782i = Collections.unmodifiableSet(hashSet2);
        HashMap hashMap2 = new HashMap();
        hashMap2.put('0', '0');
        hashMap2.put('1', '1');
        hashMap2.put('2', '2');
        hashMap2.put('3', '3');
        hashMap2.put('4', '4');
        hashMap2.put('5', '5');
        hashMap2.put('6', '6');
        hashMap2.put('7', '7');
        hashMap2.put('8', '8');
        hashMap2.put('9', '9');
        HashMap hashMap3 = new HashMap(40);
        hashMap3.put('A', '2');
        hashMap3.put('B', '2');
        hashMap3.put('C', '2');
        hashMap3.put('D', '3');
        hashMap3.put('E', '3');
        hashMap3.put('F', '3');
        hashMap3.put('G', '4');
        hashMap3.put('H', '4');
        hashMap3.put('I', '4');
        hashMap3.put('J', '5');
        hashMap3.put('K', '5');
        hashMap3.put('L', '5');
        hashMap3.put('M', '6');
        hashMap3.put('N', '6');
        hashMap3.put('O', '6');
        hashMap3.put('P', '7');
        hashMap3.put('Q', '7');
        hashMap3.put('R', '7');
        hashMap3.put('S', '7');
        hashMap3.put('T', '8');
        hashMap3.put('U', '8');
        hashMap3.put('V', '8');
        hashMap3.put('W', '9');
        hashMap3.put('X', '9');
        hashMap3.put('Y', '9');
        hashMap3.put('Z', '9');
        f18784k = Collections.unmodifiableMap(hashMap3);
        HashMap hashMap4 = new HashMap(100);
        hashMap4.putAll(f18784k);
        hashMap4.putAll(hashMap2);
        f18785l = Collections.unmodifiableMap(hashMap4);
        HashMap hashMap5 = new HashMap();
        hashMap5.putAll(hashMap2);
        hashMap5.put('+', '+');
        hashMap5.put('*', '*');
        hashMap5.put('#', '#');
        f18783j = Collections.unmodifiableMap(hashMap5);
        HashMap hashMap6 = new HashMap();
        for (Character ch : f18784k.keySet()) {
            char charValue = ch.charValue();
            hashMap6.put(Character.valueOf(Character.toLowerCase(charValue)), Character.valueOf(charValue));
            hashMap6.put(Character.valueOf(charValue), Character.valueOf(charValue));
        }
        hashMap6.putAll(hashMap2);
        hashMap6.put('-', '-');
        hashMap6.put((char) 65293, '-');
        hashMap6.put((char) 8208, '-');
        hashMap6.put((char) 8209, '-');
        hashMap6.put((char) 8210, '-');
        hashMap6.put((char) 8211, '-');
        hashMap6.put((char) 8212, '-');
        hashMap6.put((char) 8213, '-');
        hashMap6.put((char) 8722, '-');
        hashMap6.put('/', '/');
        hashMap6.put((char) 65295, '/');
        hashMap6.put(' ', ' ');
        hashMap6.put((char) 12288, ' ');
        hashMap6.put((char) 8288, ' ');
        hashMap6.put('.', '.');
        hashMap6.put((char) 65294, '.');
        f18786m = Collections.unmodifiableMap(hashMap6);
        f18787n = Pattern.compile("[\\d]+(?:[~⁓∼～][\\d]+)?");
        f18788o = Arrays.toString(f18784k.keySet().toArray()).replaceAll("[, \\[\\]]", "") + Arrays.toString(f18784k.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", "");
        f18774a = Pattern.compile("[+＋]+");
        f18789p = Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]+");
        f18790q = Pattern.compile("(\\p{Nd})");
        f18791r = Pattern.compile("[+＋\\p{Nd}]");
        f18775b = Pattern.compile("[\\\\/] *x");
        f18776c = Pattern.compile("[[\\P{N}&&\\P{L}]&&[^#]]+$");
        f18792s = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
        f18793t = "\\p{Nd}{2}|[+＋]*+(?:[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*]*\\p{Nd}){3,}[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*" + f18788o + "\\p{Nd}]*";
        f18794u = m722a(",;".concat("xｘ#＃~～"));
        f18777d = m722a("xｘ#＃~～");
        f18795v = Pattern.compile("(?:" + f18794u + ")$", 66);
        f18796w = Pattern.compile(f18793t + "(?:" + f18794u + ")?", 66);
        f18778e = Pattern.compile("(\\D+)");
        f18797x = Pattern.compile("(\\$\\d)");
        f18798y = Pattern.compile("\\(?\\$1\\)?");
        f18799z = null;
    }

    private C3118h(AbstractC3114e eVar, Map<Integer, List<String>> map) {
        this.f18800A = eVar;
        this.f18801B = map;
        for (Map.Entry<Integer, List<String>> entry : map.entrySet()) {
            List<String> value = entry.getValue();
            if (value.size() != 1 || !"001".equals(value.get(0))) {
                this.f18805F.addAll(value);
            } else {
                this.f18806G.add(entry.getKey());
            }
        }
        if (this.f18805F.remove("001")) {
            f18779f.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
        }
        this.f18803D.addAll(map.get(1));
    }

    /* renamed from: a */
    private static int m727a(CharSequence charSequence, C3123j.C3125b bVar) {
        return m726a(charSequence, bVar, EnumC3120b.f18823l);
    }

    /* renamed from: a */
    private static int m726a(CharSequence charSequence, C3123j.C3125b bVar, int i) {
        List<Integer> b;
        List<Integer> e;
        List<Integer> list;
        while (true) {
            C3123j.C3127d a = m732a(bVar, i);
            b = a.m681b().isEmpty() ? bVar.m702a().m681b() : a.m681b();
            e = a.m678e();
            if (i != EnumC3120b.f18814c) {
                break;
            } else if (!m731a(m732a(bVar, EnumC3120b.f18812a))) {
                i = EnumC3120b.f18813b;
            } else {
                C3123j.C3127d a2 = m732a(bVar, EnumC3120b.f18813b);
                if (m731a(a2)) {
                    b = new ArrayList<>(b);
                    b.addAll(a2.m681b().size() == 0 ? bVar.m702a().m681b() : a2.m681b());
                    Collections.sort(b);
                    if (e.isEmpty()) {
                        list = a2.m678e();
                    } else {
                        list = new ArrayList<>(e);
                        list.addAll(a2.m678e());
                        Collections.sort(list);
                    }
                }
            }
        }
        list = e;
        if (b.get(0).intValue() == -1) {
            return EnumC3121c.f18829e;
        }
        int length = charSequence.length();
        if (list.contains(Integer.valueOf(length))) {
            return EnumC3121c.f18826b;
        }
        int intValue = b.get(0).intValue();
        return intValue == length ? EnumC3121c.f18825a : intValue > length ? EnumC3121c.f18828d : b.get(b.size() - 1).intValue() < length ? EnumC3121c.f18830f : b.subList(1, b.size()).contains(Integer.valueOf(length)) ? EnumC3121c.f18825a : EnumC3121c.f18829e;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x010c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m725a(java.lang.CharSequence r6, com.google.p068b.p069a.C3123j.C3125b r7, java.lang.StringBuilder r8, com.google.p068b.p069a.C3128k.C3129a r9) {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p068b.p069a.C3118h.m725a(java.lang.CharSequence, com.google.b.a.j$b, java.lang.StringBuilder, com.google.b.a.k$a):int");
    }

    /* renamed from: a */
    private int m719a(StringBuilder sb, StringBuilder sb2) {
        if (sb.length() == 0 || sb.charAt(0) == '0') {
            return 0;
        }
        int length = sb.length();
        for (int i = 1; i <= 3 && i <= length; i++) {
            int parseInt = Integer.parseInt(sb.substring(0, i));
            if (this.f18801B.containsKey(Integer.valueOf(parseInt))) {
                sb2.append(sb.substring(i));
                return parseInt;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static C3118h m737a() {
        C3118h hVar;
        synchronized (C3118h.class) {
            try {
                if (f18799z == null) {
                    AbstractC3111b bVar = C3112c.f18756a;
                    if (bVar != null) {
                        m733a(new C3118h(new C3115f(bVar), C3105a.m750a()));
                    } else {
                        throw new IllegalArgumentException("metadataLoader could not be null.");
                    }
                }
                hVar = f18799z;
            } catch (Throwable th) {
                throw th;
            }
        }
        return hVar;
    }

    /* renamed from: a */
    private C3123j.C3124a m718a(List<C3123j.C3124a> list, String str) {
        for (C3123j.C3124a aVar : list) {
            int c = aVar.m704c();
            if (c == 0 || this.f18804E.m747a(aVar.m706a(c - 1)).matcher(str).lookingAt()) {
                if (this.f18804E.m747a(aVar.m707a()).matcher(str).matches()) {
                    return aVar;
                }
            }
        }
        return null;
    }

    /* renamed from: a */
    private C3123j.C3125b m734a(int i, String str) {
        return "001".equals(str) ? m717b(i) : m710c(str);
    }

    /* renamed from: a */
    private static C3123j.C3127d m732a(C3123j.C3125b bVar, int i) {
        switch (C3122i.f18834c[i - 1]) {
            case 1:
                return bVar.m698e();
            case 2:
                return bVar.m699d();
            case 3:
                return bVar.m700c();
            case 4:
            case 5:
                return bVar.m701b();
            case 6:
                return bVar.m697f();
            case 7:
                return bVar.m695h();
            case 8:
                return bVar.m696g();
            case 9:
                return bVar.m694i();
            case 10:
                return bVar.m693j();
            case 11:
                return bVar.m692k();
            default:
                return bVar.m702a();
        }
    }

    /* renamed from: a */
    private static String m722a(String str) {
        return ";ext=(\\p{Nd}{1,7})|[  \\t,]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|[" + str + "]|int|anexo|ｉｎｔ)[:\\.．]?[  \\t,-]*(\\p{Nd}{1,7})#?|[- ]+(\\p{Nd}{1,5})#";
    }

    /* renamed from: a */
    private static StringBuilder m721a(StringBuilder sb) {
        String str;
        int i;
        if (f18792s.matcher(sb).matches()) {
            i = sb.length();
            Map<Character, Character> map = f18785l;
            StringBuilder sb2 = new StringBuilder(sb.length());
            for (int i2 = 0; i2 < sb.length(); i2++) {
                Character ch = map.get(Character.valueOf(Character.toUpperCase(sb.charAt(i2))));
                if (ch != null) {
                    sb2.append(ch);
                }
            }
            str = sb2.toString();
        } else {
            i = sb.length();
            str = m715b((CharSequence) sb);
        }
        sb.replace(0, i, str);
        return sb;
    }

    /* renamed from: a */
    private static void m735a(int i, int i2, StringBuilder sb) {
        int i3 = C3122i.f18833b[i2 - 1];
        if (i3 == 1) {
            sb.insert(0, i).insert(0, '+');
        } else if (i3 == 2) {
            sb.insert(0, " ").insert(0, i).insert(0, '+');
        } else if (i3 == 3) {
            sb.insert(0, "-").insert(0, i).insert(0, '+').insert(0, "tel:");
        }
    }

    /* renamed from: a */
    private static void m733a(C3118h hVar) {
        synchronized (C3118h.class) {
            try {
                f18799z = hVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private static void m724a(CharSequence charSequence, C3128k.C3129a aVar) {
        if (charSequence.length() > 1 && charSequence.charAt(0) == '0') {
            aVar.m668f();
            int i = 1;
            while (i < charSequence.length() - 1 && charSequence.charAt(i) == '0') {
                i++;
            }
            if (i != 1) {
                aVar.m672b(i);
            }
        }
    }

    /* renamed from: a */
    private boolean m736a(int i) {
        return this.f18801B.containsKey(Integer.valueOf(i));
    }

    /* renamed from: a */
    private static boolean m731a(C3123j.C3127d dVar) {
        return (dVar.m680c() == 1 && dVar.m679d() == -1) ? false : true;
    }

    /* renamed from: a */
    private static boolean m728a(CharSequence charSequence) {
        if (charSequence.length() < 2) {
            return false;
        }
        return f18796w.matcher(charSequence).matches();
    }

    /* renamed from: a */
    private boolean m720a(StringBuilder sb, C3123j.C3125b bVar, StringBuilder sb2) {
        int length = sb.length();
        String p = bVar.m687p();
        if (length == 0 || p.length() == 0) {
            return false;
        }
        Matcher matcher = this.f18804E.m747a(p).matcher(sb);
        if (!matcher.lookingAt()) {
            return false;
        }
        C3123j.C3127d a = bVar.m702a();
        boolean a2 = this.f18802C.mo748a(sb, a);
        int groupCount = matcher.groupCount();
        String q = bVar.m686q();
        if (q != null && q.length() != 0 && matcher.group(groupCount) != null) {
            StringBuilder sb3 = new StringBuilder(sb);
            sb3.replace(0, length, matcher.replaceFirst(q));
            if (a2 && !this.f18802C.mo748a(sb3.toString(), a)) {
                return false;
            }
            if (sb2 != null && groupCount > 1) {
                sb2.append(matcher.group(1));
            }
            sb.replace(0, sb.length(), sb3.toString());
            return true;
        } else if (a2 && !this.f18802C.mo748a(sb.substring(matcher.end()), a)) {
            return false;
        } else {
            if (!(sb2 == null || groupCount <= 0 || matcher.group(groupCount) == null)) {
                sb2.append(matcher.group(1));
            }
            sb.delete(0, matcher.end());
            return true;
        }
    }

    /* renamed from: b */
    private C3123j.C3125b m717b(int i) {
        if (!this.f18801B.containsKey(Integer.valueOf(i))) {
            return null;
        }
        return this.f18800A.mo740a(i);
    }

    /* renamed from: b */
    private static String m716b(C3128k.C3129a aVar) {
        StringBuilder sb = new StringBuilder();
        if (aVar.m669e() && aVar.m667g() > 0) {
            char[] cArr = new char[aVar.m667g()];
            Arrays.fill(cArr, '0');
            sb.append(new String(cArr));
        }
        sb.append(aVar.m673b());
        return sb.toString();
    }

    /* renamed from: b */
    private static String m715b(CharSequence charSequence) {
        return m711c(charSequence).toString();
    }

    /* renamed from: b */
    private static String m713b(StringBuilder sb) {
        Matcher matcher = f18795v.matcher(sb);
        if (!matcher.find() || !m728a((CharSequence) sb.substring(0, matcher.start()))) {
            return "";
        }
        int groupCount = matcher.groupCount();
        for (int i = 1; i <= groupCount; i++) {
            if (matcher.group(i) != null) {
                String group = matcher.group(i);
                sb.delete(matcher.start(), sb.length());
                return group;
            }
        }
        return "";
    }

    /* renamed from: b */
    private boolean m714b(String str) {
        return str != null && this.f18805F.contains(str);
    }

    /* renamed from: c */
    private C3123j.C3125b m710c(String str) {
        if (!m714b(str)) {
            return null;
        }
        return this.f18800A.mo739a(str);
    }

    /* renamed from: c */
    private String m712c(int i) {
        List<String> list = this.f18801B.get(Integer.valueOf(i));
        return list == null ? "ZZ" : list.get(0);
    }

    /* renamed from: c */
    private static StringBuilder m711c(CharSequence charSequence) {
        StringBuilder sb = new StringBuilder(charSequence.length());
        for (int i = 0; i < charSequence.length(); i++) {
            int digit = Character.digit(charSequence.charAt(i), 10);
            if (digit != -1) {
                sb.append(digit);
            }
        }
        return sb;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0171, code lost:
        if (com.google.p068b.p069a.C3118h.f18774a.matcher(r0).lookingAt() == false) goto L_0x0174;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.p068b.p069a.C3128k.C3129a m723a(java.lang.CharSequence r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 809
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p068b.p069a.C3118h.m723a(java.lang.CharSequence, java.lang.String):com.google.b.a.k$a");
    }

    /* renamed from: a */
    public final String m729a(C3128k.C3129a aVar, int i) {
        String str;
        if (aVar.m673b() == 0 && aVar.m666h()) {
            String i2 = aVar.m665i();
            if (i2.length() > 0) {
                return i2;
            }
        }
        StringBuilder sb = new StringBuilder(20);
        sb.setLength(0);
        int a = aVar.m677a();
        String b = m716b(aVar);
        if (i == EnumC3119a.f18807a) {
            sb.append(b);
            m735a(a, EnumC3119a.f18807a, sb);
        } else if (!m736a(a)) {
            sb.append(b);
        } else {
            C3123j.C3125b a2 = m734a(a, m712c(a));
            C3123j.C3124a a3 = m718a((a2.m684s().size() == 0 || i == EnumC3119a.f18809c) ? a2.m685r() : a2.m684s(), b);
            if (a3 == null) {
                str = b;
            } else {
                String b2 = a3.m705b();
                Matcher matcher = this.f18804E.m747a(a3.m707a()).matcher(b);
                int i3 = EnumC3119a.f18809c;
                String d = a3.m703d();
                String replaceAll = (i != EnumC3119a.f18809c || d == null || d.length() <= 0) ? matcher.replaceAll(b2) : matcher.replaceAll(f18797x.matcher(b2).replaceFirst(d));
                str = replaceAll;
                if (i == EnumC3119a.f18810d) {
                    Matcher matcher2 = f18789p.matcher(replaceAll);
                    if (matcher2.lookingAt()) {
                        replaceAll = matcher2.replaceFirst("");
                    }
                    str = matcher2.reset(replaceAll).replaceAll("-");
                }
            }
            sb.append(str);
            if (aVar.m671c() && aVar.m670d().length() > 0) {
                sb.append(i == EnumC3119a.f18810d ? ";ext=" : a2.m689n() ? a2.m688o() : " ext. ");
                sb.append(aVar.m670d());
            }
            m735a(a, i, sb);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public final boolean m730a(C3128k.C3129a aVar) {
        int i = EnumC3120b.f18823l;
        String b = m716b(aVar);
        int a = aVar.m677a();
        int a2 = !m736a(a) ? EnumC3121c.f18827c : m726a(b, m734a(a, m712c(a)), i);
        return a2 == EnumC3121c.f18825a || a2 == EnumC3121c.f18826b;
    }
}
