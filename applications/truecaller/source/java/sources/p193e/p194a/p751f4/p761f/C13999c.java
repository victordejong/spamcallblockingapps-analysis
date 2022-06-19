package p193e.p194a.p751f4.p761f;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.network.notification.NotificationScope;
import com.truecaller.network.notification.NotificationType;
import e.m.e.d0.b;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.f4.f.c */
/* loaded from: classes11-dex2jar.jar:e/a/f4/f/c.class */
public class C13999c {
    @b(RemoteMessageConst.DATA)

    /* renamed from: a */
    public List<C14000a> f40460a = new ArrayList();

    /* renamed from: e.a.f4.f.c$a */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/f/c$a.class */
    public static class C14000a implements Comparable<C14000a> {
        @b("e")

        /* renamed from: a */
        public C14001a f40461a;
        @b("a")

        /* renamed from: b */
        public Map<String, String> f40462b;

        /* renamed from: e.a.f4.f.c$a$a */
        /* loaded from: classes11-dex2jar.jar:e/a/f4/f/c$a$a.class */
        public static class C14001a implements Comparable<C14001a> {
            @b("i")

            /* renamed from: a */
            public long f40463a;
            @b("t")

            /* renamed from: b */
            public NotificationType f40464b = NotificationType.UNSUPPORTED;
            @b("s")

            /* renamed from: c */
            public NotificationScope f40465c = NotificationScope.GLOBAL;
            @b(AbstractC2405c.f7629a)

            /* renamed from: d */
            public long f40466d;

            @Override // java.lang.Comparable
            public int compareTo(C14001a c14001a) {
                int i;
                C14001a c14001a2 = c14001a;
                NotificationType notificationType = this.f40464b;
                NotificationType notificationType2 = NotificationType.SOFTWARE_UPDATE;
                int i2 = -1;
                if (notificationType != notificationType2 || c14001a2.f40464b == notificationType2) {
                    if (c14001a2.f40464b == notificationType2 || c14001a2.f40466d > this.f40466d) {
                        i2 = 1;
                    } else if (i >= 0) {
                        int i3 = c14001a2.f40465c.value;
                        int i4 = this.f40465c.value;
                        if (i3 > i4) {
                            i2 = 2;
                        } else if (i3 < i4) {
                            i2 = -2;
                        } else {
                            int i5 = (c14001a2.f40463a > this.f40463a ? 1 : (c14001a2.f40463a == this.f40463a ? 0 : -1));
                            i2 = i5 > 0 ? 3 : i5 < 0 ? -3 : 0;
                        }
                    }
                }
                return i2;
            }

            /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
                if (r0.f40466d == r5.f40466d) goto L14;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean equals(java.lang.Object r6) {
                /*
                    r5 = this;
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p751f4.p761f.C13999c.C14000a.C14001a
                    r7 = r0
                    r0 = 0
                    r8 = r0
                    r0 = r8
                    r9 = r0
                    r0 = r7
                    if (r0 == 0) goto L55
                    r0 = r6
                    e.a.f4.f.c$a$a r0 = (p193e.p194a.p751f4.p761f.C13999c.C14000a.C14001a) r0
                    r6 = r0
                    r0 = r6
                    r1 = r5
                    if (r0 == r1) goto L52
                    r0 = r8
                    r9 = r0
                    r0 = r6
                    long r0 = r0.f40463a
                    r1 = r5
                    long r1 = r1.f40463a
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 != 0) goto L55
                    r0 = r8
                    r9 = r0
                    r0 = r6
                    com.truecaller.network.notification.NotificationType r0 = r0.f40464b
                    r1 = r5
                    com.truecaller.network.notification.NotificationType r1 = r1.f40464b
                    if (r0 != r1) goto L55
                    r0 = r8
                    r9 = r0
                    r0 = r6
                    com.truecaller.network.notification.NotificationScope r0 = r0.f40465c
                    r1 = r5
                    com.truecaller.network.notification.NotificationScope r1 = r1.f40465c
                    if (r0 != r1) goto L55
                    r0 = r8
                    r9 = r0
                    r0 = r6
                    long r0 = r0.f40466d
                    r1 = r5
                    long r1 = r1.f40466d
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 != 0) goto L55
                L52:
                    r0 = 1
                    r9 = r0
                L55:
                    r0 = r9
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p751f4.p761f.C13999c.C14000a.C14001a.equals(java.lang.Object):boolean");
            }

            public int hashCode() {
                long j = this.f40463a;
                int i = (int) (j ^ (j >>> 32));
                NotificationType notificationType = this.f40464b;
                int i2 = 0;
                int hashCode = notificationType == null ? 0 : notificationType.hashCode();
                NotificationScope notificationScope = this.f40465c;
                if (notificationScope != null) {
                    i2 = notificationScope.hashCode();
                }
                long j2 = this.f40466d;
                return ((((((403 + i) * 31) + hashCode) * 31) + i2) * 31) + ((int) (j2 ^ (j2 >>> 32)));
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Envelope{id=");
                m8728C.append(this.f40463a);
                m8728C.append(", type=");
                m8728C.append(this.f40464b);
                m8728C.append(", scope=");
                m8728C.append(this.f40465c);
                m8728C.append(", timestamp=");
                m8728C.append(this.f40466d);
                m8728C.append('}');
                return m8728C.toString();
            }
        }

        /* renamed from: a */
        public int compareTo(C14000a c14000a) {
            C14001a c14001a = this.f40461a;
            C14001a c14001a2 = c14000a.f40461a;
            return c14001a == c14001a2 ? 0 : c14001a == null ? 1 : c14001a2 == null ? -1 : c14001a.compareTo(c14001a2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0037, code lost:
            if (w3.c.a.a.a.e.a(r0.f40462b, r3.f40462b) != false) goto L10;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = r4
                boolean r0 = r0 instanceof p193e.p194a.p751f4.p761f.C13999c.C14000a
                r5 = r0
                r0 = 0
                r6 = r0
                r0 = r6
                r7 = r0
                r0 = r5
                if (r0 == 0) goto L3d
                r0 = r4
                e.a.f4.f.c$a r0 = (p193e.p194a.p751f4.p761f.C13999c.C14000a) r0
                r4 = r0
                r0 = r4
                r1 = r3
                if (r0 == r1) goto L3a
                r0 = r6
                r7 = r0
                r0 = r4
                e.a.f4.f.c$a$a r0 = r0.f40461a
                r1 = r3
                e.a.f4.f.c$a$a r1 = r1.f40461a
                boolean r0 = w3.c.a.a.a.e.a(r0, r1)
                if (r0 == 0) goto L3d
                r0 = r6
                r7 = r0
                r0 = r4
                java.util.Map<java.lang.String, java.lang.String> r0 = r0.f40462b
                r1 = r3
                java.util.Map<java.lang.String, java.lang.String> r1 = r1.f40462b
                boolean r0 = w3.c.a.a.a.e.a(r0, r1)
                if (r0 == 0) goto L3d
            L3a:
                r0 = 1
                r7 = r0
            L3d:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p751f4.p761f.C13999c.C14000a.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            C14001a c14001a = this.f40461a;
            Map<String, String> map = this.f40462b;
            int i = 1;
            for (int i2 = 0; i2 < 2; i2++) {
                Object obj = new Object[]{c14001a, map}[i2];
                i = (i * 31) + (obj == null ? 0 : obj.hashCode());
            }
            return i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("NotificationDto{envelope=");
            m8728C.append(this.f40461a);
            m8728C.append('}');
            return m8728C.toString();
        }
    }
}
