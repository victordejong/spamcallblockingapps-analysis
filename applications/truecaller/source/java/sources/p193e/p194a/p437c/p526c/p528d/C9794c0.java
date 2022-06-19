package p193e.p194a.p437c.p526c.p528d;

import com.truecaller.insights.models.pdo.SmsBackupMessage;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1909z.AbstractC27603v;
import p193e.p194a.p437c.p531c0.C10020g;
/* renamed from: e.a.c.c.d.c0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/c0.class */
public final class C9794c0 implements AbstractC9789a0 {

    /* renamed from: a */
    public final AbstractC25677q f29430a;

    /* renamed from: b */
    public final C10020g f29431b = new C10020g();

    /* renamed from: e.a.c.c.d.c0$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/c0$a.class */
    public class C9795a extends AbstractC27603v.AbstractC27605b<Integer, SmsBackupMessage> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29432a;

        public C9795a(C25686y c25686y) {
            C9794c0.this = r4;
            this.f29432a = c25686y;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [n3.z.v<java.lang.Integer, com.truecaller.insights.models.pdo.SmsBackupMessage>, e.a.c.c.d.b0] */
        @Override // p1727n3.p1909z.AbstractC27603v.AbstractC27605b
        /* renamed from: a */
        public AbstractC27603v<Integer, SmsBackupMessage> mo20a() {
            return new C9792b0(this, C9794c0.this.f29430a, this.f29432a, false, true, "sms_backup_table", "sms_message_fts");
        }
    }

    public C9794c0(AbstractC25677q abstractC25677q) {
        this.f29430a = abstractC25677q;
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9789a0
    /* renamed from: a */
    public AbstractC27603v.AbstractC27605b<Integer, SmsBackupMessage> mo27160a(String str) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT \n            Messages.messageID,\n            Messages.address,\n            Messages.message,\n            Messages.date,\n            Messages.conversationId\n        FROM sms_backup_table AS Messages\n        JOIN  sms_message_fts ON (messageID = docid)\n        WHERE sms_message_fts MATCH ?\n    ", 1);
        m3059j.mo2651f0(1, str);
        return new C9795a(m3059j);
    }
}
