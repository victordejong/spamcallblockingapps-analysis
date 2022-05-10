package p131c.p161d.p282e.p289l.p290d.p293h;

import android.os.Process;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: c.d.e.l.d.h.g */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/g.class */
public class C5222g {

    /* renamed from: a */
    public static final AtomicLong f17911a = new AtomicLong(0);

    /* renamed from: b */
    public static String f17912b;

    public C5222g(C5286u uVar) {
        byte[] bArr = new byte[10];
        m24242c(bArr);
        m24243b(bArr);
        m24245a(bArr);
        String c = CommonUtils.m7648c(uVar.mo24052a());
        String a = CommonUtils.m7657a(bArr);
        f17912b = String.format(Locale.US, "%s-%s-%s-%s", a.substring(0, 12), a.substring(12, 16), a.subSequence(16, 20), c.substring(0, 12)).toUpperCase(Locale.US);
    }

    /* renamed from: a */
    public static byte[] m24246a(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt((int) j);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        return allocate.array();
    }

    /* renamed from: b */
    public static byte[] m24244b(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(2);
        allocate.putShort((short) j);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        return allocate.array();
    }

    /* renamed from: a */
    public final void m24245a(byte[] bArr) {
        byte[] b = m24244b(Integer.valueOf(Process.myPid()).shortValue());
        bArr[8] = b[0];
        bArr[9] = b[1];
    }

    /* renamed from: b */
    public final void m24243b(byte[] bArr) {
        byte[] b = m24244b(f17911a.incrementAndGet());
        bArr[6] = b[0];
        bArr[7] = b[1];
    }

    /* renamed from: c */
    public final void m24242c(byte[] bArr) {
        long time = new Date().getTime();
        byte[] a = m24246a(time / 1000);
        bArr[0] = a[0];
        bArr[1] = a[1];
        bArr[2] = a[2];
        bArr[3] = a[3];
        byte[] b = m24244b(time % 1000);
        bArr[4] = b[0];
        bArr[5] = b[1];
    }

    public String toString() {
        return f17912b;
    }
}
