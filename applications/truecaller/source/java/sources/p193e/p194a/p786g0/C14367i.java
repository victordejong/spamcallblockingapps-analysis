package p193e.p194a.p786g0;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.suspension.AccountSuspendedNotificationConfigurations;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p786g0.p792n.AbstractC14407a;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.g0.i */
/* loaded from: classes14-dex2jar.jar:e/a/g0/i.class */
public final class C14367i implements AbstractC14366h {

    /* renamed from: a */
    public final AbstractC14356d f41495a;

    /* renamed from: b */
    public final AbstractC14407a f41496b;

    /* renamed from: c */
    public final AbstractC19222c f41497c;

    @Inject
    public C14367i(AbstractC14356d abstractC14356d, AbstractC14407a abstractC14407a, AbstractC19222c abstractC19222c) {
        l.e(abstractC14356d, "suspensionManager");
        l.e(abstractC14407a, "suspensionSettings");
        l.e(abstractC19222c, "clock");
        this.f41495a = abstractC14356d;
        this.f41496b = abstractC14407a;
        this.f41497c = abstractC19222c;
    }

    @Override // p193e.p194a.p786g0.AbstractC14366h
    /* renamed from: a */
    public void mo20166a(AccountSuspendedNotificationConfigurations accountSuspendedNotificationConfigurations) {
        l.e(accountSuspendedNotificationConfigurations, DTBMetricsConfiguration.CONFIG_DIR);
        AbstractC14407a abstractC14407a = this.f41496b;
        abstractC14407a.putInt("asnc-13", accountSuspendedNotificationConfigurations.getId());
        abstractC14407a.putLong("asnt-12", this.f41497c.mo13819c());
    }

    @Override // p193e.p194a.p786g0.AbstractC14366h
    /* renamed from: b */
    public AccountSuspendedNotificationConfigurations mo20165b() {
        Integer num = this.f41496b.getInt("asnc-13", -1);
        l.d(num, "suspensionSettings.getIn…TIFICATION_CONFIG_ID, -1)");
        return m20163d(num.intValue());
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x007b, code lost:
        if ((r0 >= ((long) m20163d(r0.intValue()).getDaysInterval())) != false) goto L11;
     */
    @Override // p193e.p194a.p786g0.AbstractC14366h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo20164c() {
        /*
            r6 = this;
            r0 = r6
            e.a.g0.d r0 = r0.f41495a
            boolean r0 = r0.mo20197b()
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L81
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.MILLISECONDS
            r9 = r0
            r0 = r6
            e.a.p5.c r0 = r0.f41497c
            long r0 = r0.mo13819c()
            r10 = r0
            r0 = r6
            e.a.g0.n.a r0 = r0.f41496b
            java.lang.String r1 = "asnt-12"
            r2 = -1
            java.lang.Long r0 = r0.getLong(r1, r2)
            r12 = r0
            r0 = r12
            java.lang.String r1 = "suspensionSettings.getLo…ED_NOTIFICATION_TIME, -1)"
            s1.z.c.l.d(r0, r1)
            r0 = r9
            r1 = r10
            r2 = r12
            long r2 = r2.longValue()
            long r1 = r1 - r2
            long r0 = r0.toDays(r1)
            r1 = 0
            long r0 = java.lang.Math.max(r0, r1)
            r10 = r0
            r0 = r6
            e.a.g0.n.a r0 = r0.f41496b
            java.lang.String r1 = "asnc-13"
            r2 = -1
            java.lang.Integer r0 = r0.getInt(r1, r2)
            r12 = r0
            r0 = r12
            java.lang.String r1 = "suspensionSettings.getIn…TIFICATION_CONFIG_ID, -1)"
            s1.z.c.l.d(r0, r1)
            r0 = r10
            r1 = r6
            r2 = r12
            int r2 = r2.intValue()
            com.truecaller.suspension.AccountSuspendedNotificationConfigurations r1 = r1.m20163d(r2)
            int r1 = r1.getDaysInterval()
            long r1 = (long) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L76
            r0 = 1
            r13 = r0
            goto L79
        L76:
            r0 = 0
            r13 = r0
        L79:
            r0 = r13
            if (r0 == 0) goto L81
            goto L83
        L81:
            r0 = 0
            r8 = r0
        L83:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p786g0.C14367i.mo20164c():boolean");
    }

    /* renamed from: d */
    public final AccountSuspendedNotificationConfigurations m20163d(int i) {
        AccountSuspendedNotificationConfigurations accountSuspendedNotificationConfigurations;
        AccountSuspendedNotificationConfigurations accountSuspendedNotificationConfigurations2;
        AccountSuspendedNotificationConfigurations[] values = AccountSuspendedNotificationConfigurations.values();
        int i2 = 0;
        while (true) {
            if (i2 >= 4) {
                accountSuspendedNotificationConfigurations = null;
                break;
            }
            accountSuspendedNotificationConfigurations = values[i2];
            if (accountSuspendedNotificationConfigurations.getId() == i) {
                break;
            }
            i2++;
        }
        if (accountSuspendedNotificationConfigurations == null) {
            accountSuspendedNotificationConfigurations2 = AccountSuspendedNotificationConfigurations.IMMEDIATE;
        } else {
            int ordinal = accountSuspendedNotificationConfigurations.ordinal();
            if (ordinal == 0) {
                accountSuspendedNotificationConfigurations2 = AccountSuspendedNotificationConfigurations.ONE_DAY;
            } else if (ordinal == 1) {
                accountSuspendedNotificationConfigurations2 = AccountSuspendedNotificationConfigurations.ONE_WEEK;
            } else if (ordinal != 2 && ordinal != 3) {
                throw new i();
            } else {
                accountSuspendedNotificationConfigurations2 = AccountSuspendedNotificationConfigurations.WEEKLY;
            }
        }
        return accountSuspendedNotificationConfigurations2;
    }
}
