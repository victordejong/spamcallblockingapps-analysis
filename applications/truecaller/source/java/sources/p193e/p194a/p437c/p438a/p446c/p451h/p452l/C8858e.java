package p193e.p194a.p437c.p438a.p446c.p451h.p452l;

import androidx.fragment.app.FragmentManager;
import com.truecaller.insights.models.pdo.SmsBackupMessage;
import java.util.Iterator;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p442b.p443a.C8749v;
import p193e.p194a.p437c.p552i.p557e.C10328a;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
import w3.b.a.b;
/* renamed from: e.a.c.a.c.h.l.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/l/e.class */
public final class C8858e extends m implements l<SmsBackupMessage, s> {

    /* renamed from: b */
    public final /* synthetic */ AbstractC10616p f26980b;

    /* renamed from: c */
    public final /* synthetic */ boolean f26981c;

    /* renamed from: d */
    public final /* synthetic */ FragmentManager f26982d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8858e(AbstractC10616p abstractC10616p, boolean z, FragmentManager fragmentManager) {
        super(1);
        this.f26980b = abstractC10616p;
        this.f26981c = z;
        this.f26982d = fragmentManager;
    }

    /* renamed from: d */
    public Object m28003d(Object obj) {
        Object obj2;
        String str;
        SmsBackupMessage smsBackupMessage = (SmsBackupMessage) obj;
        s1.z.c.l.e(smsBackupMessage, "it");
        List<C10328a> m3962T1 = C25225a.m3962T1(new C10328a(smsBackupMessage.getMessage(), smsBackupMessage.getAddress(), null, new b(smsBackupMessage.getDate().getTime()), this.f26980b, this.f26981c));
        Iterator it = m3962T1.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj2 = null;
                break;
            }
            obj2 = it.next();
            if (((C10328a) obj2).f30674b != null) {
                break;
            }
        }
        C10328a c10328a = (C10328a) obj2;
        if (c10328a != null && (str = c10328a.f30674b) != null) {
            C8749v.f26714k.m28089a(m3962T1, str, this.f26981c).show(this.f26982d, C8749v.f26713j);
        }
        return s.a;
    }
}
