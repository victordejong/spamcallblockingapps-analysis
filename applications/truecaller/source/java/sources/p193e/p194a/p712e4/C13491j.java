package p193e.p194a.p712e4;

import android.os.Bundle;
/* renamed from: e.a.e4.j */
/* loaded from: classes11-dex2jar.jar:e/a/e4/j.class */
public class C13491j implements AbstractC13490i {

    /* renamed from: a */
    public final Bundle f39134a;

    public C13491j(Bundle bundle) {
        this.f39134a = bundle;
    }

    @Override // p193e.p194a.p712e4.AbstractC13490i
    /* renamed from: a */
    public int mo21764a() {
        return this.f39134a.getInt("maxImageWidth", 0);
    }

    @Override // p193e.p194a.p712e4.AbstractC13490i
    /* renamed from: b */
    public boolean mo21763b() {
        return this.f39134a.getBoolean("sendMultipartSmsAsSeparateMessages");
    }

    @Override // p193e.p194a.p712e4.AbstractC13490i
    /* renamed from: c */
    public int mo21762c() {
        return this.f39134a.getInt("maxImageHeight", 0);
    }

    @Override // p193e.p194a.p712e4.AbstractC13490i
    /* renamed from: d */
    public boolean mo21761d() {
        return this.f39134a.getBoolean("enableSMSDeliveryReports", true);
    }

    @Override // p193e.p194a.p712e4.AbstractC13490i
    /* renamed from: e */
    public boolean mo21760e() {
        return this.f39134a.getBoolean("enabledNotifyWapMMSC", true);
    }

    @Override // p193e.p194a.p712e4.AbstractC13490i
    /* renamed from: f */
    public boolean mo21759f() {
        return this.f39134a.getBoolean("supportMmsContentDisposition", true);
    }

    @Override // p193e.p194a.p712e4.AbstractC13490i
    /* renamed from: g */
    public int mo21758g() {
        return this.f39134a.getInt("maxMessageSize", 0);
    }
}
