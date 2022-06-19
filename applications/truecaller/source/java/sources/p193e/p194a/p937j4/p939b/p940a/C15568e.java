package p193e.p194a.p937j4.p939b.p940a;

import com.truecaller.network.notification.NotificationType;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import java.util.Collection;
import java.util.HashMap;
import p193e.p194a.p937j4.p939b.p940a.AbstractC15572i;
/* renamed from: e.a.j4.b.a.e */
/* loaded from: classes11-dex2jar.jar:e/a/j4/b/a/e.class */
public class C15568e implements AbstractC15572i.AbstractC15573a<InternalTruecallerNotification> {
    public C15568e(C15569f c15569f) {
    }

    @Override // p193e.p194a.p937j4.p939b.p940a.AbstractC15572i.AbstractC15573a
    /* renamed from: a */
    public boolean mo18617a(InternalTruecallerNotification internalTruecallerNotification) {
        return internalTruecallerNotification.m34842q() == NotificationType.SOFTWARE_UPDATE;
    }

    @Override // p193e.p194a.p937j4.p939b.p940a.AbstractC15572i.AbstractC15573a
    /* renamed from: b */
    public InternalTruecallerNotification mo18616b(Collection<InternalTruecallerNotification> collection) {
        return new InternalTruecallerNotification(collection, new HashMap());
    }
}
