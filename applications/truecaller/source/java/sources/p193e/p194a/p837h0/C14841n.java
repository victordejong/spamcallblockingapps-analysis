package p193e.p194a.p837h0;

import android.content.SharedPreferences;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.h0.n */
/* loaded from: classes9-dex2jar.jar:e/a/h0/n.class */
public class C14841n implements AbstractC14840m {

    /* renamed from: a */
    public final SharedPreferences f42422a;

    /* renamed from: b */
    public final C14845p f42423b;

    public C14841n(SharedPreferences sharedPreferences, C14845p c14845p) {
        this.f42422a = sharedPreferences;
        this.f42423b = c14845p;
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: A */
    public void mo19568A(Integer num) {
        SharedPreferences.Editor edit = this.f42422a.edit();
        if (num == null) {
            edit.remove("filter_topSpammersMaxSize");
        } else {
            edit.putInt("filter_topSpammersMaxSize", num.intValue());
        }
        edit.apply();
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: a */
    public void mo19567a(boolean z) {
        C22128a.m8577r0(this.f42422a, "filter_filteringIndianRegisteredTelemarketers", z);
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: b */
    public boolean mo19566b() {
        return this.f42422a.getBoolean("filter_filteringNonPhonebook", false);
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: c */
    public void mo19565c(boolean z) {
        SharedPreferences.Editor edit = this.f42422a.edit();
        edit.putBoolean("filter_filterSettingsNeedsUpload", z);
        edit.apply();
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: d */
    public void mo19564d(long j) {
        SharedPreferences.Editor edit = this.f42422a.edit();
        edit.putLong("filter_topSpammersSyncLastUpdateTimestamp", j);
        edit.apply();
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: e */
    public void mo19563e(Integer num) {
        SharedPreferences.Editor edit = this.f42422a.edit();
        if (num == null) {
            edit.remove("filter_topSpammersPremiumMaxSize");
        } else {
            edit.putInt("filter_topSpammersPremiumMaxSize", num.intValue());
        }
        edit.apply();
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: f */
    public boolean mo19562f() {
        return this.f42422a.getBoolean("filter_filteringNeighbourSpoofing", false);
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: g */
    public void mo19561g(boolean z) {
        SharedPreferences.Editor edit = this.f42422a.edit();
        edit.putBoolean("filter_filteringForeignNumbers", z);
        edit.apply();
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: h */
    public Boolean mo19560h() {
        if (!this.f42422a.contains("filter_autoUpdateTopSpammers")) {
            return null;
        }
        return Boolean.valueOf(this.f42422a.getBoolean("filter_autoUpdateTopSpammers", false));
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: i */
    public Integer mo19559i() {
        if (this.f42422a.contains("filter_filteringNeighbourSpoofingMatchingDigits")) {
            return Integer.valueOf(this.f42422a.getInt("filter_filteringNeighbourSpoofingMatchingDigits", Integer.MIN_VALUE));
        }
        return null;
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: j */
    public void mo19558j(boolean z) {
        SharedPreferences.Editor edit = this.f42422a.edit();
        edit.putBoolean("filter_filteringUnknown", z);
        edit.apply();
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: k */
    public void mo19557k(boolean z) {
        SharedPreferences.Editor edit = this.f42422a.edit();
        edit.putBoolean("filter_filteringTopSpammers", z);
        edit.apply();
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: l */
    public int mo19556l() {
        return this.f42422a.getInt("filter_topSpammersMaxSize", 2000);
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: m */
    public void mo19555m(boolean z) {
        SharedPreferences.Editor edit = this.f42422a.edit();
        edit.putBoolean("filter_filteringNonPhonebook", z);
        edit.apply();
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: n */
    public boolean mo19554n() {
        boolean z = System.currentTimeMillis() - mo19545w() < 1209600000;
        boolean z2 = true;
        if (!this.f42422a.getBoolean("filter_updateNeeded", false)) {
            z2 = !z;
        }
        return z2;
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: o */
    public void mo19553o(boolean z) {
        SharedPreferences.Editor edit = this.f42422a.edit();
        edit.putBoolean("filter_filteringNeighbourSpoofing", z);
        edit.apply();
        if (!z || mo19559i() != null) {
            return;
        }
        int m19535b = this.f42423b.m19535b(5);
        SharedPreferences.Editor edit2 = this.f42422a.edit();
        edit2.putInt("filter_filteringNeighbourSpoofingMatchingDigits", m19535b);
        edit2.apply();
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: p */
    public void mo19552p(boolean z) {
        SharedPreferences.Editor edit = this.f42422a.edit();
        edit.putBoolean("filter_updateNeeded", z);
        edit.apply();
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: q */
    public int mo19551q() {
        return this.f42422a.getInt("filter_topSpammersPremiumMaxSize", 2000);
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: r */
    public boolean mo19550r() {
        return this.f42422a.getBoolean("filter_filteringUnknown", false);
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: s */
    public boolean mo19549s() {
        return this.f42422a.getBoolean("filter_filteringIndianRegisteredTelemarketers", false);
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: t */
    public void mo19548t(Boolean bool) {
        SharedPreferences.Editor edit = this.f42422a.edit();
        if (bool == null) {
            edit.remove("filter_autoUpdateTopSpammers").apply();
        } else {
            edit.putBoolean("filter_autoUpdateTopSpammers", bool.booleanValue()).apply();
        }
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: u */
    public boolean mo19547u() {
        return this.f42422a.getBoolean("filter_filteringTopSpammers", false);
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: v */
    public void mo19546v(long j) {
        SharedPreferences.Editor edit = this.f42422a.edit();
        edit.putLong("filter_filterSyncLastUpdateTimestamp", j);
        edit.apply();
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: w */
    public long mo19545w() {
        return this.f42422a.getLong("filter_topSpammersSyncLastUpdateTimestamp", 0L);
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: x */
    public boolean mo19544x() {
        return this.f42422a.getBoolean("filter_filteringForeignNumbers", false);
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: y */
    public boolean mo19543y() {
        return this.f42422a.getBoolean("filter_filterSettingsNeedsUpload", false);
    }

    @Override // p193e.p194a.p837h0.AbstractC14840m
    /* renamed from: z */
    public void mo19542z(int i) {
        SharedPreferences.Editor edit = this.f42422a.edit();
        edit.putInt("filter_filteringNeighbourSpoofingMatchingDigits", i);
        edit.apply();
    }
}
