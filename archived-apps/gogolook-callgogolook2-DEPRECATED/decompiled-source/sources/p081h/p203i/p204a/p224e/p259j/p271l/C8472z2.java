package p081h.p203i.p204a.p224e.p259j.p271l;

import androidx.core.app.FrameMetricsAggregator;
import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.z2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/z2.class */
public final class C8472z2 extends AbstractC8228l9<C8472z2, C8474b> implements AbstractC8430wa {
    public static final C8472z2 zzbib;
    public static volatile AbstractC8129gb<C8472z2> zzh;
    public C8470z1 zzaps;
    public C8060d3 zzbhu;
    public int zzbhv;
    public int zzbhw;
    public int zzbhx;
    public int zzbhy;
    public int zzbhz;
    public int zzbia;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.z2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/z2$a.class */
    public enum EnumC8473a implements AbstractC8286o9 {
        NO_ERROR(0),
        METADATA_FILE_UNAVAILABLE(1),
        METADATA_ENTRY_NOT_FOUND(2),
        METADATA_JSON_INVALID(3),
        METADATA_HASH_NOT_FOUND(4),
        DOWNLOAD_MANAGER_SERVICE_MISSING(5),
        DOWNLOAD_MANAGER_HTTP_UNKNOWN_STATUS(6),
        DOWNLOAD_MANAGER_HTTP_BAD_REQUEST(400),
        DOWNLOAD_MANAGER_HTTP_UNAUTHORIZED(401),
        DOWNLOAD_MANAGER_HTTP_FORBIDDEN(403),
        DOWNLOAD_MANAGER_HTTP_NOT_FOUND(404),
        DOWNLOAD_MANAGER_HTTP_REQUEST_TIMEOUT(408),
        DOWNLOAD_MANAGER_HTTP_ABORTED(409),
        DOWNLOAD_MANAGER_HTTP_TOO_MANY_REQUESTS(429),
        DOWNLOAD_MANAGER_HTTP_CANCELLED(499),
        DOWNLOAD_MANAGER_HTTP_UNIMPLEMENTED(501),
        DOWNLOAD_MANAGER_HTTP_INTERNAL_SERVICE_ERROR(500),
        DOWNLOAD_MANAGER_HTTP_SERVICE_UNAVAILABLE(503),
        DOWNLOAD_MANAGER_HTTP_DEADLINE_EXCEEDED(504),
        DOWNLOAD_MANAGER_HTTP_NETWORK_AUTHENTICATION_REQUIRED(FrameMetricsAggregator.EVERY_DURATION),
        DOWNLOAD_MANAGER_FILE_ERROR(7),
        DOWNLOAD_MANAGER_UNHANDLED_HTTP_CODE(8),
        DOWNLOAD_MANAGER_HTTP_DATA_ERROR(9),
        DOWNLOAD_MANAGER_TOO_MANY_REDIRECTS(10),
        DOWNLOAD_MANAGER_INSUFFICIENT_SPACE(11),
        DOWNLOAD_MANAGER_DEVICE_NOT_FOUND(12),
        DOWNLOAD_MANAGER_CANNOT_RESUME(13),
        DOWNLOAD_MANAGER_FILE_ALREADY_EXISTS(14),
        DOWNLOAD_MANAGER_UNKNOWN_ERROR(15),
        POST_DOWNLOAD_FILE_NOT_FOUND(16),
        POST_DOWNLOAD_MOVE_FILE_FAILED(17),
        POST_DOWNLOAD_UNZIP_FAILED(18),
        RAPID_RESPONSE_COULD_NOT_BE_WRITTEN(19),
        DRIVER_OBJECT_DEALLOCATED(20);
        

        /* renamed from: a */
        public final int f19498a;

        static {
            new C8064d6();
        }

        EnumC8473a(int i) {
            this.f19498a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m17913b() {
            return C8047c6.f18778a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f19498a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8473a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f19498a + " name=" + name() + '>';
        }
    }

    /* renamed from: h.i.a.e.j.l.z2$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/z2$b.class */
    public static final class C8474b extends AbstractC8228l9.C8230b<C8472z2, C8474b> implements AbstractC8430wa {
        public C8474b() {
            super(C8472z2.zzbib);
        }

        public /* synthetic */ C8474b(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8472z2 z2Var = new C8472z2();
        zzbib = z2Var;
        AbstractC8228l9.m18357a(C8472z2.class, z2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8472z2();
            case 2:
                return new C8474b(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbib, "\u0001\b��\u0001\u0001\b\b������\u0001ဉ��\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006င\u0005\u0007ဌ\u0006\bင\u0007", new Object[]{"zzj", "zzaps", "zzbhu", "zzbhv", "zzbhw", "zzbhx", "zzbhy", "zzbhz", EnumC8473a.m17913b(), "zzbia"});
            case 4:
                return zzbib;
            case 5:
                AbstractC8129gb<C8472z2> gbVar = zzh;
                AbstractC8129gb<C8472z2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8472z2.class) {
                        try {
                            AbstractC8129gb<C8472z2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbib);
                                zzh = gbVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return gbVar2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
