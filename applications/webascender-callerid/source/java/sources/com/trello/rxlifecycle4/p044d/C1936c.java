package com.trello.rxlifecycle4.p044d;

import com.trello.rxlifecycle4.C1933c;
import com.trello.rxlifecycle4.b;
import i.c.b0.b.v;
import p067i.p095c.p097b0.p103d.AbstractC2181o;
/* renamed from: com.trello.rxlifecycle4.d.c */
/* loaded from: classes2-dex2jar.jar:com/trello/rxlifecycle4/d/c.class */
public class C1936c {

    /* renamed from: a */
    private static final AbstractC2181o<EnumC1934a, EnumC1934a> f5250a = new a();

    /* renamed from: b */
    private static final AbstractC2181o<EnumC1935b, EnumC1935b> f5251b = new b();

    /* renamed from: com.trello.rxlifecycle4.d.c$c */
    /* loaded from: classes2-dex2jar.jar:com/trello/rxlifecycle4/d/c$c.class */
    static /* synthetic */ class C1937c {

        /* renamed from: a */
        static final /* synthetic */ int[] f5252a;

        /* renamed from: b */
        static final /* synthetic */ int[] f5253b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c9 -> B:54:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00cd -> B:66:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d1 -> B:62:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d5 -> B:74:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d9 -> B:70:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00dd -> B:82:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e1 -> B:78:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e5 -> B:56:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e9 -> B:52:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00ed -> B:22:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f1 -> B:60:0x0090). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f5 -> B:72:0x009b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00f9 -> B:68:0x00a6). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00fd -> B:80:0x00b1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0101 -> B:76:0x00bc). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC1935b.values().length];
            f5253b = iArr;
            try {
                iArr[EnumC1935b.ATTACH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5253b[EnumC1935b.CREATE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5253b[EnumC1935b.CREATE_VIEW.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5253b[EnumC1935b.START.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f5253b[EnumC1935b.RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f5253b[EnumC1935b.PAUSE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f5253b[EnumC1935b.STOP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f5253b[EnumC1935b.DESTROY_VIEW.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f5253b[EnumC1935b.DESTROY.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f5253b[EnumC1935b.DETACH.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            int[] iArr2 = new int[EnumC1934a.values().length];
            f5252a = iArr2;
            try {
                iArr2[EnumC1934a.CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f5252a[EnumC1934a.START.ordinal()] = 2;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f5252a[EnumC1934a.RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f5252a[EnumC1934a.PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f5252a[EnumC1934a.STOP.ordinal()] = 5;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f5252a[EnumC1934a.DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e16) {
            }
        }
    }

    /* renamed from: a */
    public static <T> b<T> m601a(v<EnumC1934a> vVar) {
        return C1933c.m603b(vVar, f5250a);
    }

    /* renamed from: b */
    public static <T> b<T> m600b(v<EnumC1935b> vVar) {
        return C1933c.m603b(vVar, f5251b);
    }
}
