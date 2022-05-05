package androidx.core.p035e;

import java.util.Locale;
/* renamed from: androidx.core.e.a */
/* loaded from: classes-dex2jar.jar:androidx/core/e/a.class */
public final class C0663a {

    /* renamed from: f */
    private final boolean f2964f;

    /* renamed from: g */
    private final int f2965g;

    /* renamed from: h */
    private final AbstractC0670d f2966h;

    /* renamed from: a */
    static final AbstractC0670d f2959a = C0671e.f2993c;

    /* renamed from: d */
    private static final String f2962d = Character.toString(8206);

    /* renamed from: e */
    private static final String f2963e = Character.toString(8207);

    /* renamed from: b */
    static final C0663a f2960b = new C0663a(false, 2, f2959a);

    /* renamed from: c */
    static final C0663a f2961c = new C0663a(true, 2, f2959a);

    /* renamed from: androidx.core.e.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/a$a.class */
    public static final class C0664a {

        /* renamed from: a */
        private boolean f2967a = C0663a.m8581a(Locale.getDefault());

        /* renamed from: c */
        private AbstractC0670d f2969c = C0663a.f2959a;

        /* renamed from: b */
        private int f2968b = 2;

        /* renamed from: a */
        public final C0663a m8578a() {
            return (this.f2968b == 2 && this.f2969c == C0663a.f2959a) ? this.f2967a ? C0663a.f2961c : C0663a.f2960b : new C0663a(this.f2967a, this.f2968b, this.f2969c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.e.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/a$b.class */
    public static final class C0665b {

        /* renamed from: a */
        private static final byte[] f2970a = new byte[1792];

        /* renamed from: b */
        private final CharSequence f2971b;

        /* renamed from: c */
        private final boolean f2972c = false;

        /* renamed from: d */
        private final int f2973d;

        /* renamed from: e */
        private int f2974e;

        /* renamed from: f */
        private char f2975f;

        static {
            for (int i = 0; i < 1792; i++) {
                f2970a[i] = Character.getDirectionality(i);
            }
        }

        C0665b(CharSequence charSequence) {
            this.f2971b = charSequence;
            this.f2973d = charSequence.length();
        }

        /* renamed from: a */
        private static byte m8576a(char c) {
            return c < 1792 ? f2970a[c] : Character.getDirectionality(c);
        }

        /* renamed from: c */
        private byte m8574c() {
            this.f2975f = this.f2971b.charAt(this.f2974e - 1);
            if (Character.isLowSurrogate(this.f2975f)) {
                int codePointBefore = Character.codePointBefore(this.f2971b, this.f2974e);
                this.f2974e -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.f2974e--;
            byte a = m8576a(this.f2975f);
            byte b = a;
            if (this.f2972c) {
                char c = this.f2975f;
                if (c == '>') {
                    b = m8573d();
                } else {
                    b = a;
                    if (c == ';') {
                        b = m8572e();
                    }
                }
            }
            return b;
        }

        /* renamed from: d */
        private byte m8573d() {
            char charAt;
            int i = this.f2974e;
            while (true) {
                int i2 = this.f2974e;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f2971b;
                int i3 = i2 - 1;
                this.f2974e = i3;
                this.f2975f = charSequence.charAt(i3);
                char c = this.f2975f;
                if (c != '<') {
                    if (c == '>') {
                        break;
                    } else if (c == '\"' || c == '\'') {
                        char c2 = this.f2975f;
                        do {
                            int i4 = this.f2974e;
                            if (i4 > 0) {
                                CharSequence charSequence2 = this.f2971b;
                                int i5 = i4 - 1;
                                this.f2974e = i5;
                                charAt = charSequence2.charAt(i5);
                                this.f2975f = charAt;
                            }
                        } while (charAt != c2);
                    }
                } else {
                    return (byte) 12;
                }
            }
            this.f2974e = i;
            this.f2975f = (char) 62;
            return (byte) 13;
        }

        /* renamed from: e */
        private byte m8572e() {
            char c;
            int i = this.f2974e;
            do {
                int i2 = this.f2974e;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f2971b;
                int i3 = i2 - 1;
                this.f2974e = i3;
                this.f2975f = charSequence.charAt(i3);
                c = this.f2975f;
                if (c == '&') {
                    return (byte) 12;
                }
            } while (c != ';');
            this.f2974e = i;
            this.f2975f = (char) 59;
            return (byte) 13;
        }

        /* JADX WARN: Code restructure failed: missing block: B:58:0x01e5, code lost:
            if (r5 != 0) goto L_0x01ea;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x01e8, code lost:
            return 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x01eb, code lost:
            if (r6 == 0) goto L_0x01f0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x01ef, code lost:
            return r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x01f4, code lost:
            if (r4.f2974e <= 0) goto L_0x0239;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x01fb, code lost:
            switch(m8574c()) {
                case 14: goto L_0x022c;
                case 15: goto L_0x022c;
                case 16: goto L_0x0225;
                case 17: goto L_0x0225;
                case 18: goto L_0x021f;
                default: goto L_0x021c;
            };
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x021f, code lost:
            r7 = r7 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x0227, code lost:
            if (r5 != r7) goto L_0x0233;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x022a, code lost:
            return 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x022e, code lost:
            if (r5 != r7) goto L_0x0233;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x0231, code lost:
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x0233, code lost:
            r7 = r7 - 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0239, code lost:
            return 0;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final int m8577a() {
            /*
                Method dump skipped, instructions count: 571
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.p035e.C0663a.C0665b.m8577a():int");
        }

        /* renamed from: b */
        final int m8575b() {
            this.f2974e = this.f2973d;
            int i = 0;
            int i2 = 0;
            while (this.f2974e > 0) {
                byte c = m8574c();
                if (c != 0) {
                    if (c == 1 || c == 2) {
                        if (i2 == 0) {
                            return 1;
                        }
                        if (i == 0) {
                            i = i2;
                        }
                    } else if (c != 9) {
                        switch (c) {
                            case 14:
                            case 15:
                                if (i == i2) {
                                    return -1;
                                }
                                i2--;
                                break;
                            case 16:
                            case 17:
                                if (i == i2) {
                                    return 1;
                                }
                                i2--;
                                break;
                            case 18:
                                i2++;
                                break;
                            default:
                                if (i != 0) {
                                    break;
                                } else {
                                    i = i2;
                                    break;
                                }
                        }
                    } else {
                        continue;
                    }
                } else if (i2 == 0) {
                    return -1;
                } else {
                    if (i == 0) {
                        i = i2;
                    }
                }
            }
            return 0;
        }
    }

    C0663a(boolean z, int i, AbstractC0670d dVar) {
        this.f2964f = z;
        this.f2965g = i;
        this.f2966h = dVar;
    }

    /* renamed from: a */
    public static C0663a m8583a() {
        return new C0664a().m8578a();
    }

    /* renamed from: a */
    static boolean m8581a(Locale locale) {
        return C0678f.m8557a(locale) == 1;
    }

    /* renamed from: b */
    private static int m8580b(CharSequence charSequence) {
        return new C0665b(charSequence).m8575b();
    }

    /* renamed from: c */
    private static int m8579c(CharSequence charSequence) {
        return new C0665b(charSequence).m8577a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x012b, code lost:
        if (m8580b(r5) == (-1)) goto L_0x012e;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.CharSequence m8582a(java.lang.CharSequence r5) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.p035e.C0663a.m8582a(java.lang.CharSequence):java.lang.CharSequence");
    }
}
