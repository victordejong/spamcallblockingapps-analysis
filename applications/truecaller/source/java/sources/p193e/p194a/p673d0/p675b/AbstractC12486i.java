package p193e.p194a.p673d0.p675b;

import android.os.Bundle;
import com.truecaller.blocking.FilterMatch;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d0.b.i */
/* loaded from: classes6-dex2jar.jar:e/a/d0/b/i.class */
public abstract class AbstractC12486i {

    /* renamed from: a */
    public String f36495a;

    /* renamed from: b */
    public final long f36496b;

    /* renamed from: e.a.d0.b.i$a */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/b/i$a.class */
    public static final class C12487a extends AbstractC12486i {
        public C12487a(String str, long j) {
            super(str, j, null);
        }

        @Override // p193e.p194a.p673d0.p675b.AbstractC12486i
        /* renamed from: a */
        public Bundle mo22939a() {
            Bundle m8687M0 = C22128a.m8687M0("CALL_STATE", 3);
            m8687M0.putLong("TIMESTAMP", this.f36496b);
            String str = this.f36495a;
            if (str != null) {
                m8687M0.putString("NUMBER", str);
            }
            return m8687M0;
        }
    }

    /* renamed from: e.a.d0.b.i$b */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/b/i$b.class */
    public static final class C12488b extends AbstractC12486i {

        /* renamed from: c */
        public final Integer f36497c;

        public C12488b(String str, long j, Integer num) {
            super(str, j, null);
            this.f36497c = num;
        }

        public C12488b(String str, long j, Integer num, int i) {
            super(str, j, null);
            this.f36497c = null;
        }

        @Override // p193e.p194a.p673d0.p675b.AbstractC12486i
        /* renamed from: a */
        public Bundle mo22939a() {
            Bundle m8687M0 = C22128a.m8687M0("CALL_STATE", 2);
            m8687M0.putLong("TIMESTAMP", this.f36496b);
            String str = this.f36495a;
            if (str != null) {
                m8687M0.putString("NUMBER", str);
            }
            Integer num = this.f36497c;
            if (num != null) {
                m8687M0.putInt("SIM_SLOT_INDEX", num.intValue());
            }
            return m8687M0;
        }
    }

    /* renamed from: e.a.d0.b.i$c */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/b/i$c.class */
    public static final class C12489c extends AbstractC12486i {
        public C12489c(String str, long j) {
            super(str, j, null);
        }

        @Override // p193e.p194a.p673d0.p675b.AbstractC12486i
        /* renamed from: a */
        public Bundle mo22939a() {
            Bundle m8687M0 = C22128a.m8687M0("CALL_STATE", 0);
            m8687M0.putLong("TIMESTAMP", this.f36496b);
            String str = this.f36495a;
            if (str != null) {
                m8687M0.putString("NUMBER", str);
            }
            return m8687M0;
        }
    }

    /* renamed from: e.a.d0.b.i$d */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/b/i$d.class */
    public static final class C12490d extends AbstractC12486i {

        /* renamed from: c */
        public final Integer f36498c;

        /* renamed from: d */
        public final Integer f36499d;

        /* renamed from: e */
        public final FilterMatch f36500e;

        public C12490d(String str, long j, Integer num, Integer num2, FilterMatch filterMatch) {
            super(str, j, null);
            this.f36498c = num;
            this.f36499d = num2;
            this.f36500e = filterMatch;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12490d(String str, long j, Integer num, Integer num2, FilterMatch filterMatch, int i) {
            super(str, j, null);
            num = (i & 4) != 0 ? null : num;
            num2 = (i & 8) != 0 ? null : num2;
            this.f36498c = num;
            this.f36499d = num2;
            this.f36500e = null;
        }

        @Override // p193e.p194a.p673d0.p675b.AbstractC12486i
        /* renamed from: a */
        public Bundle mo22939a() {
            Bundle m8687M0 = C22128a.m8687M0("CALL_STATE", 1);
            m8687M0.putLong("TIMESTAMP", this.f36496b);
            Integer num = this.f36499d;
            if (num != null) {
                m8687M0.putInt("ACTION", num.intValue());
            }
            String str = this.f36495a;
            if (str != null) {
                m8687M0.putString("NUMBER", str);
            }
            Integer num2 = this.f36498c;
            if (num2 != null) {
                m8687M0.putInt("SIM_SLOT_INDEX", num2.intValue());
            }
            FilterMatch filterMatch = this.f36500e;
            if (filterMatch != null) {
                m8687M0.putParcelable("FILTER_MATCH", filterMatch);
            }
            return m8687M0;
        }
    }

    public AbstractC12486i(String str, long j, f fVar) {
        this.f36495a = str;
        this.f36496b = j;
    }

    /* renamed from: a */
    public abstract Bundle mo22939a();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!l.a(getClass(), obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.callerid.callstate.PhoneState");
        AbstractC12486i abstractC12486i = (AbstractC12486i) obj;
        return !(l.a(this.f36495a, abstractC12486i.f36495a) ^ true) && Math.abs(this.f36496b - abstractC12486i.f36496b) <= TimeUnit.SECONDS.toMillis(15L);
    }

    public int hashCode() {
        String str = this.f36495a;
        return getClass().hashCode() + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return getClass().getSimpleName() + ", number: " + this.f36495a + ", time: " + this.f36496b;
    }
}
