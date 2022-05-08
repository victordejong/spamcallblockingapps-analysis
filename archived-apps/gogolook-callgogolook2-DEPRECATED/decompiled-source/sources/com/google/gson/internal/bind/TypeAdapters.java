package com.google.gson.internal.bind;

import com.aotter.net.gson.internal.bind.TypeAdapters;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import p081h.p203i.p384e.AbstractC10104j;
import p081h.p203i.p384e.AbstractC10117u;
import p081h.p203i.p384e.C10101g;
import p081h.p203i.p384e.C10105k;
import p081h.p203i.p384e.C10106l;
import p081h.p203i.p384e.C10107m;
import p081h.p203i.p384e.C10110p;
import p081h.p203i.p384e.C10113s;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p081h.p203i.p384e.p386w.C10145f;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/TypeAdapters.class */
public final class TypeAdapters {

    /* renamed from: a */
    public static final TypeAdapter<Class> f7917a = new TypeAdapter<Class>() { // from class: com.google.gson.internal.bind.TypeAdapters.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public Class read(C10174a aVar) throws IOException {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }

        public void write(C10177c cVar, Class cls) throws IOException {
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
        }
    }.nullSafe();

    /* renamed from: b */
    public static final AbstractC10117u f7918b = m30938a(Class.class, f7917a);

    /* renamed from: c */
    public static final TypeAdapter<BitSet> f7919c = new TypeAdapter<BitSet>() { // from class: com.google.gson.internal.bind.TypeAdapters.2
        /* renamed from: a */
        public void write(C10177c cVar, BitSet bitSet) throws IOException {
            cVar.mo13227c();
            int length = bitSet.length();
            for (int i = 0; i < length; i++) {
                cVar.mo13218g(bitSet.get(i) ? 1L : 0L);
            }
            cVar.mo13221e();
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0047, code lost:
            if (java.lang.Integer.parseInt(r0) != 0) goto L_0x00a6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
            r10 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x00a3, code lost:
            if (r5.mo13244m() != 0) goto L_0x00a6;
         */
        @Override // com.google.gson.TypeAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.util.BitSet read(p081h.p203i.p384e.p391y.C10174a r5) throws java.io.IOException {
            /*
                r4 = this;
                java.util.BitSet r0 = new java.util.BitSet
                r1 = r0
                r1.<init>()
                r6 = r0
                r0 = r5
                r0.mo13265a()
                r0 = r5
                h.i.e.y.b r0 = r0.mo13272F()
                r7 = r0
                r0 = 0
                r8 = r0
            L_0x0014:
                r0 = r7
                h.i.e.y.b r1 = p081h.p203i.p384e.p391y.EnumC10176b.END_ARRAY
                if (r0 == r1) goto L_0x00bc
                int[] r0 = com.google.gson.internal.bind.TypeAdapters.C3735a.f7960a
                r1 = r7
                int r1 = r1.ordinal()
                r0 = r0[r1]
                r9 = r0
                r0 = 1
                r10 = r0
                r0 = r9
                r1 = 1
                if (r0 == r1) goto L_0x009f
                r0 = r9
                r1 = 2
                if (r0 == r1) goto L_0x0096
                r0 = r9
                r1 = 3
                if (r0 != r1) goto L_0x0075
                r0 = r5
                java.lang.String r0 = r0.mo13274B()
                r7 = r0
                r0 = r7
                int r0 = java.lang.Integer.parseInt(r0)     // Catch: NumberFormatException -> 0x0053
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L_0x004d
                goto L_0x00a6
            L_0x004d:
                r0 = 0
                r10 = r0
                goto L_0x00a6
            L_0x0053:
                r5 = move-exception
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r5 = r0
                r0 = r5
                java.lang.String r1 = "Error: Expecting: bitset number value (1, 0), Found: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                h.i.e.s r0 = new h.i.e.s
                r1 = r0
                r2 = r5
                java.lang.String r2 = r2.toString()
                r1.<init>(r2)
                throw r0
            L_0x0075:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r5 = r0
                r0 = r5
                java.lang.String r1 = "Invalid bitset value type: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                h.i.e.s r0 = new h.i.e.s
                r1 = r0
                r2 = r5
                java.lang.String r2 = r2.toString()
                r1.<init>(r2)
                throw r0
            L_0x0096:
                r0 = r5
                boolean r0 = r0.mo13246k()
                r10 = r0
                goto L_0x00a6
            L_0x009f:
                r0 = r5
                int r0 = r0.mo13244m()
                if (r0 == 0) goto L_0x004d
            L_0x00a6:
                r0 = r10
                if (r0 == 0) goto L_0x00b1
                r0 = r6
                r1 = r8
                r0.set(r1)
            L_0x00b1:
                int r8 = r8 + 1
                r0 = r5
                h.i.e.y.b r0 = r0.mo13272F()
                r7 = r0
                goto L_0x0014
            L_0x00bc:
                r0 = r5
                r0.mo13251f()
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.TypeAdapters.C37092.read(h.i.e.y.a):java.util.BitSet");
        }
    }.nullSafe();

    /* renamed from: d */
    public static final AbstractC10117u f7920d = m30938a(BitSet.class, f7919c);

    /* renamed from: e */
    public static final TypeAdapter<Boolean> f7921e = new TypeAdapter<Boolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.3
        /* renamed from: a */
        public void write(C10177c cVar, Boolean bool) throws IOException {
            cVar.mo13235a(bool);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public Boolean read(C10174a aVar) throws IOException {
            EnumC10176b F = aVar.mo13272F();
            if (F != EnumC10176b.NULL) {
                return F == EnumC10176b.STRING ? Boolean.valueOf(Boolean.parseBoolean(aVar.mo13274B())) : Boolean.valueOf(aVar.mo13246k());
            }
            aVar.mo13241p();
            return null;
        }
    };

    /* renamed from: f */
    public static final TypeAdapter<Boolean> f7922f = new TypeAdapter<Boolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.4
        /* renamed from: a */
        public void write(C10177c cVar, Boolean bool) throws IOException {
            cVar.mo13223d(bool == null ? C14247d.f31851f : bool.toString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public Boolean read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() != EnumC10176b.NULL) {
                return Boolean.valueOf(aVar.mo13274B());
            }
            aVar.mo13241p();
            return null;
        }
    };

    /* renamed from: g */
    public static final AbstractC10117u f7923g = m30937a(Boolean.TYPE, Boolean.class, f7921e);

    /* renamed from: h */
    public static final TypeAdapter<Number> f7924h = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.5
        /* renamed from: a */
        public void write(C10177c cVar, Number number) throws IOException {
            cVar.mo13234a(number);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public Number read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            try {
                return Byte.valueOf((byte) aVar.mo13244m());
            } catch (NumberFormatException e) {
                throw new C10113s(e);
            }
        }
    };

    /* renamed from: i */
    public static final AbstractC10117u f7925i = m30937a(Byte.TYPE, Byte.class, f7924h);

    /* renamed from: j */
    public static final TypeAdapter<Number> f7926j = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.6
        /* renamed from: a */
        public void write(C10177c cVar, Number number) throws IOException {
            cVar.mo13234a(number);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public Number read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            try {
                return Short.valueOf((short) aVar.mo13244m());
            } catch (NumberFormatException e) {
                throw new C10113s(e);
            }
        }
    };

    /* renamed from: k */
    public static final AbstractC10117u f7927k = m30937a(Short.TYPE, Short.class, f7926j);

    /* renamed from: l */
    public static final TypeAdapter<Number> f7928l = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.7
        /* renamed from: a */
        public void write(C10177c cVar, Number number) throws IOException {
            cVar.mo13234a(number);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public Number read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            try {
                return Integer.valueOf(aVar.mo13244m());
            } catch (NumberFormatException e) {
                throw new C10113s(e);
            }
        }
    };

    /* renamed from: m */
    public static final AbstractC10117u f7929m = m30937a(Integer.TYPE, Integer.class, f7928l);

    /* renamed from: n */
    public static final TypeAdapter<AtomicInteger> f7930n = new TypeAdapter<AtomicInteger>() { // from class: com.google.gson.internal.bind.TypeAdapters.8
        /* renamed from: a */
        public void write(C10177c cVar, AtomicInteger atomicInteger) throws IOException {
            cVar.mo13218g(atomicInteger.get());
        }

        @Override // com.google.gson.TypeAdapter
        public AtomicInteger read(C10174a aVar) throws IOException {
            try {
                return new AtomicInteger(aVar.mo13244m());
            } catch (NumberFormatException e) {
                throw new C10113s(e);
            }
        }
    }.nullSafe();

    /* renamed from: o */
    public static final AbstractC10117u f7931o = m30938a(AtomicInteger.class, f7930n);

    /* renamed from: p */
    public static final TypeAdapter<AtomicBoolean> f7932p = new TypeAdapter<AtomicBoolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.9
        /* renamed from: a */
        public void write(C10177c cVar, AtomicBoolean atomicBoolean) throws IOException {
            cVar.mo13222d(atomicBoolean.get());
        }

        @Override // com.google.gson.TypeAdapter
        public AtomicBoolean read(C10174a aVar) throws IOException {
            return new AtomicBoolean(aVar.mo13246k());
        }
    }.nullSafe();

    /* renamed from: q */
    public static final AbstractC10117u f7933q = m30938a(AtomicBoolean.class, f7932p);

    /* renamed from: r */
    public static final TypeAdapter<AtomicIntegerArray> f7934r = new TypeAdapter<AtomicIntegerArray>() { // from class: com.google.gson.internal.bind.TypeAdapters.10
        /* renamed from: a */
        public void write(C10177c cVar, AtomicIntegerArray atomicIntegerArray) throws IOException {
            cVar.mo13227c();
            int length = atomicIntegerArray.length();
            for (int i = 0; i < length; i++) {
                cVar.mo13218g(atomicIntegerArray.get(i));
            }
            cVar.mo13221e();
        }

        @Override // com.google.gson.TypeAdapter
        public AtomicIntegerArray read(C10174a aVar) throws IOException {
            ArrayList arrayList = new ArrayList();
            aVar.mo13265a();
            while (aVar.mo13249h()) {
                try {
                    arrayList.add(Integer.valueOf(aVar.mo13244m()));
                } catch (NumberFormatException e) {
                    throw new C10113s(e);
                }
            }
            aVar.mo13251f();
            int size = arrayList.size();
            AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
            for (int i = 0; i < size; i++) {
                atomicIntegerArray.set(i, ((Integer) arrayList.get(i)).intValue());
            }
            return atomicIntegerArray;
        }
    }.nullSafe();

    /* renamed from: s */
    public static final AbstractC10117u f7935s = m30938a(AtomicIntegerArray.class, f7934r);

    /* renamed from: t */
    public static final TypeAdapter<Number> f7936t = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.11
        /* renamed from: a */
        public void write(C10177c cVar, Number number) throws IOException {
            cVar.mo13234a(number);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public Number read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            try {
                return Long.valueOf(aVar.mo13243n());
            } catch (NumberFormatException e) {
                throw new C10113s(e);
            }
        }
    };

    /* renamed from: u */
    public static final TypeAdapter<Number> f7937u = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.12
        /* renamed from: a */
        public void write(C10177c cVar, Number number) throws IOException {
            cVar.mo13234a(number);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public Number read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() != EnumC10176b.NULL) {
                return Float.valueOf((float) aVar.mo13245l());
            }
            aVar.mo13241p();
            return null;
        }
    };

    /* renamed from: v */
    public static final TypeAdapter<Number> f7938v = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.13
        /* renamed from: a */
        public void write(C10177c cVar, Number number) throws IOException {
            cVar.mo13234a(number);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public Number read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() != EnumC10176b.NULL) {
                return Double.valueOf(aVar.mo13245l());
            }
            aVar.mo13241p();
            return null;
        }
    };

    /* renamed from: w */
    public static final TypeAdapter<Number> f7939w = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.14
        /* renamed from: a */
        public void write(C10177c cVar, Number number) throws IOException {
            cVar.mo13234a(number);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public Number read(C10174a aVar) throws IOException {
            EnumC10176b F = aVar.mo13272F();
            int i = C3735a.f7960a[F.ordinal()];
            if (i == 1 || i == 3) {
                return new C10145f(aVar.mo13274B());
            }
            if (i == 4) {
                aVar.mo13241p();
                return null;
            }
            throw new C10113s("Expecting number, got: " + F);
        }
    };

    /* renamed from: x */
    public static final AbstractC10117u f7940x = m30938a(Number.class, f7939w);

    /* renamed from: y */
    public static final TypeAdapter<Character> f7941y = new TypeAdapter<Character>() { // from class: com.google.gson.internal.bind.TypeAdapters.15
        /* renamed from: a */
        public void write(C10177c cVar, Character ch) throws IOException {
            cVar.mo13223d(ch == null ? null : String.valueOf(ch));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public Character read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            String B = aVar.mo13274B();
            if (B.length() == 1) {
                return Character.valueOf(B.charAt(0));
            }
            throw new C10113s("Expecting character, got: " + B);
        }
    };

    /* renamed from: z */
    public static final AbstractC10117u f7942z = m30937a(Character.TYPE, Character.class, f7941y);

    /* renamed from: A */
    public static final TypeAdapter<String> f7891A = new TypeAdapter<String>() { // from class: com.google.gson.internal.bind.TypeAdapters.16
        /* renamed from: a */
        public void write(C10177c cVar, String str) throws IOException {
            cVar.mo13223d(str);
        }

        @Override // com.google.gson.TypeAdapter
        public String read(C10174a aVar) throws IOException {
            EnumC10176b F = aVar.mo13272F();
            if (F != EnumC10176b.NULL) {
                return F == EnumC10176b.BOOLEAN ? Boolean.toString(aVar.mo13246k()) : aVar.mo13274B();
            }
            aVar.mo13241p();
            return null;
        }
    };

    /* renamed from: B */
    public static final TypeAdapter<BigDecimal> f7892B = new TypeAdapter<BigDecimal>() { // from class: com.google.gson.internal.bind.TypeAdapters.17
        /* renamed from: a */
        public void write(C10177c cVar, BigDecimal bigDecimal) throws IOException {
            cVar.mo13234a(bigDecimal);
        }

        @Override // com.google.gson.TypeAdapter
        public BigDecimal read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            try {
                return new BigDecimal(aVar.mo13274B());
            } catch (NumberFormatException e) {
                throw new C10113s(e);
            }
        }
    };

    /* renamed from: C */
    public static final TypeAdapter<BigInteger> f7893C = new TypeAdapter<BigInteger>() { // from class: com.google.gson.internal.bind.TypeAdapters.18
        /* renamed from: a */
        public void write(C10177c cVar, BigInteger bigInteger) throws IOException {
            cVar.mo13234a(bigInteger);
        }

        @Override // com.google.gson.TypeAdapter
        public BigInteger read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            try {
                return new BigInteger(aVar.mo13274B());
            } catch (NumberFormatException e) {
                throw new C10113s(e);
            }
        }
    };

    /* renamed from: D */
    public static final AbstractC10117u f7894D = m30938a(String.class, f7891A);

    /* renamed from: E */
    public static final TypeAdapter<StringBuilder> f7895E = new TypeAdapter<StringBuilder>() { // from class: com.google.gson.internal.bind.TypeAdapters.19
        /* renamed from: a */
        public void write(C10177c cVar, StringBuilder sb) throws IOException {
            cVar.mo13223d(sb == null ? null : sb.toString());
        }

        @Override // com.google.gson.TypeAdapter
        public StringBuilder read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() != EnumC10176b.NULL) {
                return new StringBuilder(aVar.mo13274B());
            }
            aVar.mo13241p();
            return null;
        }
    };

    /* renamed from: F */
    public static final AbstractC10117u f7896F = m30938a(StringBuilder.class, f7895E);

    /* renamed from: G */
    public static final TypeAdapter<StringBuffer> f7897G = new TypeAdapter<StringBuffer>() { // from class: com.google.gson.internal.bind.TypeAdapters.20
        /* renamed from: a */
        public void write(C10177c cVar, StringBuffer stringBuffer) throws IOException {
            cVar.mo13223d(stringBuffer == null ? null : stringBuffer.toString());
        }

        @Override // com.google.gson.TypeAdapter
        public StringBuffer read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() != EnumC10176b.NULL) {
                return new StringBuffer(aVar.mo13274B());
            }
            aVar.mo13241p();
            return null;
        }
    };

    /* renamed from: H */
    public static final AbstractC10117u f7898H = m30938a(StringBuffer.class, f7897G);

    /* renamed from: I */
    public static final TypeAdapter<URL> f7899I = new TypeAdapter<URL>() { // from class: com.google.gson.internal.bind.TypeAdapters.21
        /* renamed from: a */
        public void write(C10177c cVar, URL url) throws IOException {
            cVar.mo13223d(url == null ? null : url.toExternalForm());
        }

        @Override // com.google.gson.TypeAdapter
        public URL read(C10174a aVar) throws IOException {
            EnumC10176b F = aVar.mo13272F();
            URL url = null;
            if (F == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            String B = aVar.mo13274B();
            if (!C14247d.f31851f.equals(B)) {
                url = new URL(B);
            }
            return url;
        }
    };

    /* renamed from: J */
    public static final AbstractC10117u f7900J = m30938a(URL.class, f7899I);

    /* renamed from: K */
    public static final TypeAdapter<URI> f7901K = new TypeAdapter<URI>() { // from class: com.google.gson.internal.bind.TypeAdapters.22
        /* renamed from: a */
        public void write(C10177c cVar, URI uri) throws IOException {
            cVar.mo13223d(uri == null ? null : uri.toASCIIString());
        }

        @Override // com.google.gson.TypeAdapter
        public URI read(C10174a aVar) throws IOException {
            EnumC10176b F = aVar.mo13272F();
            URI uri = null;
            if (F == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            try {
                String B = aVar.mo13274B();
                if (!C14247d.f31851f.equals(B)) {
                    uri = new URI(B);
                }
                return uri;
            } catch (URISyntaxException e) {
                throw new C10105k(e);
            }
        }
    };

    /* renamed from: L */
    public static final AbstractC10117u f7902L = m30938a(URI.class, f7901K);

    /* renamed from: M */
    public static final TypeAdapter<InetAddress> f7903M = new TypeAdapter<InetAddress>() { // from class: com.google.gson.internal.bind.TypeAdapters.23
        /* renamed from: a */
        public void write(C10177c cVar, InetAddress inetAddress) throws IOException {
            cVar.mo13223d(inetAddress == null ? null : inetAddress.getHostAddress());
        }

        @Override // com.google.gson.TypeAdapter
        public InetAddress read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() != EnumC10176b.NULL) {
                return InetAddress.getByName(aVar.mo13274B());
            }
            aVar.mo13241p();
            return null;
        }
    };

    /* renamed from: N */
    public static final AbstractC10117u f7904N = m30936b(InetAddress.class, f7903M);

    /* renamed from: O */
    public static final TypeAdapter<UUID> f7905O = new TypeAdapter<UUID>() { // from class: com.google.gson.internal.bind.TypeAdapters.24
        /* renamed from: a */
        public void write(C10177c cVar, UUID uuid) throws IOException {
            cVar.mo13223d(uuid == null ? null : uuid.toString());
        }

        @Override // com.google.gson.TypeAdapter
        public UUID read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() != EnumC10176b.NULL) {
                return UUID.fromString(aVar.mo13274B());
            }
            aVar.mo13241p();
            return null;
        }
    };

    /* renamed from: P */
    public static final AbstractC10117u f7906P = m30938a(UUID.class, f7905O);

    /* renamed from: Q */
    public static final TypeAdapter<Currency> f7907Q = new TypeAdapter<Currency>() { // from class: com.google.gson.internal.bind.TypeAdapters.25
        /* renamed from: a */
        public void write(C10177c cVar, Currency currency) throws IOException {
            cVar.mo13223d(currency.getCurrencyCode());
        }

        @Override // com.google.gson.TypeAdapter
        public Currency read(C10174a aVar) throws IOException {
            return Currency.getInstance(aVar.mo13274B());
        }
    }.nullSafe();

    /* renamed from: R */
    public static final AbstractC10117u f7908R = m30938a(Currency.class, f7907Q);

    /* renamed from: S */
    public static final AbstractC10117u f7909S = new AbstractC10117u() { // from class: com.google.gson.internal.bind.TypeAdapters.26
        @Override // p081h.p203i.p384e.AbstractC10117u
        public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar) {
            if (aVar.m13280a() != Timestamp.class) {
                return null;
            }
            final TypeAdapter<T> a = gson.m30989a((Class) Date.class);
            return (TypeAdapter<T>) new TypeAdapter<Timestamp>(this) { // from class: com.google.gson.internal.bind.TypeAdapters.26.1
                /* renamed from: a */
                public void write(C10177c cVar, Timestamp timestamp) throws IOException {
                    a.write(cVar, timestamp);
                }

                @Override // com.google.gson.TypeAdapter
                public Timestamp read(C10174a aVar2) throws IOException {
                    Date date = (Date) a.read(aVar2);
                    return date != null ? new Timestamp(date.getTime()) : null;
                }
            };
        }
    };

    /* renamed from: T */
    public static final TypeAdapter<Calendar> f7910T = new TypeAdapter<Calendar>() { // from class: com.google.gson.internal.bind.TypeAdapters.27
        /* renamed from: a */
        public void write(C10177c cVar, Calendar calendar) throws IOException {
            if (calendar == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            cVar.mo13233a(TypeAdapters.C163827.YEAR);
            cVar.mo13218g(calendar.get(1));
            cVar.mo13233a(TypeAdapters.C163827.MONTH);
            cVar.mo13218g(calendar.get(2));
            cVar.mo13233a(TypeAdapters.C163827.DAY_OF_MONTH);
            cVar.mo13218g(calendar.get(5));
            cVar.mo13233a(TypeAdapters.C163827.HOUR_OF_DAY);
            cVar.mo13218g(calendar.get(11));
            cVar.mo13233a(TypeAdapters.C163827.MINUTE);
            cVar.mo13218g(calendar.get(12));
            cVar.mo13233a(TypeAdapters.C163827.SECOND);
            cVar.mo13218g(calendar.get(13));
            cVar.mo13220f();
        }

        @Override // com.google.gson.TypeAdapter
        public Calendar read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            aVar.mo13260b();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (aVar.mo13272F() != EnumC10176b.END_OBJECT) {
                String o = aVar.mo13242o();
                int m = aVar.mo13244m();
                if (TypeAdapters.C163827.YEAR.equals(o)) {
                    i = m;
                } else if (TypeAdapters.C163827.MONTH.equals(o)) {
                    i2 = m;
                } else if (TypeAdapters.C163827.DAY_OF_MONTH.equals(o)) {
                    i3 = m;
                } else if (TypeAdapters.C163827.HOUR_OF_DAY.equals(o)) {
                    i4 = m;
                } else if (TypeAdapters.C163827.MINUTE.equals(o)) {
                    i5 = m;
                } else if (TypeAdapters.C163827.SECOND.equals(o)) {
                    i6 = m;
                }
            }
            aVar.mo13250g();
            return new GregorianCalendar(i, i2, i3, i4, i5, i6);
        }
    };

    /* renamed from: U */
    public static final AbstractC10117u f7911U = m30935b(Calendar.class, GregorianCalendar.class, f7910T);

    /* renamed from: V */
    public static final TypeAdapter<Locale> f7912V = new TypeAdapter<Locale>() { // from class: com.google.gson.internal.bind.TypeAdapters.28
        /* renamed from: a */
        public void write(C10177c cVar, Locale locale) throws IOException {
            cVar.mo13223d(locale == null ? null : locale.toString());
        }

        @Override // com.google.gson.TypeAdapter
        public Locale read(C10174a aVar) throws IOException {
            String str = null;
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(aVar.mo13274B(), "_");
            String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            if (stringTokenizer.hasMoreElements()) {
                str = stringTokenizer.nextToken();
            }
            return (nextToken2 == null && str == null) ? new Locale(nextToken) : str == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, str);
        }
    };

    /* renamed from: W */
    public static final AbstractC10117u f7913W = m30938a(Locale.class, f7912V);

    /* renamed from: X */
    public static final TypeAdapter<AbstractC10104j> f7914X = new TypeAdapter<AbstractC10104j>() { // from class: com.google.gson.internal.bind.TypeAdapters.29
        /* renamed from: a */
        public void write(C10177c cVar, AbstractC10104j jVar) throws IOException {
            if (jVar == null || jVar.m13376t()) {
                cVar.mo13214k();
            } else if (jVar.m13374v()) {
                C10110p q = jVar.m13378q();
                if (q.m13364D()) {
                    cVar.mo13234a(q.m13366A());
                } else if (q.m13365C()) {
                    cVar.mo13222d(q.m13360w());
                } else {
                    cVar.mo13223d(q.mo13361r());
                }
            } else if (jVar.m13377s()) {
                cVar.mo13227c();
                Iterator<AbstractC10104j> it = jVar.m13380b().iterator();
                while (it.hasNext()) {
                    write(cVar, it.next());
                }
                cVar.mo13221e();
            } else if (jVar.m13375u()) {
                cVar.mo13224d();
                for (Map.Entry<String, AbstractC10104j> entry : jVar.m13379c().m13371w()) {
                    cVar.mo13233a(entry.getKey());
                    write(cVar, entry.getValue());
                }
                cVar.mo13220f();
            } else {
                throw new IllegalArgumentException("Couldn't write " + jVar.getClass());
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public AbstractC10104j read(C10174a aVar) throws IOException {
            switch (C3735a.f7960a[aVar.mo13272F().ordinal()]) {
                case 1:
                    return new C10110p(new C10145f(aVar.mo13274B()));
                case 2:
                    return new C10110p(Boolean.valueOf(aVar.mo13246k()));
                case 3:
                    return new C10110p(aVar.mo13274B());
                case 4:
                    aVar.mo13241p();
                    return C10106l.f22832a;
                case 5:
                    C10101g gVar = new C10101g();
                    aVar.mo13265a();
                    while (aVar.mo13249h()) {
                        gVar.m13382a(read(aVar));
                    }
                    aVar.mo13251f();
                    return gVar;
                case 6:
                    C10107m mVar = new C10107m();
                    aVar.mo13260b();
                    while (aVar.mo13249h()) {
                        mVar.m13372a(aVar.mo13242o(), read(aVar));
                    }
                    aVar.mo13250g();
                    return mVar;
                default:
                    throw new IllegalArgumentException();
            }
        }
    };

    /* renamed from: Y */
    public static final AbstractC10117u f7915Y = m30936b(AbstractC10104j.class, f7914X);

    /* renamed from: Z */
    public static final AbstractC10117u f7916Z = new AbstractC10117u() { // from class: com.google.gson.internal.bind.TypeAdapters.30
        @Override // p081h.p203i.p384e.AbstractC10117u
        public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar) {
            Class<? super T> a = aVar.m13280a();
            if (!Enum.class.isAssignableFrom(a) || a == Enum.class) {
                return null;
            }
            Class<? super Object> cls = a;
            if (!a.isEnum()) {
                cls = a.getSuperclass();
            }
            return new EnumTypeAdapter(cls);
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter.class */
    public static final class EnumTypeAdapter<T extends Enum<T>> extends TypeAdapter<T> {

        /* renamed from: a */
        public final Map<String, T> f7958a = new HashMap();

        /* renamed from: b */
        public final Map<T, String> f7959b = new HashMap();

        public EnumTypeAdapter(Class<T> cls) {
            T[] enumConstants;
            try {
                for (T t : cls.getEnumConstants()) {
                    String name = t.name();
                    AbstractC10120c cVar = (AbstractC10120c) cls.getField(name).getAnnotation(AbstractC10120c.class);
                    if (cVar != null) {
                        name = cVar.value();
                        for (String str : cVar.alternate()) {
                            this.f7958a.put(str, t);
                        }
                    }
                    this.f7958a.put(name, t);
                    this.f7959b.put(t, name);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError(e);
            }
        }

        /* renamed from: a */
        public void write(C10177c cVar, T t) throws IOException {
            cVar.mo13223d(t == null ? null : this.f7959b.get(t));
        }

        @Override // com.google.gson.TypeAdapter
        public T read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() != EnumC10176b.NULL) {
                return this.f7958a.get(aVar.mo13274B());
            }
            aVar.mo13241p();
            return null;
        }
    }

    /* renamed from: com.google.gson.internal.bind.TypeAdapters$a */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/TypeAdapters$a.class */
    public static /* synthetic */ class C3735a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f7960a = new int[EnumC10176b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007d -> B:51:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0081 -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0085 -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0089 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008d -> B:49:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0091 -> B:43:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0095 -> B:39:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0099 -> B:33:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009d -> B:47:0x0070). Please submit an issue!!! */
        static {
            try {
                f7960a[EnumC10176b.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f7960a[EnumC10176b.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f7960a[EnumC10176b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f7960a[EnumC10176b.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f7960a[EnumC10176b.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f7960a[EnumC10176b.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f7960a[EnumC10176b.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f7960a[EnumC10176b.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f7960a[EnumC10176b.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f7960a[EnumC10176b.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* renamed from: a */
    public static <TT> AbstractC10117u m30939a(final C10173a<TT> aVar, final TypeAdapter<TT> typeAdapter) {
        return new AbstractC10117u() { // from class: com.google.gson.internal.bind.TypeAdapters.31
            @Override // p081h.p203i.p384e.AbstractC10117u
            public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar2) {
                return aVar2.equals(C10173a.this) ? typeAdapter : null;
            }
        };
    }

    /* renamed from: a */
    public static <TT> AbstractC10117u m30938a(final Class<TT> cls, final TypeAdapter<TT> typeAdapter) {
        return new AbstractC10117u() { // from class: com.google.gson.internal.bind.TypeAdapters.32
            @Override // p081h.p203i.p384e.AbstractC10117u
            public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar) {
                return aVar.m13280a() == cls ? typeAdapter : null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    /* renamed from: a */
    public static <TT> AbstractC10117u m30937a(final Class<TT> cls, final Class<TT> cls2, final TypeAdapter<? super TT> typeAdapter) {
        return new AbstractC10117u() { // from class: com.google.gson.internal.bind.TypeAdapters.33
            @Override // p081h.p203i.p384e.AbstractC10117u
            public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar) {
                Class<? super T> a = aVar.m13280a();
                return (a == cls || a == cls2) ? typeAdapter : null;
            }

            public String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    /* renamed from: b */
    public static <T1> AbstractC10117u m30936b(final Class<T1> cls, final TypeAdapter<T1> typeAdapter) {
        return new AbstractC10117u() { // from class: com.google.gson.internal.bind.TypeAdapters.35
            @Override // p081h.p203i.p384e.AbstractC10117u
            public <T2> TypeAdapter<T2> create(Gson gson, C10173a<T2> aVar) {
                final Class<? super T2> a = aVar.m13280a();
                if (!cls.isAssignableFrom(a)) {
                    return null;
                }
                return (TypeAdapter<T2>) new TypeAdapter<T1>() { // from class: com.google.gson.internal.bind.TypeAdapters.35.1
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, T1] */
                    /* JADX WARN: Unknown variable types count: 1 */
                    @Override // com.google.gson.TypeAdapter
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public T1 read(p081h.p203i.p384e.p391y.C10174a r5) throws java.io.IOException {
                        /*
                            r4 = this;
                            r0 = r4
                            com.google.gson.internal.bind.TypeAdapters$35 r0 = com.google.gson.internal.bind.TypeAdapters.C372735.this
                            com.google.gson.TypeAdapter r0 = r5
                            r1 = r5
                            java.lang.Object r0 = r0.read(r1)
                            r6 = r0
                            r0 = r6
                            if (r0 == 0) goto L_0x0058
                            r0 = r4
                            java.lang.Class r0 = r5
                            r1 = r6
                            boolean r0 = r0.isInstance(r1)
                            if (r0 == 0) goto L_0x001e
                            goto L_0x0058
                        L_0x001e:
                            java.lang.StringBuilder r0 = new java.lang.StringBuilder
                            r1 = r0
                            r1.<init>()
                            r5 = r0
                            r0 = r5
                            java.lang.String r1 = "Expected a "
                            java.lang.StringBuilder r0 = r0.append(r1)
                            r0 = r5
                            r1 = r4
                            java.lang.Class r1 = r5
                            java.lang.String r1 = r1.getName()
                            java.lang.StringBuilder r0 = r0.append(r1)
                            r0 = r5
                            java.lang.String r1 = " but was "
                            java.lang.StringBuilder r0 = r0.append(r1)
                            r0 = r5
                            r1 = r6
                            java.lang.Class r1 = r1.getClass()
                            java.lang.String r1 = r1.getName()
                            java.lang.StringBuilder r0 = r0.append(r1)
                            h.i.e.s r0 = new h.i.e.s
                            r1 = r0
                            r2 = r5
                            java.lang.String r2 = r2.toString()
                            r1.<init>(r2)
                            throw r0
                        L_0x0058:
                            r0 = r6
                            return r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.TypeAdapters.C372735.C37281.read(h.i.e.y.a):java.lang.Object");
                    }

                    @Override // com.google.gson.TypeAdapter
                    public void write(C10177c cVar, T1 t1) throws IOException {
                        typeAdapter.write(cVar, t1);
                    }
                };
            }

            public String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    /* renamed from: b */
    public static <TT> AbstractC10117u m30935b(final Class<TT> cls, final Class<? extends TT> cls2, final TypeAdapter<? super TT> typeAdapter) {
        return new AbstractC10117u() { // from class: com.google.gson.internal.bind.TypeAdapters.34
            @Override // p081h.p203i.p384e.AbstractC10117u
            public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar) {
                Class<? super T> a = aVar.m13280a();
                return (a == cls || a == cls2) ? typeAdapter : null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + "+" + cls2.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }
}
