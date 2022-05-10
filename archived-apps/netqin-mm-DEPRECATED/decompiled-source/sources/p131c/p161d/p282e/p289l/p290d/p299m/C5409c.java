package p131c.p161d.p282e.p289l.p290d.p299m;

import android.app.ActivityManager;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p307q.C5451e;
/* renamed from: c.d.e.l.d.m.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/m/c.class */
public class C5409c {

    /* renamed from: a */
    public static final C5406a f18340a = C5406a.m23873a("0");

    /* renamed from: b */
    public static final C5406a f18341b = C5406a.m23873a("Unity");

    /* renamed from: a */
    public static int m23867a() {
        return CodedOutputStream.m7391b(1, f18340a) + 0 + CodedOutputStream.m7391b(2, f18340a) + CodedOutputStream.m7392b(3, 0L);
    }

    /* renamed from: a */
    public static int m23866a(int i, C5406a aVar, int i2, long j, long j2, boolean z, int i3, C5406a aVar2, C5406a aVar3) {
        int e = CodedOutputStream.m7378e(3, i);
        int i4 = 0;
        int b = aVar == null ? 0 : CodedOutputStream.m7391b(4, aVar);
        int g = CodedOutputStream.m7374g(5, i2);
        int b2 = CodedOutputStream.m7392b(6, j);
        int b3 = CodedOutputStream.m7392b(7, j2);
        int b4 = CodedOutputStream.m7390b(10, z);
        int g2 = CodedOutputStream.m7374g(12, i3);
        int b5 = aVar2 == null ? 0 : CodedOutputStream.m7391b(13, aVar2);
        if (aVar3 != null) {
            i4 = CodedOutputStream.m7391b(14, aVar3);
        }
        return e + 0 + b + g + b2 + b3 + b4 + g2 + b5 + i4;
    }

    /* renamed from: a */
    public static int m23865a(long j, String str, C5451e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i2, C5406a aVar, C5406a aVar2, Float f, int i3, boolean z, long j2, long j3, C5406a aVar3) {
        int b = CodedOutputStream.m7392b(1, j);
        int b2 = CodedOutputStream.m7391b(2, C5406a.m23873a(str));
        int a = m23858a(eVar, thread, stackTraceElementArr, threadArr, list, i, aVar, aVar2, map, runningAppProcessInfo, i2);
        int l = CodedOutputStream.m7369l(3);
        int j4 = CodedOutputStream.m7371j(a);
        int a2 = m23842a(f, i3, z, i2, j2, j3);
        int l2 = b + 0 + b2 + l + j4 + a + CodedOutputStream.m7369l(5) + CodedOutputStream.m7371j(a2) + a2;
        int i4 = l2;
        if (aVar3 != null) {
            int a3 = m23864a(aVar3);
            i4 = l2 + CodedOutputStream.m7369l(6) + CodedOutputStream.m7371j(a3) + a3;
        }
        return i4;
    }

    /* renamed from: a */
    public static int m23864a(C5406a aVar) {
        return CodedOutputStream.m7391b(1, aVar);
    }

    /* renamed from: a */
    public static int m23863a(C5406a aVar, C5406a aVar2) {
        int b = CodedOutputStream.m7392b(1, 0L) + 0 + CodedOutputStream.m7392b(2, 0L) + CodedOutputStream.m7391b(3, aVar);
        int i = b;
        if (aVar2 != null) {
            i = b + CodedOutputStream.m7391b(4, aVar2);
        }
        return i;
    }

    /* renamed from: a */
    public static int m23862a(C5406a aVar, C5406a aVar2, C5406a aVar3, C5406a aVar4, int i, C5406a aVar5) {
        int b = CodedOutputStream.m7391b(1, aVar) + 0 + CodedOutputStream.m7391b(2, aVar2) + CodedOutputStream.m7391b(3, aVar3) + CodedOutputStream.m7391b(6, aVar4);
        int i2 = b;
        if (aVar5 != null) {
            i2 = b + CodedOutputStream.m7391b(8, f18341b) + CodedOutputStream.m7391b(9, aVar5);
        }
        return i2 + CodedOutputStream.m7378e(10, i);
    }

    /* renamed from: a */
    public static int m23861a(C5406a aVar, C5406a aVar2, boolean z) {
        return CodedOutputStream.m7378e(1, 3) + 0 + CodedOutputStream.m7391b(2, aVar) + CodedOutputStream.m7391b(3, aVar2) + CodedOutputStream.m7390b(4, z);
    }

    /* renamed from: a */
    public static int m23860a(C5451e eVar, int i, int i2) {
        int i3 = 0;
        int b = CodedOutputStream.m7391b(1, C5406a.m23873a(eVar.f18429b)) + 0;
        String str = eVar.f18428a;
        int i4 = b;
        if (str != null) {
            i4 = b + CodedOutputStream.m7391b(3, C5406a.m23873a(str));
        }
        for (StackTraceElement stackTraceElement : eVar.f18430c) {
            int a = m23841a(stackTraceElement, true);
            i4 += CodedOutputStream.m7369l(4) + CodedOutputStream.m7371j(a) + a;
        }
        C5451e eVar2 = eVar.f18431d;
        int i5 = i4;
        if (eVar2 != null) {
            C5451e eVar3 = eVar2;
            if (i < i2) {
                int a2 = m23860a(eVar2, i + 1, i2);
                i5 = i4 + CodedOutputStream.m7369l(6) + CodedOutputStream.m7371j(a2) + a2;
            } else {
                while (eVar3 != null) {
                    eVar3 = eVar3.f18431d;
                    i3++;
                }
                i5 = i4 + CodedOutputStream.m7374g(7, i3);
            }
        }
        return i5;
    }

    /* renamed from: a */
    public static int m23859a(C5451e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, C5406a aVar, C5406a aVar2) {
        int a = m23838a(thread, stackTraceElementArr, 4, true);
        int l = CodedOutputStream.m7369l(1) + CodedOutputStream.m7371j(a) + a + 0;
        int length = threadArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            int a2 = m23838a(threadArr[i2], list.get(i2), 0, false);
            l += CodedOutputStream.m7369l(1) + CodedOutputStream.m7371j(a2) + a2;
        }
        int a3 = m23860a(eVar, 1, i);
        int l2 = CodedOutputStream.m7369l(2);
        int j = CodedOutputStream.m7371j(a3);
        int a4 = m23867a();
        int l3 = CodedOutputStream.m7369l(3);
        int j2 = CodedOutputStream.m7371j(a4);
        int a5 = m23863a(aVar, aVar2);
        return l + l2 + j + a3 + l3 + j2 + a4 + CodedOutputStream.m7369l(3) + CodedOutputStream.m7371j(a5) + a5;
    }

    /* renamed from: a */
    public static int m23858a(C5451e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, C5406a aVar, C5406a aVar2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i2) {
        int a = m23859a(eVar, thread, stackTraceElementArr, threadArr, list, i, aVar, aVar2);
        boolean z = true;
        int l = CodedOutputStream.m7369l(1) + CodedOutputStream.m7371j(a) + a + 0;
        int i3 = l;
        if (map != null) {
            Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
            while (true) {
                i3 = l;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, String> next = it.next();
                int a2 = m23839a(next.getKey(), next.getValue());
                l += CodedOutputStream.m7369l(2) + CodedOutputStream.m7371j(a2) + a2;
            }
        }
        int i4 = i3;
        if (runningAppProcessInfo != null) {
            if (runningAppProcessInfo.importance == 100) {
                z = false;
            }
            i4 = i3 + CodedOutputStream.m7390b(3, z);
        }
        return i4 + CodedOutputStream.m7374g(4, i2);
    }

    /* renamed from: a */
    public static int m23842a(Float f, int i, boolean z, int i2, long j, long j2) {
        int i3 = 0;
        if (f != null) {
            i3 = 0 + CodedOutputStream.m7394b(1, f.floatValue());
        }
        return i3 + CodedOutputStream.m7376f(2, i) + CodedOutputStream.m7390b(3, z) + CodedOutputStream.m7374g(4, i2) + CodedOutputStream.m7392b(5, j) + CodedOutputStream.m7392b(6, j2);
    }

    /* renamed from: a */
    public static int m23841a(StackTraceElement stackTraceElement, boolean z) {
        int i = 0;
        int b = stackTraceElement.isNativeMethod() ? CodedOutputStream.m7392b(1, Math.max(stackTraceElement.getLineNumber(), 0)) : CodedOutputStream.m7392b(1, 0L);
        int b2 = b + 0 + CodedOutputStream.m7391b(2, C5406a.m23873a(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        int i2 = b2;
        if (stackTraceElement.getFileName() != null) {
            i2 = b2 + CodedOutputStream.m7391b(3, C5406a.m23873a(stackTraceElement.getFileName()));
        }
        int i3 = i2;
        if (!stackTraceElement.isNativeMethod()) {
            i3 = i2;
            if (stackTraceElement.getLineNumber() > 0) {
                i3 = i2 + CodedOutputStream.m7392b(4, stackTraceElement.getLineNumber());
            }
        }
        if (z) {
            i = 2;
        }
        return i3 + CodedOutputStream.m7374g(5, i);
    }

    /* renamed from: a */
    public static int m23839a(String str, String str2) {
        int b = CodedOutputStream.m7391b(1, C5406a.m23873a(str));
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        return b + CodedOutputStream.m7391b(2, C5406a.m23873a(str3));
    }

    /* renamed from: a */
    public static int m23838a(Thread thread, StackTraceElement[] stackTraceElementArr, int i, boolean z) {
        int b = CodedOutputStream.m7391b(1, C5406a.m23873a(thread.getName())) + CodedOutputStream.m7374g(2, i);
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            int a = m23841a(stackTraceElement, z);
            b += CodedOutputStream.m7369l(3) + CodedOutputStream.m7371j(a) + a;
        }
        return b;
    }

    /* renamed from: a */
    public static C5406a m23840a(String str) {
        return str == null ? null : C5406a.m23873a(str);
    }

    /* renamed from: a */
    public static void m23857a(CodedOutputStream codedOutputStream, int i, StackTraceElement stackTraceElement, boolean z) throws Exception {
        codedOutputStream.m7385c(i, 2);
        codedOutputStream.m7379e(m23841a(stackTraceElement, z));
        int i2 = 0;
        if (stackTraceElement.isNativeMethod()) {
            codedOutputStream.m7407a(1, Math.max(stackTraceElement.getLineNumber(), 0));
        } else {
            codedOutputStream.m7407a(1, 0L);
        }
        codedOutputStream.m7406a(2, C5406a.m23873a(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        if (stackTraceElement.getFileName() != null) {
            codedOutputStream.m7406a(3, C5406a.m23873a(stackTraceElement.getFileName()));
        }
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            codedOutputStream.m7407a(4, stackTraceElement.getLineNumber());
        }
        if (z) {
            i2 = 4;
        }
        codedOutputStream.m7381d(5, i2);
    }

    /* renamed from: a */
    public static void m23856a(CodedOutputStream codedOutputStream, int i, String str, int i2, long j, long j2, boolean z, int i3, String str2, String str3) throws Exception {
        C5406a a = m23840a(str);
        C5406a a2 = m23840a(str3);
        C5406a a3 = m23840a(str2);
        codedOutputStream.m7385c(9, 2);
        codedOutputStream.m7379e(m23866a(i, a, i2, j, j2, z, i3, a3, a2));
        codedOutputStream.m7408a(3, i);
        codedOutputStream.m7406a(4, a);
        codedOutputStream.m7381d(5, i2);
        codedOutputStream.m7407a(6, j);
        codedOutputStream.m7407a(7, j2);
        codedOutputStream.m7405a(10, z);
        codedOutputStream.m7381d(12, i3);
        if (a3 != null) {
            codedOutputStream.m7406a(13, a3);
        }
        if (a2 != null) {
            codedOutputStream.m7406a(14, a2);
        }
    }

    /* renamed from: a */
    public static void m23855a(CodedOutputStream codedOutputStream, long j, String str, C5451e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, Map<String, String> map, byte[] bArr, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i2, String str2, String str3, Float f, int i3, boolean z, long j2, long j3) throws Exception {
        C5406a a = C5406a.m23873a(str2);
        C5406a aVar = null;
        C5406a a2 = str3 == null ? null : C5406a.m23873a(str3.replace("-", ""));
        if (bArr != null) {
            aVar = C5406a.m23872a(bArr);
        } else {
            C5192b.m24319a().m24317a("No log data to include with this event.");
        }
        codedOutputStream.m7385c(10, 2);
        codedOutputStream.m7379e(m23865a(j, str, eVar, thread, stackTraceElementArr, threadArr, list, i, map, runningAppProcessInfo, i2, a, a2, f, i3, z, j2, j3, aVar));
        codedOutputStream.m7407a(1, j);
        codedOutputStream.m7406a(2, C5406a.m23873a(str));
        m23851a(codedOutputStream, eVar, thread, stackTraceElementArr, threadArr, list, i, a, a2, map, runningAppProcessInfo, i2);
        m23850a(codedOutputStream, f, i3, z, i2, j2, j3);
        m23854a(codedOutputStream, aVar);
    }

    /* renamed from: a */
    public static void m23854a(CodedOutputStream codedOutputStream, C5406a aVar) throws Exception {
        if (aVar != null) {
            codedOutputStream.m7385c(6, 2);
            codedOutputStream.m7379e(m23864a(aVar));
            codedOutputStream.m7406a(1, aVar);
        }
    }

    /* renamed from: a */
    public static void m23853a(CodedOutputStream codedOutputStream, C5451e eVar, int i, int i2, int i3) throws Exception {
        codedOutputStream.m7385c(i3, 2);
        codedOutputStream.m7379e(m23860a(eVar, 1, i2));
        codedOutputStream.m7406a(1, C5406a.m23873a(eVar.f18429b));
        String str = eVar.f18428a;
        if (str != null) {
            codedOutputStream.m7406a(3, C5406a.m23873a(str));
        }
        int i4 = 0;
        for (StackTraceElement stackTraceElement : eVar.f18430c) {
            m23857a(codedOutputStream, 4, stackTraceElement, true);
        }
        C5451e eVar2 = eVar.f18431d;
        if (eVar2 != null) {
            C5451e eVar3 = eVar2;
            if (i < i2) {
                m23853a(codedOutputStream, eVar2, i + 1, i2, 6);
                return;
            }
            while (eVar3 != null) {
                eVar3 = eVar3.f18431d;
                i4++;
            }
            codedOutputStream.m7381d(7, i4);
        }
    }

    /* renamed from: a */
    public static void m23852a(CodedOutputStream codedOutputStream, C5451e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, C5406a aVar, C5406a aVar2) throws Exception {
        codedOutputStream.m7385c(1, 2);
        codedOutputStream.m7379e(m23859a(eVar, thread, stackTraceElementArr, threadArr, list, i, aVar, aVar2));
        m23844a(codedOutputStream, thread, stackTraceElementArr, 4, true);
        int length = threadArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            m23844a(codedOutputStream, threadArr[i2], list.get(i2), 0, false);
        }
        m23853a(codedOutputStream, eVar, 1, i, 2);
        codedOutputStream.m7385c(3, 2);
        codedOutputStream.m7379e(m23867a());
        codedOutputStream.m7406a(1, f18340a);
        codedOutputStream.m7406a(2, f18340a);
        codedOutputStream.m7407a(3, 0L);
        codedOutputStream.m7385c(4, 2);
        codedOutputStream.m7379e(m23863a(aVar, aVar2));
        codedOutputStream.m7407a(1, 0L);
        codedOutputStream.m7407a(2, 0L);
        codedOutputStream.m7406a(3, aVar);
        if (aVar2 != null) {
            codedOutputStream.m7406a(4, aVar2);
        }
    }

    /* renamed from: a */
    public static void m23851a(CodedOutputStream codedOutputStream, C5451e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, C5406a aVar, C5406a aVar2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i2) throws Exception {
        codedOutputStream.m7385c(3, 2);
        codedOutputStream.m7379e(m23858a(eVar, thread, stackTraceElementArr, threadArr, list, i, aVar, aVar2, map, runningAppProcessInfo, i2));
        m23852a(codedOutputStream, eVar, thread, stackTraceElementArr, threadArr, list, i, aVar, aVar2);
        if (map != null && !map.isEmpty()) {
            m23843a(codedOutputStream, map);
        }
        if (runningAppProcessInfo != null) {
            codedOutputStream.m7405a(3, runningAppProcessInfo.importance != 100);
        }
        codedOutputStream.m7381d(4, i2);
    }

    /* renamed from: a */
    public static void m23850a(CodedOutputStream codedOutputStream, Float f, int i, boolean z, int i2, long j, long j2) throws Exception {
        codedOutputStream.m7385c(5, 2);
        codedOutputStream.m7379e(m23842a(f, i, z, i2, j, j2));
        if (f != null) {
            codedOutputStream.m7409a(1, f.floatValue());
        }
        codedOutputStream.m7393b(2, i);
        codedOutputStream.m7405a(3, z);
        codedOutputStream.m7381d(4, i2);
        codedOutputStream.m7407a(5, j);
        codedOutputStream.m7407a(6, j2);
    }

    /* renamed from: a */
    public static void m23849a(CodedOutputStream codedOutputStream, String str) throws Exception {
        C5406a a = C5406a.m23873a(str);
        codedOutputStream.m7385c(7, 2);
        int b = CodedOutputStream.m7391b(2, a);
        codedOutputStream.m7379e(CodedOutputStream.m7369l(5) + CodedOutputStream.m7371j(b) + b);
        codedOutputStream.m7385c(5, 2);
        codedOutputStream.m7379e(b);
        codedOutputStream.m7406a(2, a);
    }

    /* renamed from: a */
    public static void m23848a(CodedOutputStream codedOutputStream, String str, String str2, long j) throws Exception {
        codedOutputStream.m7406a(1, C5406a.m23873a(str2));
        codedOutputStream.m7406a(2, C5406a.m23873a(str));
        codedOutputStream.m7407a(3, j);
    }

    /* renamed from: a */
    public static void m23847a(CodedOutputStream codedOutputStream, String str, String str2, String str3) throws Exception {
        String str4 = str;
        if (str == null) {
            str4 = "";
        }
        C5406a a = C5406a.m23873a(str4);
        C5406a a2 = m23840a(str2);
        C5406a a3 = m23840a(str3);
        int b = CodedOutputStream.m7391b(1, a) + 0;
        int i = b;
        if (str2 != null) {
            i = b + CodedOutputStream.m7391b(2, a2);
        }
        int i2 = i;
        if (str3 != null) {
            i2 = i + CodedOutputStream.m7391b(3, a3);
        }
        codedOutputStream.m7385c(6, 2);
        codedOutputStream.m7379e(i2);
        codedOutputStream.m7406a(1, a);
        if (str2 != null) {
            codedOutputStream.m7406a(2, a2);
        }
        if (str3 != null) {
            codedOutputStream.m7406a(3, a3);
        }
    }

    /* renamed from: a */
    public static void m23846a(CodedOutputStream codedOutputStream, String str, String str2, String str3, String str4, int i, String str5) throws Exception {
        C5406a a = C5406a.m23873a(str);
        C5406a a2 = C5406a.m23873a(str2);
        C5406a a3 = C5406a.m23873a(str3);
        C5406a a4 = C5406a.m23873a(str4);
        C5406a a5 = str5 != null ? C5406a.m23873a(str5) : null;
        codedOutputStream.m7385c(7, 2);
        codedOutputStream.m7379e(m23862a(a, a2, a3, a4, i, a5));
        codedOutputStream.m7406a(1, a);
        codedOutputStream.m7406a(2, a2);
        codedOutputStream.m7406a(3, a3);
        codedOutputStream.m7406a(6, a4);
        if (a5 != null) {
            codedOutputStream.m7406a(8, f18341b);
            codedOutputStream.m7406a(9, a5);
        }
        codedOutputStream.m7408a(10, i);
    }

    /* renamed from: a */
    public static void m23845a(CodedOutputStream codedOutputStream, String str, String str2, boolean z) throws Exception {
        C5406a a = C5406a.m23873a(str);
        C5406a a2 = C5406a.m23873a(str2);
        codedOutputStream.m7385c(8, 2);
        codedOutputStream.m7379e(m23861a(a, a2, z));
        codedOutputStream.m7408a(1, 3);
        codedOutputStream.m7406a(2, a);
        codedOutputStream.m7406a(3, a2);
        codedOutputStream.m7405a(4, z);
    }

    /* renamed from: a */
    public static void m23844a(CodedOutputStream codedOutputStream, Thread thread, StackTraceElement[] stackTraceElementArr, int i, boolean z) throws Exception {
        codedOutputStream.m7385c(1, 2);
        codedOutputStream.m7379e(m23838a(thread, stackTraceElementArr, i, z));
        codedOutputStream.m7406a(1, C5406a.m23873a(thread.getName()));
        codedOutputStream.m7381d(2, i);
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            m23857a(codedOutputStream, 3, stackTraceElement, z);
        }
    }

    /* renamed from: a */
    public static void m23843a(CodedOutputStream codedOutputStream, Map<String, String> map) throws Exception {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            codedOutputStream.m7385c(2, 2);
            codedOutputStream.m7379e(m23839a(entry.getKey(), entry.getValue()));
            codedOutputStream.m7406a(1, C5406a.m23873a(entry.getKey()));
            String value = entry.getValue();
            String str = value;
            if (value == null) {
                str = "";
            }
            codedOutputStream.m7406a(2, C5406a.m23873a(str));
        }
    }
}
