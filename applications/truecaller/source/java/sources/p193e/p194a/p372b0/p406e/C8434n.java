package p193e.p194a.p372b0.p406e;

import android.accounts.Account;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.account.network.CheckCredentialsRequestDto;
import com.truecaller.account.network.DeleteSecondaryNumberRequestDto;
import com.truecaller.account.network.DeleteSecondaryNumberResponseError;
import com.truecaller.account.network.ExchangeCredentialsResponseDto;
import com.truecaller.common.account.analytics.LogoutContext;
import com.truecaller.log.AssertionUtil;
import e.m.d.y.n;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1070n2.p1071a.AbstractC18464a;
import p193e.p194a.p1070n2.p1071a.AbstractC18470g;
import p193e.p194a.p1070n2.p1071a.C18465b;
import p193e.p194a.p1070n2.p1071a.C18471h;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p406e.AbstractC8417d;
import p193e.p194a.p372b0.p406e.p407p.C8436a;
import p193e.p194a.p372b0.p406e.p408q.C8437a;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p786g0.AbstractC14352b;
import p193e.p194a.p786g0.AbstractC14356d;
import s1.f0.q;
import s1.f0.r;
import s1.f0.v;
import s1.z.c.l;
import x3.a0;
/* renamed from: e.a.b0.e.n */
/* loaded from: classes7-dex2jar.jar:e/a/b0/e/n.class */
public final class C8434n implements AbstractC8432l {

    /* renamed from: a */
    public long f26122a;

    /* renamed from: b */
    public int f26123b;

    /* renamed from: c */
    public final Object f26124c = new Object();

    /* renamed from: d */
    public final Object f26125d = new Object();

    /* renamed from: e */
    public final AbstractC8438a f26126e;

    /* renamed from: f */
    public final AbstractC19222c f26127f;

    /* renamed from: g */
    public final C8431k f26128g;

    /* renamed from: h */
    public final AbstractC19462a f26129h;

    /* renamed from: i */
    public final C8437a f26130i;

    /* renamed from: j */
    public final AbstractC18464a f26131j;

    /* renamed from: k */
    public final a<AbstractC14356d> f26132k;

    /* renamed from: l */
    public final a<AbstractC14352b> f26133l;

    @Inject
    public C8434n(AbstractC8438a abstractC8438a, AbstractC19222c abstractC19222c, C8431k c8431k, AbstractC19462a abstractC19462a, C8437a c8437a, AbstractC18464a abstractC18464a, a<AbstractC14356d> aVar, a<AbstractC14352b> aVar2) {
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC19222c, "clock");
        l.e(c8431k, "truecallerAccountBackupManager");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(c8437a, "legacyTruecallerAccountManager");
        l.e(abstractC18464a, "accountRequestHelper");
        l.e(aVar, "suspensionManager");
        l.e(aVar2, "accountSuspensionListener");
        this.f26126e = abstractC8438a;
        this.f26127f = abstractC19222c;
        this.f26128g = c8431k;
        this.f26129h = abstractC19462a;
        this.f26130i = c8437a;
        this.f26131j = abstractC18464a;
        this.f26132k = aVar;
        this.f26133l = aVar2;
    }

    /* renamed from: a */
    public final C8416c m28583a() {
        String userData;
        String userData2;
        String peekAuthToken;
        C8437a c8437a = this.f26130i;
        Account[] accountsByType = c8437a.f26140a.getAccountsByType(c8437a.f26141b);
        l.d(accountsByType, "accountManager.getAccountsByType(accountType)");
        Account account = (Account) C25225a.m3830v0(accountsByType);
        C8416c c8416c = null;
        C8416c c8416c2 = (account == null || l.a(c8437a.f26140a.getUserData(account, "isMigratedToSettings"), "true") || (userData = c8437a.f26140a.getUserData(account, "country_code")) == null || (userData2 = c8437a.f26140a.getUserData(account, "phone_number")) == null || (peekAuthToken = c8437a.f26140a.peekAuthToken(account, "installation_id")) == null) ? null : new C8416c(peekAuthToken, new C8415b(userData, userData2), null);
        if (c8416c2 != null) {
            mo28574j(c8416c2.f26096a, 0L, c8416c2.f26097b, c8416c2.f26098c);
            C8437a c8437a2 = this.f26130i;
            Account[] accountsByType2 = c8437a2.f26140a.getAccountsByType(c8437a2.f26141b);
            l.d(accountsByType2, "accountManager.getAccountsByType(accountType)");
            Account account2 = (Account) C25225a.m3830v0(accountsByType2);
            if (account2 != null) {
                c8437a2.f26140a.setUserData(account2, "isMigratedToSettings", "true");
            }
            this.f26126e.putString("accountRestorationSource", CheckCredentialsRequestDto.REASON_RESTORED_FROM_ACCOUNT_MANAGER);
            c8416c = c8416c2;
        }
        return c8416c;
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: b */
    public boolean mo28582b() {
        return ((AbstractC14356d) this.f26132k.get()).mo20197b();
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: c */
    public void mo28581c() {
        ((AbstractC14352b) this.f26133l.get()).mo20200c();
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: d */
    public boolean mo28580d() {
        boolean z = false;
        if (m28562v() != null) {
            z = false;
            if (!mo28582b()) {
                z = false;
                if (!this.f26126e.getBoolean("restored_credentials_check_state", false)) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: e */
    public C8415b mo28579e() {
        C8416c m28562v = m28562v();
        return m28562v != null ? m28562v.f26098c : null;
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: f */
    public String mo28578f() {
        C8415b c8415b;
        C8416c m28562v = m28562v();
        return (m28562v == null || (c8415b = m28562v.f26097b) == null) ? null : c8415b.f26094a;
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: g */
    public C8415b mo28577g() {
        C8416c m28562v = m28562v();
        return m28562v != null ? m28562v.f26097b : null;
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: h */
    public void mo28576h(long j) {
        ((AbstractC14356d) this.f26132k.get()).mo20191h(j);
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: i */
    public boolean mo28575i(String str, LogoutContext logoutContext) {
        l.e(str, "installationId");
        l.e(logoutContext, AnalyticsConstants.CONTEXT);
        synchronized (this.f26124c) {
            if (!l.a(this.f26126e.getString("installationId"), str)) {
                return false;
            }
            this.f26126e.remove("installationId");
            this.f26126e.remove("installationIdFetchTime");
            this.f26126e.remove("installationIdTtl");
            this.f26126e.remove("secondary_country_code");
            this.f26126e.remove("secondary_normalized_number");
            this.f26126e.remove("restored_credentials_check_state");
            C8431k c8431k = this.f26128g;
            Objects.requireNonNull(c8431k);
            l.e(str, "installationId");
            c8431k.f26119d.invalidateAuthToken(c8431k.f26117b, str);
            c8431k.f26118c.delete();
            c8431k.f26120e.dataChanged();
            ((AbstractC14356d) this.f26132k.get()).mo20187l();
            n.B0(new C8436a(logoutContext), this.f26129h);
            return true;
        }
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: j */
    public void mo28574j(String str, long j, C8415b c8415b, C8415b c8415b2) {
        l.e(str, "installationId");
        l.e(c8415b, "primaryPhoneNumber");
        synchronized (this.f26124c) {
            this.f26126e.putString("installationId", str);
            this.f26126e.putLong("installationIdTtl", j);
            this.f26126e.putLong("installationIdFetchTime", this.f26127f.mo13819c());
            this.f26126e.putString("profileCountryIso", c8415b.f26094a);
            this.f26126e.putString("profileNumber", c8415b.f26095b);
            this.f26126e.putString("secondary_country_code", c8415b2 != null ? c8415b2.f26094a : null);
            AbstractC8438a abstractC8438a = this.f26126e;
            String str2 = null;
            if (c8415b2 != null) {
                str2 = c8415b2.f26095b;
            }
            abstractC8438a.putString("secondary_normalized_number", str2);
            this.f26128g.m28584b(new C8416c(str, c8415b, c8415b2));
        }
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: k */
    public void mo28573k(C8415b c8415b) {
        l.e(c8415b, "secondaryPhoneNumber");
        synchronized (this.f26124c) {
            C8416c m28562v = m28562v();
            if (m28562v != null) {
                this.f26126e.putString("secondary_country_code", c8415b.f26094a);
                this.f26126e.putString("secondary_normalized_number", c8415b.f26095b);
                this.f26128g.m28584b(C8416c.m28598a(m28562v, null, null, c8415b, 3));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x003f, code lost:
        if (r0 > r0) goto L6;
     */
    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo28572l() {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p406e.C8434n.mo28572l():boolean");
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: m */
    public String mo28571m() {
        C8416c m28562v = m28562v();
        return m28562v != null ? m28562v.f26096a : null;
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: n */
    public String mo28570n() {
        C8415b c8415b;
        C8416c m28562v = m28562v();
        return (m28562v == null || (c8415b = m28562v.f26097b) == null) ? null : c8415b.f26095b;
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: o */
    public String mo28569o() {
        String str;
        synchronized (this.f26125d) {
            C8416c m28562v = m28562v();
            if (m28562v == null || (str = m28562v.f26096a) == null) {
                return null;
            }
            return m28561w(str);
        }
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: p */
    public void mo28568p(String str) {
        C8415b mo28579e = mo28579e();
        if (mo28579e != null) {
            int i = C8435o.f26138e;
            if (!l.a(v.P(mo28579e.f26095b, "+"), str)) {
                return;
            }
            m28563u(mo28579e);
        }
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: q */
    public void mo28567q(String str) {
        l.e(str, "installationId");
        ((AbstractC14356d) this.f26132k.get()).mo20193f(str);
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: r */
    public void mo28566r(String str, long j) {
        l.e(str, "newInstallationId");
        synchronized (this.f26124c) {
            this.f26126e.putString("installationId", str);
            this.f26126e.putLong("installationIdFetchTime", this.f26127f.mo13819c());
            this.f26126e.putLong("installationIdTtl", j);
            String string = this.f26126e.getString("profileNumber");
            if (string != null) {
                String string2 = this.f26126e.getString("profileCountryIso");
                if (string2 == null) {
                    return;
                }
                String string3 = this.f26126e.getString("secondary_country_code");
                String string4 = this.f26126e.getString("secondary_normalized_number");
                this.f26128g.m28584b(new C8416c(str, new C8415b(string2, string), (string3 == null || string4 == null) ? null : new C8415b(string3, string4)));
            }
        }
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8432l
    /* renamed from: s */
    public AbstractC8417d mo28565s() {
        AbstractC18470g abstractC18470g;
        AbstractC8417d.AbstractC8418a.C8419a c8419a;
        C8415b mo28579e = mo28579e();
        if (mo28579e != null) {
            int i = C8435o.f26138e;
            Long j = q.j(v.P(mo28579e.f26095b, "+"));
            if (j == null) {
                AbstractC8417d.AbstractC8418a.C8421c c8421c = AbstractC8417d.AbstractC8418a.C8421c.f26101a;
                AssertionUtil.reportThrowableButNeverCrash(new IllegalStateException("Invalid number format"));
                return c8421c;
            }
            try {
                abstractC18470g = ((C18465b) this.f26131j).m14903b(new DeleteSecondaryNumberRequestDto(j.longValue()));
            } catch (IOException e) {
                abstractC18470g = null;
            }
            if (!l.a(abstractC18470g, C18471h.f52150a)) {
                boolean z = abstractC18470g instanceof DeleteSecondaryNumberResponseError;
                if (!(z && abstractC18470g.getStatus() == 40406)) {
                    c8419a = z ? new AbstractC8417d.AbstractC8418a.C8419a(abstractC18470g.getStatus()) : AbstractC8417d.AbstractC8418a.C8420b.f26100a;
                    return c8419a;
                }
            }
            c8419a = m28563u(mo28579e);
            return c8419a;
        }
        return AbstractC8417d.AbstractC8418a.C8422d.f26102a;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0228  */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p194a.p372b0.p406e.C8416c m28564t() {
        /*
            Method dump skipped, instructions count: 589
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p406e.C8434n.m28564t():e.a.b0.e.c");
    }

    /* renamed from: u */
    public final AbstractC8417d m28563u(C8415b c8415b) {
        AbstractC8417d.AbstractC8418a.C8421c c8421c = AbstractC8417d.AbstractC8418a.C8421c.f26101a;
        synchronized (this.f26124c) {
            C8416c m28562v = m28562v();
            if (m28562v != null) {
                if (!l.a(m28562v.f26098c, c8415b)) {
                    return c8421c;
                }
                this.f26126e.remove("secondary_country_code");
                this.f26126e.remove("secondary_normalized_number");
                this.f26128g.m28584b(C8416c.m28598a(m28562v, null, null, null, 3));
                return AbstractC8417d.C8423b.f26103a;
            }
            return c8421c;
        }
    }

    /* renamed from: v */
    public final C8416c m28562v() {
        synchronized (this.f26124c) {
            String string = this.f26126e.getString("installationId");
            String string2 = this.f26126e.getString("profileNumber");
            String string3 = this.f26126e.getString("profileCountryIso");
            String string4 = this.f26126e.getString("secondary_country_code");
            String string5 = this.f26126e.getString("secondary_normalized_number");
            if (string != null && string3 != null && string2 != null) {
                return new C8416c(string, new C8415b(string3, string2), (string4 == null || string5 == null) ? null : new C8415b(string4, string5));
            }
            C8416c m28583a = m28583a();
            if (m28583a == null) {
                m28583a = m28564t();
            }
            return m28583a;
        }
    }

    /* renamed from: w */
    public final String m28561w(String str) {
        if (this.f26126e.getBoolean("restored_credentials_check_state", false)) {
            return str;
        }
        Long l = this.f26126e.getLong("installationIdFetchTime", 0L);
        l.d(l, "accountSettings.getLong(…LLATION_ID_FETCH_TIME, 0)");
        long longValue = l.longValue();
        Long l2 = this.f26126e.getLong("installationIdTtl", 0L);
        l.d(l2, "accountSettings.getLong(…s.INSTALLATION_ID_TTL, 0)");
        long longValue2 = l2.longValue();
        long mo13819c = this.f26127f.mo13819c();
        if ((longValue2 + longValue <= mo13819c || longValue >= mo13819c) && this.f26122a <= this.f26127f.mo13821a()) {
            try {
                a0<ExchangeCredentialsResponseDto> m14902c = ((C18465b) this.f26131j).m14902c(str);
                ExchangeCredentialsResponseDto exchangeCredentialsResponseDto = (ExchangeCredentialsResponseDto) m14902c.b;
                if (m14902c.b() && exchangeCredentialsResponseDto != null) {
                    String domain = exchangeCredentialsResponseDto.getDomain();
                    boolean z = true;
                    if (domain != null) {
                        z = r.p(domain);
                    }
                    if (!z) {
                        this.f26126e.putString("networkDomain", exchangeCredentialsResponseDto.getDomain());
                    }
                    this.f26122a = 0L;
                    this.f26123b = 0;
                    long millis = TimeUnit.SECONDS.toMillis(exchangeCredentialsResponseDto.getTtl());
                    String installationId = exchangeCredentialsResponseDto.getInstallationId();
                    if (!l.a(exchangeCredentialsResponseDto.getState(), ExchangeCredentialsResponseDto.STATE_EXCHANGED) || installationId == null) {
                        mo28566r(str, millis);
                    } else {
                        mo28566r(installationId, millis);
                        str = installationId;
                    }
                } else if (m14902c.a.e == 401) {
                    mo28575i(str, LogoutContext.EXCHANGE_CREDENTIALS);
                    str = null;
                } else {
                    this.f26122a = this.f26127f.mo13821a() + Math.min(C8435o.f26135b << this.f26123b, C8435o.f26136c);
                    this.f26123b++;
                }
            } catch (IOException e) {
                this.f26122a = this.f26127f.mo13821a() + C8435o.f26134a;
            }
            return str;
        }
        return str;
    }
}
