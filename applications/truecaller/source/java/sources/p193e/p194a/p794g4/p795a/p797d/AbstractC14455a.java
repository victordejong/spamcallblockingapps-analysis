package p193e.p194a.p794g4.p795a.p797d;

import android.app.PendingIntent;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.g4.a.d.a */
/* loaded from: classes11-dex2jar.jar:e/a/g4/a/d/a.class */
public abstract class AbstractC14455a {

    /* renamed from: a */
    public final PendingIntent f41642a;

    /* renamed from: e.a.g4.a.d.a$a */
    /* loaded from: classes11-dex2jar.jar:e/a/g4/a/d/a$a.class */
    public static final class C14456a extends AbstractC14455a {

        /* renamed from: b */
        public final PendingIntent f41643b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14456a(PendingIntent pendingIntent) {
            super(pendingIntent, null);
            l.e(pendingIntent, "callRecordIntent");
            this.f41643b = pendingIntent;
        }

        @Override // p193e.p194a.p794g4.p795a.p797d.AbstractC14455a
        /* renamed from: a */
        public PendingIntent mo20080a() {
            return this.f41643b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C14456a) && l.a(this.f41643b, ((C14456a) obj).f41643b);
            }
            return true;
        }

        public int hashCode() {
            PendingIntent pendingIntent = this.f41643b;
            return pendingIntent != null ? pendingIntent.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Idle(callRecordIntent=");
            m8728C.append(this.f41643b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.g4.a.d.a$b */
    /* loaded from: classes11-dex2jar.jar:e/a/g4/a/d/a$b.class */
    public static final class C14457b extends AbstractC14455a {

        /* renamed from: b */
        public final long f41644b;

        /* renamed from: c */
        public final PendingIntent f41645c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14457b(long j, PendingIntent pendingIntent) {
            super(pendingIntent, null);
            l.e(pendingIntent, "callRecordIntent");
            this.f41644b = j;
            this.f41645c = pendingIntent;
        }

        @Override // p193e.p194a.p794g4.p795a.p797d.AbstractC14455a
        /* renamed from: a */
        public PendingIntent mo20080a() {
            return this.f41645c;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C14457b)) {
                    return false;
                }
                C14457b c14457b = (C14457b) obj;
                return this.f41644b == c14457b.f41644b && l.a(this.f41645c, c14457b.f41645c);
            }
            return true;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f41644b);
            PendingIntent pendingIntent = this.f41645c;
            return (m34274a * 31) + (pendingIntent != null ? pendingIntent.hashCode() : 0);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Started(startTimeBase=");
            m8728C.append(this.f41644b);
            m8728C.append(", callRecordIntent=");
            m8728C.append(this.f41645c);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC14455a(PendingIntent pendingIntent, f fVar) {
        this.f41642a = pendingIntent;
    }

    /* renamed from: a */
    public abstract PendingIntent mo20080a();
}
