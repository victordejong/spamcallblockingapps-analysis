package p193e.p194a.p712e4;

import android.os.PersistableBundle;
/* renamed from: e.a.e4.k */
/* loaded from: classes11-dex2jar.jar:e/a/e4/k.class */
public class C13492k implements AbstractC13490i {

    /* renamed from: a */
    public final PersistableBundle f39135a;

    public C13492k(PersistableBundle persistableBundle) {
        this.f39135a = persistableBundle;
    }

    @Override // p193e.p194a.p712e4.AbstractC13490i
    /* renamed from: a */
    public int mo21764a() {
        return this.f39135a.getInt("maxImageWidth", 0);
    }

    @Override // p193e.p194a.p712e4.AbstractC13490i
    /* renamed from: b */
    public boolean mo21763b() {
        return this.f39135a.getBoolean("sendMultipartSmsAsSeparateMessages");
    }

    @Override // p193e.p194a.p712e4.AbstractC13490i
    /* renamed from: c */
    public int mo21762c() {
        return this.f39135a.getInt("maxImageHeight", 0);
    }

    @Override // p193e.p194a.p712e4.AbstractC13490i
    /* renamed from: d */
    public boolean mo21761d() {
        return this.f39135a.getBoolean("enableSMSDeliveryReports", true);
    }

    @Override // p193e.p194a.p712e4.AbstractC13490i
    /* renamed from: e */
    public boolean mo21760e() {
        return this.f39135a.getBoolean("enabledNotifyWapMMSC", true);
    }

    @Override // p193e.p194a.p712e4.AbstractC13490i
    /* renamed from: f */
    public boolean mo21759f() {
        return this.f39135a.getBoolean("supportMmsContentDisposition", true);
    }

    @Override // p193e.p194a.p712e4.AbstractC13490i
    /* renamed from: g */
    public int mo21758g() {
        return this.f39135a.getInt("maxMessageSize", 0);
    }
}
