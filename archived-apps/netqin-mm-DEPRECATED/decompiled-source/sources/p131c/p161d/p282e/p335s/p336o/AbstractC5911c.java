package p131c.p161d.p282e.p335s.p336o;

import com.google.firebase.installations.local.PersistedInstallation;
import p131c.p161d.p282e.p335s.p336o.C5907a;
/* renamed from: c.d.e.s.o.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/s/o/c.class */
public abstract class AbstractC5911c {

    /* renamed from: c.d.e.s.o.c$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/s/o/c$a.class */
    public static abstract class AbstractC5912a {
        /* renamed from: a */
        public abstract AbstractC5912a mo22730a(long j);

        /* renamed from: a */
        public abstract AbstractC5912a mo22729a(PersistedInstallation.RegistrationStatus registrationStatus);

        /* renamed from: a */
        public abstract AbstractC5912a mo22728a(String str);

        /* renamed from: a */
        public abstract AbstractC5911c mo22731a();

        /* renamed from: b */
        public abstract AbstractC5912a mo22727b(long j);

        /* renamed from: b */
        public abstract AbstractC5912a mo22726b(String str);

        /* renamed from: c */
        public abstract AbstractC5912a mo22725c(String str);

        /* renamed from: d */
        public abstract AbstractC5912a mo22724d(String str);
    }

    static {
        m22732p().mo22731a();
    }

    /* renamed from: p */
    public static AbstractC5912a m22732p() {
        C5907a.C5909b bVar = new C5907a.C5909b();
        bVar.mo22727b(0L);
        bVar.mo22729a(PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION);
        bVar.mo22730a(0L);
        return bVar;
    }

    /* renamed from: a */
    public AbstractC5911c m22750a(String str) {
        AbstractC5912a m = mo22735m();
        m.mo22725c(str);
        m.mo22729a(PersistedInstallation.RegistrationStatus.REGISTER_ERROR);
        return m.mo22731a();
    }

    /* renamed from: a */
    public AbstractC5911c m22749a(String str, long j, long j2) {
        AbstractC5912a m = mo22735m();
        m.mo22728a(str);
        m.mo22730a(j);
        m.mo22727b(j2);
        return m.mo22731a();
    }

    /* renamed from: a */
    public AbstractC5911c m22748a(String str, String str2, long j, String str3, long j2) {
        AbstractC5912a m = mo22735m();
        m.mo22726b(str);
        m.mo22729a(PersistedInstallation.RegistrationStatus.REGISTERED);
        m.mo22728a(str3);
        m.mo22724d(str2);
        m.mo22730a(j2);
        m.mo22727b(j);
        return m.mo22731a();
    }

    /* renamed from: a */
    public abstract String mo22751a();

    /* renamed from: b */
    public abstract long mo22747b();

    /* renamed from: b */
    public AbstractC5911c m22746b(String str) {
        AbstractC5912a m = mo22735m();
        m.mo22726b(str);
        m.mo22729a(PersistedInstallation.RegistrationStatus.UNREGISTERED);
        return m.mo22731a();
    }

    /* renamed from: c */
    public abstract String mo22745c();

    /* renamed from: d */
    public abstract String mo22744d();

    /* renamed from: e */
    public abstract String mo22743e();

    /* renamed from: f */
    public abstract PersistedInstallation.RegistrationStatus mo22742f();

    /* renamed from: g */
    public abstract long mo22741g();

    /* renamed from: h */
    public boolean m22740h() {
        return mo22742f() == PersistedInstallation.RegistrationStatus.REGISTER_ERROR;
    }

    /* renamed from: i */
    public boolean m22739i() {
        return mo22742f() == PersistedInstallation.RegistrationStatus.NOT_GENERATED || mo22742f() == PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION;
    }

    /* renamed from: j */
    public boolean m22738j() {
        return mo22742f() == PersistedInstallation.RegistrationStatus.REGISTERED;
    }

    /* renamed from: k */
    public boolean m22737k() {
        return mo22742f() == PersistedInstallation.RegistrationStatus.UNREGISTERED;
    }

    /* renamed from: l */
    public boolean m22736l() {
        return mo22742f() == PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION;
    }

    /* renamed from: m */
    public abstract AbstractC5912a mo22735m();

    /* renamed from: n */
    public AbstractC5911c m22734n() {
        AbstractC5912a m = mo22735m();
        m.mo22728a((String) null);
        return m.mo22731a();
    }

    /* renamed from: o */
    public AbstractC5911c m22733o() {
        AbstractC5912a m = mo22735m();
        m.mo22729a(PersistedInstallation.RegistrationStatus.NOT_GENERATED);
        return m.mo22731a();
    }
}
