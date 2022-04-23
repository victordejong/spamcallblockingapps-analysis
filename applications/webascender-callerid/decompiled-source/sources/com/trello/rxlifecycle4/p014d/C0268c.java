package com.trello.rxlifecycle4.p014d;

import com.trello.rxlifecycle4.C0265c;
import com.trello.rxlifecycle4.b;
import i.c.b0.b.v;
import p037i.p065c.p067b0.p073d.AbstractC0513o;
/* renamed from: com.trello.rxlifecycle4.d.c */
/* loaded from: classes2-dex2jar.jar:com/trello/rxlifecycle4/d/c.class */
public class C0268c {

    /* renamed from: a */
    private static final AbstractC0513o<EnumC0266a, EnumC0266a> f571a = new a();

    /* renamed from: b */
    private static final AbstractC0513o<EnumC0267b, EnumC0267b> f572b = new b();

    /* renamed from: com.trello.rxlifecycle4.d.c$c */
    /* loaded from: classes2-dex2jar.jar:com/trello/rxlifecycle4/d/c$c.class */
    static /* synthetic */ class C0269c {

        /* renamed from: a */
        static final /* synthetic */ int[] f573a;

        /* renamed from: b */
        static final /* synthetic */ int[] f574b;

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
            int[] iArr = new int[EnumC0267b.values().length];
            f574b = iArr;
            try {
                iArr[EnumC0267b.ATTACH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f574b[EnumC0267b.CREATE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f574b[EnumC0267b.CREATE_VIEW.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f574b[EnumC0267b.START.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f574b[EnumC0267b.RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f574b[EnumC0267b.PAUSE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f574b[EnumC0267b.STOP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f574b[EnumC0267b.DESTROY_VIEW.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f574b[EnumC0267b.DESTROY.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f574b[EnumC0267b.DETACH.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            int[] iArr2 = new int[EnumC0266a.values().length];
            f573a = iArr2;
            try {
                iArr2[EnumC0266a.CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f573a[EnumC0266a.START.ordinal()] = 2;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f573a[EnumC0266a.RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f573a[EnumC0266a.PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f573a[EnumC0266a.STOP.ordinal()] = 5;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f573a[EnumC0266a.DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError e16) {
            }
        }
    }

    /* renamed from: a */
    public static <T> b<T> m601a(v<EnumC0266a> vVar) {
        return C0265c.m603b(vVar, f571a);
    }

    /* renamed from: b */
    public static <T> b<T> m600b(v<EnumC0267b> vVar) {
        return C0265c.m603b(vVar, f572b);
    }
}
