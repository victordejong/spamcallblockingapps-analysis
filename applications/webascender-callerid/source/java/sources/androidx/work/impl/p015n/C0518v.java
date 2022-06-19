package androidx.work.impl.p015n;

import androidx.work.C0472d;
import androidx.work.EnumC0466a;
import androidx.work.EnumC0542n;
import androidx.work.EnumC0550v;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
/* renamed from: androidx.work.impl.n.v */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/n/v.class */
public class C0518v {

    /* renamed from: androidx.work.impl.n.v$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/v$a.class */
    static /* synthetic */ class C0519a {

        /* renamed from: a */
        static final /* synthetic */ int[] f2615a;

        /* renamed from: b */
        static final /* synthetic */ int[] f2616b;

        /* renamed from: c */
        static final /* synthetic */ int[] f2617c;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00ac -> B:56:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00b0 -> B:52:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b4 -> B:64:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b8 -> B:60:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00bc -> B:12:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c0 -> B:66:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c4 -> B:17:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c8 -> B:44:0x0073). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00cc -> B:54:0x007e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d0 -> B:50:0x0089). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d4 -> B:62:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00d8 -> B:58:0x009f). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0542n.values().length];
            f2617c = iArr;
            try {
                iArr[EnumC0542n.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2617c[EnumC0542n.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2617c[EnumC0542n.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2617c[EnumC0542n.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2617c[EnumC0542n.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            int[] iArr2 = new int[EnumC0466a.values().length];
            f2616b = iArr2;
            try {
                iArr2[EnumC0466a.EXPONENTIAL.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2616b[EnumC0466a.LINEAR.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr3 = new int[EnumC0550v.values().length];
            f2615a = iArr3;
            try {
                iArr3[EnumC0550v.ENQUEUED.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2615a[EnumC0550v.RUNNING.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f2615a[EnumC0550v.SUCCEEDED.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f2615a[EnumC0550v.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f2615a[EnumC0550v.BLOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f2615a[EnumC0550v.CANCELLED.ordinal()] = 6;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    /* renamed from: a */
    public static int m4378a(EnumC0466a enumC0466a) {
        int i = C0519a.f2616b[enumC0466a.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            throw new IllegalArgumentException("Could not convert " + enumC0466a + " to int");
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0090 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0085 -> B:32:0x0089). Please submit an issue!!! */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.work.C0472d m4377b(byte[] r4) {
        /*
            androidx.work.d r0 = new androidx.work.d
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r4
            if (r0 != 0) goto Le
            r0 = r5
            return r0
        Le:
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            r6 = r0
            java.io.ObjectInputStream r0 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L5c java.io.IOException -> L62
            r7 = r0
            r0 = r7
            r1 = r6
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L5c java.io.IOException -> L62
            r0 = r7
            r4 = r0
            r0 = r7
            int r0 = r0.readInt()     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L8b
            r8 = r0
        L28:
            r0 = r8
            if (r0 <= 0) goto L44
            r0 = r7
            r4 = r0
            r0 = r5
            r1 = r7
            java.lang.String r1 = r1.readUTF()     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L8b
            android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L8b
            r2 = r7
            boolean r2 = r2.readBoolean()     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L8b
            r0.m4513a(r1, r2)     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L8b
            int r8 = r8 + (-1)
            goto L28
        L44:
            r0 = r7
            r0.close()     // Catch: java.io.IOException -> L4b
            goto L50
        L4b:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
        L50:
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> L84
            goto L89
        L57:
            r9 = move-exception
            goto L66
        L5c:
            r7 = move-exception
            r0 = 0
            r4 = r0
            goto L8c
        L62:
            r9 = move-exception
            r0 = 0
            r7 = r0
        L66:
            r0 = r7
            r4 = r0
            r0 = r9
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L8b
            r0 = r7
            if (r0 == 0) goto L7d
            r0 = r7
            r0.close()     // Catch: java.io.IOException -> L78
            goto L7d
        L78:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
        L7d:
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> L84
            goto L89
        L84:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
        L89:
            r0 = r5
            return r0
        L8b:
            r7 = move-exception
        L8c:
            r0 = r4
            if (r0 == 0) goto L9c
            r0 = r4
            r0.close()     // Catch: java.io.IOException -> L97
            goto L9c
        L97:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
        L9c:
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> La3
            goto La8
        La3:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
        La8:
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.p015n.C0518v.m4377b(byte[]):androidx.work.d");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00bd -> B:36:0x00c1). Please submit an issue!!! */
    /* renamed from: c */
    public static byte[] m4376c(C0472d c0472d) {
        Throwable th;
        IOException e;
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2;
        if (c0472d.m4511c() == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream3 = null;
        try {
            try {
                try {
                    objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                } catch (IOException e2) {
                    e = e2;
                    objectOutputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        try {
            objectOutputStream2.writeInt(c0472d.m4511c());
            for (C0472d.C0473a c0473a : c0472d.m4512b()) {
                objectOutputStream2.writeUTF(c0473a.m4510a().toString());
                objectOutputStream2.writeBoolean(c0473a.m4509b());
            }
            try {
                objectOutputStream2.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            byteArrayOutputStream.close();
        } catch (IOException e5) {
            objectOutputStream = objectOutputStream2;
            e = e5;
            objectOutputStream3 = objectOutputStream;
            e.printStackTrace();
            if (objectOutputStream != null) {
                try {
                    objectOutputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream3 = objectOutputStream2;
            if (objectOutputStream3 != null) {
                try {
                    objectOutputStream3.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e8) {
                e8.printStackTrace();
            }
            throw th;
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: d */
    public static EnumC0466a m4375d(int i) {
        if (i != 0) {
            if (i == 1) {
                return EnumC0466a.LINEAR;
            }
            throw new IllegalArgumentException("Could not convert " + i + " to BackoffPolicy");
        }
        return EnumC0466a.EXPONENTIAL;
    }

    /* renamed from: e */
    public static EnumC0542n m4374e(int i) {
        if (i != 0) {
            if (i == 1) {
                return EnumC0542n.CONNECTED;
            }
            if (i == 2) {
                return EnumC0542n.UNMETERED;
            }
            if (i == 3) {
                return EnumC0542n.NOT_ROAMING;
            }
            if (i == 4) {
                return EnumC0542n.METERED;
            }
            throw new IllegalArgumentException("Could not convert " + i + " to NetworkType");
        }
        return EnumC0542n.NOT_REQUIRED;
    }

    /* renamed from: f */
    public static EnumC0550v m4373f(int i) {
        if (i != 0) {
            if (i == 1) {
                return EnumC0550v.RUNNING;
            }
            if (i == 2) {
                return EnumC0550v.SUCCEEDED;
            }
            if (i == 3) {
                return EnumC0550v.FAILED;
            }
            if (i == 4) {
                return EnumC0550v.BLOCKED;
            }
            if (i == 5) {
                return EnumC0550v.CANCELLED;
            }
            throw new IllegalArgumentException("Could not convert " + i + " to State");
        }
        return EnumC0550v.ENQUEUED;
    }

    /* renamed from: g */
    public static int m4372g(EnumC0542n enumC0542n) {
        int i = C0519a.f2617c[enumC0542n.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            if (i == 3) {
                return 2;
            }
            if (i == 4) {
                return 3;
            }
            if (i == 5) {
                return 4;
            }
            throw new IllegalArgumentException("Could not convert " + enumC0542n + " to int");
        }
        return 0;
    }

    /* renamed from: h */
    public static int m4371h(EnumC0550v enumC0550v) {
        switch (C0519a.f2615a[enumC0550v.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            default:
                throw new IllegalArgumentException("Could not convert " + enumC0550v + " to int");
        }
    }
}
