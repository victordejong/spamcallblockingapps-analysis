package p193e.p194a.p437c.p526c.p528d;

import com.truecaller.insights.core.senderresolution.model.SenderResolutionBatchEntity;
import com.truecaller.insights.models.senders.resolution.SenderResolutionEntity;
import java.util.Date;
import java.util.List;
import s1.s;
import s1.w.d;
import s1.w.j.a;
/* renamed from: e.a.c.c.d.h0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/h0.class */
public abstract class AbstractC9868h0 {
    /* renamed from: a */
    public abstract SenderResolutionEntity mo27064a(String str);

    /* renamed from: b */
    public abstract Object mo27063b(Date date, Date date2, int i, d<? super List<SenderResolutionBatchEntity>> dVar);

    /* renamed from: c */
    public abstract Object mo27062c(SenderResolutionEntity senderResolutionEntity, d<? super s> dVar);

    /* renamed from: d */
    public abstract Object mo27061d(List<SenderResolutionEntity> list, d<? super s> dVar);

    /* renamed from: e */
    public Object mo27060e(List<SenderResolutionEntity> list, d<? super s> dVar) {
        s mo27061d = mo27061d(list, dVar);
        if (mo27061d != a.a) {
            mo27061d = s.a;
        }
        return mo27061d;
    }

    /* renamed from: f */
    public abstract void mo27059f(String str, String str2, String str3);
}
