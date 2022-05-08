package com.google.gson.a.a;

import com.google.gson.a.f;
import com.google.gson.annotations.SerializedName;
import com.google.gson.c.b;
import com.google.gson.c.c;
import com.google.gson.i;
import com.google.gson.m;
import com.google.gson.n;
import com.google.gson.o;
import com.google.gson.r;
import com.google.gson.u;
import com.google.gson.x;
import com.google.gson.y;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/a/l.class */
public final class l {
    public static final y M;

    /* renamed from: a  reason: collision with root package name */
    public static final x<Class> f4468a = new x<Class>() { // from class: com.google.gson.a.a.l.1
        @Override // com.google.gson.x
        public final /* synthetic */ Class a(com.google.gson.c.a aVar) {
            if (aVar.f() == b.NULL) {
                aVar.k();
                return null;
            }
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }

        @Override // com.google.gson.x
        public final /* synthetic */ void a(c cVar, Class cls) {
            Class cls2 = cls;
            if (cls2 == null) {
                cVar.e();
                return;
            }
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls2.getName() + ". Forgot to register a type adapter?");
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public static final y f4469b = a(Class.class, f4468a);
    public static final x<BitSet> c = new x<BitSet>() { // from class: com.google.gson.a.a.l.12
        private static BitSet b(com.google.gson.c.a aVar) {
            BitSet bitSet;
            boolean z2;
            if (aVar.f() == b.NULL) {
                aVar.k();
                bitSet = null;
            } else {
                BitSet bitSet2 = new BitSet();
                aVar.a();
                b f2 = aVar.f();
                int i2 = 0;
                while (f2 != b.END_ARRAY) {
                    switch (AnonymousClass26.f4482a[f2.ordinal()]) {
                        case 1:
                            if (aVar.n() == 0) {
                                z2 = false;
                                break;
                            } else {
                                z2 = true;
                                break;
                            }
                        case 2:
                            z2 = aVar.j();
                            break;
                        case 3:
                            String i3 = aVar.i();
                            try {
                                if (Integer.parseInt(i3) == 0) {
                                    z2 = false;
                                    break;
                                } else {
                                    z2 = true;
                                    break;
                                }
                            } catch (NumberFormatException e2) {
                                throw new u("Error: Expecting: bitset number value (1, 0), Found: " + i3);
                            }
                        default:
                            throw new u("Invalid bitset value type: " + f2);
                    }
                    if (z2) {
                        bitSet2.set(i2);
                    }
                    i2++;
                    f2 = aVar.f();
                }
                aVar.b();
                bitSet = bitSet2;
            }
            return bitSet;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ BitSet a(com.google.gson.c.a aVar) {
            return b(aVar);
        }

        @Override // com.google.gson.x
        public final /* synthetic */ void a(c cVar, BitSet bitSet) {
            BitSet bitSet2 = bitSet;
            if (bitSet2 == null) {
                cVar.e();
                return;
            }
            cVar.a();
            for (int i2 = 0; i2 < bitSet2.length(); i2++) {
                cVar.a(bitSet2.get(i2) ? 1 : 0);
            }
            cVar.b();
        }
    };
    public static final y d = a(BitSet.class, c);
    public static final x<Boolean> e = new x<Boolean>() { // from class: com.google.gson.a.a.l.23
        @Override // com.google.gson.x
        public final /* synthetic */ Boolean a(com.google.gson.c.a aVar) {
            Boolean valueOf;
            if (aVar.f() == b.NULL) {
                aVar.k();
                valueOf = null;
            } else {
                valueOf = aVar.f() == b.STRING ? Boolean.valueOf(Boolean.parseBoolean(aVar.i())) : Boolean.valueOf(aVar.j());
            }
            return valueOf;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ void a(c cVar, Boolean bool) {
            Boolean bool2 = bool;
            if (bool2 == null) {
                cVar.e();
            } else {
                cVar.a(bool2.booleanValue());
            }
        }
    };
    public static final x<Boolean> f = new x<Boolean>() { // from class: com.google.gson.a.a.l.27
        @Override // com.google.gson.x
        public final /* synthetic */ Boolean a(com.google.gson.c.a aVar) {
            Boolean valueOf;
            if (aVar.f() == b.NULL) {
                aVar.k();
                valueOf = null;
            } else {
                valueOf = Boolean.valueOf(aVar.i());
            }
            return valueOf;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ void a(c cVar, Boolean bool) {
            Boolean bool2 = bool;
            cVar.b(bool2 == null ? "null" : bool2.toString());
        }
    };
    public static final y g = a(Boolean.TYPE, Boolean.class, e);
    public static final x<Number> h = new x<Number>() { // from class: com.google.gson.a.a.l.28
        private static Number b(com.google.gson.c.a aVar) {
            Byte valueOf;
            if (aVar.f() == b.NULL) {
                aVar.k();
                valueOf = null;
            } else {
                try {
                    valueOf = Byte.valueOf((byte) aVar.n());
                } catch (NumberFormatException e2) {
                    throw new u(e2);
                }
            }
            return valueOf;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ Number a(com.google.gson.c.a aVar) {
            return b(aVar);
        }

        @Override // com.google.gson.x
        public final /* bridge */ /* synthetic */ void a(c cVar, Number number) {
            cVar.a(number);
        }
    };
    public static final y i = a(Byte.TYPE, Byte.class, h);
    public static final x<Number> j = new x<Number>() { // from class: com.google.gson.a.a.l.29
        private static Number b(com.google.gson.c.a aVar) {
            Short valueOf;
            if (aVar.f() == b.NULL) {
                aVar.k();
                valueOf = null;
            } else {
                try {
                    valueOf = Short.valueOf((short) aVar.n());
                } catch (NumberFormatException e2) {
                    throw new u(e2);
                }
            }
            return valueOf;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ Number a(com.google.gson.c.a aVar) {
            return b(aVar);
        }

        @Override // com.google.gson.x
        public final /* bridge */ /* synthetic */ void a(c cVar, Number number) {
            cVar.a(number);
        }
    };
    public static final y k = a(Short.TYPE, Short.class, j);
    public static final x<Number> l = new x<Number>() { // from class: com.google.gson.a.a.l.30
        private static Number b(com.google.gson.c.a aVar) {
            Integer valueOf;
            if (aVar.f() == b.NULL) {
                aVar.k();
                valueOf = null;
            } else {
                try {
                    valueOf = Integer.valueOf(aVar.n());
                } catch (NumberFormatException e2) {
                    throw new u(e2);
                }
            }
            return valueOf;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ Number a(com.google.gson.c.a aVar) {
            return b(aVar);
        }

        @Override // com.google.gson.x
        public final /* bridge */ /* synthetic */ void a(c cVar, Number number) {
            cVar.a(number);
        }
    };
    public static final y m = a(Integer.TYPE, Integer.class, l);
    public static final x<Number> n = new x<Number>() { // from class: com.google.gson.a.a.l.31
        private static Number b(com.google.gson.c.a aVar) {
            Long valueOf;
            if (aVar.f() == b.NULL) {
                aVar.k();
                valueOf = null;
            } else {
                try {
                    valueOf = Long.valueOf(aVar.m());
                } catch (NumberFormatException e2) {
                    throw new u(e2);
                }
            }
            return valueOf;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ Number a(com.google.gson.c.a aVar) {
            return b(aVar);
        }

        @Override // com.google.gson.x
        public final /* bridge */ /* synthetic */ void a(c cVar, Number number) {
            cVar.a(number);
        }
    };
    public static final x<Number> o = new x<Number>() { // from class: com.google.gson.a.a.l.32
        @Override // com.google.gson.x
        public final /* synthetic */ Number a(com.google.gson.c.a aVar) {
            Float valueOf;
            if (aVar.f() == b.NULL) {
                aVar.k();
                valueOf = null;
            } else {
                valueOf = Float.valueOf((float) aVar.l());
            }
            return valueOf;
        }

        @Override // com.google.gson.x
        public final /* bridge */ /* synthetic */ void a(c cVar, Number number) {
            cVar.a(number);
        }
    };
    public static final x<Number> p = new x<Number>() { // from class: com.google.gson.a.a.l.2
        @Override // com.google.gson.x
        public final /* synthetic */ Number a(com.google.gson.c.a aVar) {
            Double valueOf;
            if (aVar.f() == b.NULL) {
                aVar.k();
                valueOf = null;
            } else {
                valueOf = Double.valueOf(aVar.l());
            }
            return valueOf;
        }

        @Override // com.google.gson.x
        public final /* bridge */ /* synthetic */ void a(c cVar, Number number) {
            cVar.a(number);
        }
    };
    public static final x<Number> q = new x<Number>() { // from class: com.google.gson.a.a.l.3
        @Override // com.google.gson.x
        public final /* synthetic */ Number a(com.google.gson.c.a aVar) {
            f fVar;
            b f2 = aVar.f();
            switch (AnonymousClass26.f4482a[f2.ordinal()]) {
                case 1:
                    fVar = new f(aVar.i());
                    break;
                case 2:
                case 3:
                default:
                    throw new u("Expecting number, got: " + f2);
                case 4:
                    aVar.k();
                    fVar = null;
                    break;
            }
            return fVar;
        }

        @Override // com.google.gson.x
        public final /* bridge */ /* synthetic */ void a(c cVar, Number number) {
            cVar.a(number);
        }
    };
    public static final y r = a(Number.class, q);
    public static final x<Character> s = new x<Character>() { // from class: com.google.gson.a.a.l.4
        @Override // com.google.gson.x
        public final /* synthetic */ Character a(com.google.gson.c.a aVar) {
            Character valueOf;
            if (aVar.f() == b.NULL) {
                aVar.k();
                valueOf = null;
            } else {
                String i2 = aVar.i();
                if (i2.length() != 1) {
                    throw new u("Expecting character, got: " + i2);
                }
                valueOf = Character.valueOf(i2.charAt(0));
            }
            return valueOf;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ void a(c cVar, Character ch) {
            Character ch2 = ch;
            cVar.b(ch2 == null ? null : String.valueOf(ch2));
        }
    };
    public static final y t = a(Character.TYPE, Character.class, s);
    public static final x<String> u = new x<String>() { // from class: com.google.gson.a.a.l.5
        @Override // com.google.gson.x
        public final /* synthetic */ String a(com.google.gson.c.a aVar) {
            String bool;
            b f2 = aVar.f();
            if (f2 == b.NULL) {
                aVar.k();
                bool = null;
            } else {
                bool = f2 == b.BOOLEAN ? Boolean.toString(aVar.j()) : aVar.i();
            }
            return bool;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ void a(c cVar, String str) {
            cVar.b(str);
        }
    };
    public static final x<BigDecimal> v = new x<BigDecimal>() { // from class: com.google.gson.a.a.l.6
        private static BigDecimal b(com.google.gson.c.a aVar) {
            BigDecimal bigDecimal;
            if (aVar.f() == b.NULL) {
                aVar.k();
                bigDecimal = null;
            } else {
                try {
                    bigDecimal = new BigDecimal(aVar.i());
                } catch (NumberFormatException e2) {
                    throw new u(e2);
                }
            }
            return bigDecimal;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ BigDecimal a(com.google.gson.c.a aVar) {
            return b(aVar);
        }

        @Override // com.google.gson.x
        public final /* bridge */ /* synthetic */ void a(c cVar, BigDecimal bigDecimal) {
            cVar.a(bigDecimal);
        }
    };
    public static final x<BigInteger> w = new x<BigInteger>() { // from class: com.google.gson.a.a.l.7
        private static BigInteger b(com.google.gson.c.a aVar) {
            BigInteger bigInteger;
            if (aVar.f() == b.NULL) {
                aVar.k();
                bigInteger = null;
            } else {
                try {
                    bigInteger = new BigInteger(aVar.i());
                } catch (NumberFormatException e2) {
                    throw new u(e2);
                }
            }
            return bigInteger;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ BigInteger a(com.google.gson.c.a aVar) {
            return b(aVar);
        }

        @Override // com.google.gson.x
        public final /* bridge */ /* synthetic */ void a(c cVar, BigInteger bigInteger) {
            cVar.a(bigInteger);
        }
    };
    public static final y x = a(String.class, u);
    public static final x<StringBuilder> y = new x<StringBuilder>() { // from class: com.google.gson.a.a.l.8
        @Override // com.google.gson.x
        public final /* synthetic */ StringBuilder a(com.google.gson.c.a aVar) {
            StringBuilder sb;
            if (aVar.f() == b.NULL) {
                aVar.k();
                sb = null;
            } else {
                sb = new StringBuilder(aVar.i());
            }
            return sb;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ void a(c cVar, StringBuilder sb) {
            StringBuilder sb2 = sb;
            cVar.b(sb2 == null ? null : sb2.toString());
        }
    };
    public static final y z = a(StringBuilder.class, y);
    public static final x<StringBuffer> A = new x<StringBuffer>() { // from class: com.google.gson.a.a.l.9
        @Override // com.google.gson.x
        public final /* synthetic */ StringBuffer a(com.google.gson.c.a aVar) {
            StringBuffer stringBuffer;
            if (aVar.f() == b.NULL) {
                aVar.k();
                stringBuffer = null;
            } else {
                stringBuffer = new StringBuffer(aVar.i());
            }
            return stringBuffer;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ void a(c cVar, StringBuffer stringBuffer) {
            StringBuffer stringBuffer2 = stringBuffer;
            cVar.b(stringBuffer2 == null ? null : stringBuffer2.toString());
        }
    };
    public static final y B = a(StringBuffer.class, A);
    public static final x<URL> C = new x<URL>() { // from class: com.google.gson.a.a.l.10
        @Override // com.google.gson.x
        public final /* synthetic */ URL a(com.google.gson.c.a aVar) {
            URL url;
            if (aVar.f() == b.NULL) {
                aVar.k();
                url = null;
            } else {
                String i2 = aVar.i();
                url = null;
                if (!"null".equals(i2)) {
                    url = new URL(i2);
                }
            }
            return url;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ void a(c cVar, URL url) {
            URL url2 = url;
            cVar.b(url2 == null ? null : url2.toExternalForm());
        }
    };
    public static final y D = a(URL.class, C);
    public static final x<URI> E = new x<URI>() { // from class: com.google.gson.a.a.l.11
        private static URI b(com.google.gson.c.a aVar) {
            URI uri;
            if (aVar.f() == b.NULL) {
                aVar.k();
                uri = null;
            } else {
                try {
                    String i2 = aVar.i();
                    uri = null;
                    if (!"null".equals(i2)) {
                        uri = new URI(i2);
                    }
                } catch (URISyntaxException e2) {
                    throw new m(e2);
                }
            }
            return uri;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ URI a(com.google.gson.c.a aVar) {
            return b(aVar);
        }

        @Override // com.google.gson.x
        public final /* synthetic */ void a(c cVar, URI uri) {
            URI uri2 = uri;
            cVar.b(uri2 == null ? null : uri2.toASCIIString());
        }
    };
    public static final y F = a(URI.class, E);
    public static final x<InetAddress> G = new x<InetAddress>() { // from class: com.google.gson.a.a.l.13
        @Override // com.google.gson.x
        public final /* synthetic */ InetAddress a(com.google.gson.c.a aVar) {
            InetAddress byName;
            if (aVar.f() == b.NULL) {
                aVar.k();
                byName = null;
            } else {
                byName = InetAddress.getByName(aVar.i());
            }
            return byName;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ void a(c cVar, InetAddress inetAddress) {
            InetAddress inetAddress2 = inetAddress;
            cVar.b(inetAddress2 == null ? null : inetAddress2.getHostAddress());
        }
    };
    public static final y H = b(InetAddress.class, G);
    public static final x<UUID> I = new x<UUID>() { // from class: com.google.gson.a.a.l.14
        @Override // com.google.gson.x
        public final /* synthetic */ UUID a(com.google.gson.c.a aVar) {
            UUID fromString;
            if (aVar.f() == b.NULL) {
                aVar.k();
                fromString = null;
            } else {
                fromString = UUID.fromString(aVar.i());
            }
            return fromString;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ void a(c cVar, UUID uuid) {
            UUID uuid2 = uuid;
            cVar.b(uuid2 == null ? null : uuid2.toString());
        }
    };
    public static final y J = a(UUID.class, I);
    public static final y K = new y() { // from class: com.google.gson.a.a.l.15
        @Override // com.google.gson.y
        public final <T> x<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
            x<T> xVar;
            if (aVar.f4531a != Timestamp.class) {
                xVar = null;
            } else {
                final x<T> a2 = fVar.a(Date.class);
                xVar = (x<T>) new x<Timestamp>() { // from class: com.google.gson.a.a.l.15.1
                    @Override // com.google.gson.x
                    public final /* synthetic */ Timestamp a(com.google.gson.c.a aVar2) {
                        Date date = (Date) a2.a(aVar2);
                        return date != null ? new Timestamp(date.getTime()) : null;
                    }

                    @Override // com.google.gson.x
                    public final /* bridge */ /* synthetic */ void a(c cVar, Timestamp timestamp) {
                        a2.a(cVar, timestamp);
                    }
                };
            }
            return xVar;
        }
    };
    public static final x<Calendar> L = new x<Calendar>() { // from class: com.google.gson.a.a.l.16
        @Override // com.google.gson.x
        public final /* synthetic */ Calendar a(com.google.gson.c.a aVar) {
            GregorianCalendar gregorianCalendar;
            if (aVar.f() == b.NULL) {
                aVar.k();
                gregorianCalendar = null;
            } else {
                aVar.c();
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                while (aVar.f() != b.END_OBJECT) {
                    String h2 = aVar.h();
                    int n2 = aVar.n();
                    if ("year".equals(h2)) {
                        i7 = n2;
                    } else if ("month".equals(h2)) {
                        i6 = n2;
                    } else if ("dayOfMonth".equals(h2)) {
                        i5 = n2;
                    } else if ("hourOfDay".equals(h2)) {
                        i4 = n2;
                    } else if ("minute".equals(h2)) {
                        i3 = n2;
                    } else if ("second".equals(h2)) {
                        i2 = n2;
                    }
                }
                aVar.d();
                gregorianCalendar = new GregorianCalendar(i7, i6, i5, i4, i3, i2);
            }
            return gregorianCalendar;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ void a(c cVar, Calendar calendar) {
            Calendar calendar2 = calendar;
            if (calendar2 == null) {
                cVar.e();
                return;
            }
            cVar.c();
            cVar.a("year");
            cVar.a(calendar2.get(1));
            cVar.a("month");
            cVar.a(calendar2.get(2));
            cVar.a("dayOfMonth");
            cVar.a(calendar2.get(5));
            cVar.a("hourOfDay");
            cVar.a(calendar2.get(11));
            cVar.a("minute");
            cVar.a(calendar2.get(12));
            cVar.a("second");
            cVar.a(calendar2.get(13));
            cVar.d();
        }
    };
    public static final x<Locale> N = new x<Locale>() { // from class: com.google.gson.a.a.l.17
        @Override // com.google.gson.x
        public final /* synthetic */ Locale a(com.google.gson.c.a aVar) {
            Locale locale = null;
            if (aVar.f() == b.NULL) {
                aVar.k();
            } else {
                StringTokenizer stringTokenizer = new StringTokenizer(aVar.i(), "_");
                String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                locale = (nextToken2 == null && nextToken3 == null) ? new Locale(nextToken) : nextToken3 == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, nextToken3);
            }
            return locale;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ void a(c cVar, Locale locale) {
            Locale locale2 = locale;
            cVar.b(locale2 == null ? null : locale2.toString());
        }
    };
    public static final y O = a(Locale.class, N);
    public static final x<com.google.gson.l> P = new x<com.google.gson.l>() { // from class: com.google.gson.a.a.l.18
        /* JADX INFO: Access modifiers changed from: private */
        public void a(c cVar, com.google.gson.l lVar) {
            if (lVar == null || (lVar instanceof n)) {
                cVar.e();
            } else if (lVar instanceof r) {
                r i2 = lVar.i();
                if (i2.f4556a instanceof Number) {
                    cVar.a(i2.a());
                } else if (i2.f4556a instanceof Boolean) {
                    cVar.a(i2.f());
                } else {
                    cVar.b(i2.b());
                }
            } else if (lVar instanceof i) {
                cVar.a();
                Iterator<com.google.gson.l> it = lVar.h().iterator();
                while (it.hasNext()) {
                    a(cVar, it.next());
                }
                cVar.b();
            } else if (lVar instanceof o) {
                cVar.c();
                for (Map.Entry<String, com.google.gson.l> entry : lVar.g().f4554a.entrySet()) {
                    cVar.a(entry.getKey());
                    a(cVar, entry.getValue());
                }
                cVar.d();
            } else {
                throw new IllegalArgumentException("Couldn't write " + lVar.getClass());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public com.google.gson.l a(com.google.gson.c.a aVar) {
            com.google.gson.l lVar;
            switch (AnonymousClass26.f4482a[aVar.f().ordinal()]) {
                case 1:
                    lVar = new r((Number) new f(aVar.i()));
                    break;
                case 2:
                    lVar = new r(Boolean.valueOf(aVar.j()));
                    break;
                case 3:
                    lVar = new r(aVar.i());
                    break;
                case 4:
                    aVar.k();
                    lVar = n.f4553a;
                    break;
                case 5:
                    i iVar = new i();
                    aVar.a();
                    while (aVar.e()) {
                        iVar.a(a(aVar));
                    }
                    aVar.b();
                    lVar = iVar;
                    break;
                case 6:
                    o oVar = new o();
                    aVar.c();
                    while (aVar.e()) {
                        oVar.a(aVar.h(), a(aVar));
                    }
                    aVar.d();
                    lVar = oVar;
                    break;
                default:
                    throw new IllegalArgumentException();
            }
            return lVar;
        }
    };
    public static final y Q = b(com.google.gson.l.class, P);
    public static final y R = new y() { // from class: com.google.gson.a.a.l.19
        @Override // com.google.gson.y
        public final <T> x<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
            a aVar2;
            Class<? super T> cls = aVar.f4531a;
            if (!Enum.class.isAssignableFrom(cls) || cls == Enum.class) {
                aVar2 = null;
            } else {
                Class<? super Object> cls2 = cls;
                if (!cls.isEnum()) {
                    cls2 = cls.getSuperclass();
                }
                aVar2 = new a(cls2);
            }
            return aVar2;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.gson.a.a.l$26  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/google/gson/a/a/l$26.class */
    public static final /* synthetic */ class AnonymousClass26 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4482a = new int[b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0081 -> B:33:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0085 -> B:47:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0089 -> B:43:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008d -> B:39:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0091 -> B:35:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0095 -> B:49:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0099 -> B:45:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009d -> B:41:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a1 -> B:37:0x0014). Please submit an issue!!! */
        static {
            try {
                f4482a[b.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4482a[b.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4482a[b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4482a[b.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4482a[b.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f4482a[b.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f4482a[b.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f4482a[b.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f4482a[b.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f4482a[b.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/gson/a/a/l$a.class */
    private static final class a<T extends Enum<T>> extends x<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, T> f4483a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private final Map<T, String> f4484b = new HashMap();

        public a(Class<T> cls) {
            T[] enumConstants;
            try {
                for (T t : cls.getEnumConstants()) {
                    String name = t.name();
                    SerializedName serializedName = (SerializedName) cls.getField(name).getAnnotation(SerializedName.class);
                    name = serializedName != null ? serializedName.value() : name;
                    this.f4483a.put(name, t);
                    this.f4484b.put(t, name);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError();
            }
        }

        @Override // com.google.gson.x
        public final /* synthetic */ Object a(com.google.gson.c.a aVar) {
            T t;
            if (aVar.f() == b.NULL) {
                aVar.k();
                t = null;
            } else {
                t = this.f4483a.get(aVar.i());
            }
            return t;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ void a(c cVar, Object obj) {
            Enum r0 = (Enum) obj;
            cVar.b(r0 == null ? null : this.f4484b.get(r0));
        }
    }

    static {
        final x<Calendar> xVar = L;
        M = new y() { // from class: com.google.gson.a.a.l.24
            @Override // com.google.gson.y
            public final <T> x<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
                Class<? super T> cls = aVar.f4531a;
                return (cls == r4 || cls == r5) ? xVar : null;
            }

            public final String toString() {
                return "Factory[type=" + r4.getName() + "+" + r5.getName() + ",adapter=" + xVar + "]";
            }
        };
    }

    public static <TT> y a(final com.google.gson.b.a<TT> aVar, final x<TT> xVar) {
        return new y() { // from class: com.google.gson.a.a.l.20
            @Override // com.google.gson.y
            public final <T> x<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar2) {
                return aVar2.equals(com.google.gson.b.a.this) ? xVar : null;
            }
        };
    }

    public static <TT> y a(final Class<TT> cls, final x<TT> xVar) {
        return new y() { // from class: com.google.gson.a.a.l.21
            @Override // com.google.gson.y
            public final <T> x<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
                return aVar.f4531a == cls ? xVar : null;
            }

            public final String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + xVar + "]";
            }
        };
    }

    public static <TT> y a(final Class<TT> cls, final Class<TT> cls2, final x<? super TT> xVar) {
        return new y() { // from class: com.google.gson.a.a.l.22
            @Override // com.google.gson.y
            public final <T> x<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
                Class<? super T> cls3 = aVar.f4531a;
                return (cls3 == cls || cls3 == cls2) ? xVar : null;
            }

            public final String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + xVar + "]";
            }
        };
    }

    private static <TT> y b(final Class<TT> cls, final x<TT> xVar) {
        return new y() { // from class: com.google.gson.a.a.l.25
            @Override // com.google.gson.y
            public final <T> x<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
                return cls.isAssignableFrom(aVar.f4531a) ? xVar : null;
            }

            public final String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + xVar + "]";
            }
        };
    }
}
