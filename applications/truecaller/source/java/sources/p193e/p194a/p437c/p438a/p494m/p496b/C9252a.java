package p193e.p194a.p437c.p438a.p494m.p496b;

import com.truecaller.insights.models.pdo.SmsBackupMessage;
import p1727n3.p1744b0.p1745a.C25586h;
import s1.z.c.l;
/* renamed from: e.a.c.a.m.b.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/a.class */
public final class C9252a extends C25586h.AbstractC25591e<SmsBackupMessage> {
    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25591e
    public boolean areContentsTheSame(SmsBackupMessage smsBackupMessage, SmsBackupMessage smsBackupMessage2) {
        SmsBackupMessage smsBackupMessage3 = smsBackupMessage;
        SmsBackupMessage smsBackupMessage4 = smsBackupMessage2;
        l.e(smsBackupMessage3, "oldItem");
        l.e(smsBackupMessage4, "newItem");
        return l.a(smsBackupMessage3, smsBackupMessage4);
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25591e
    public boolean areItemsTheSame(SmsBackupMessage smsBackupMessage, SmsBackupMessage smsBackupMessage2) {
        SmsBackupMessage smsBackupMessage3 = smsBackupMessage;
        SmsBackupMessage smsBackupMessage4 = smsBackupMessage2;
        l.e(smsBackupMessage3, "oldItem");
        l.e(smsBackupMessage4, "newItem");
        return l.a(smsBackupMessage3, smsBackupMessage4);
    }
}
