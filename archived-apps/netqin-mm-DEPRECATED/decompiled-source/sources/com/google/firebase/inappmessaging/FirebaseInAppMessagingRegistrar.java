package com.google.firebase.inappmessaging;

import android.app.Application;
import android.content.Context;
import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p170b.p173b.AbstractC2497f;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p283i.p284c.C5141a;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p131c.p161d.p282e.p288k.AbstractC5165e;
import p131c.p161d.p282e.p288k.AbstractC5171h;
import p131c.p161d.p282e.p288k.C5162d;
import p131c.p161d.p282e.p288k.C5180n;
import p131c.p161d.p282e.p313o.AbstractC5473d;
import p131c.p161d.p282e.p315q.C5841r;
import p131c.p161d.p282e.p315q.C5882w;
import p131c.p161d.p282e.p315q.p328q0.C5639b;
import p131c.p161d.p282e.p315q.p328q0.C5727r2;
import p131c.p161d.p282e.p315q.p328q0.p329s3.p330a.AbstractC5740a;
import p131c.p161d.p282e.p315q.p328q0.p329s3.p330a.AbstractC5764d;
import p131c.p161d.p282e.p315q.p328q0.p329s3.p330a.C5742b;
import p131c.p161d.p282e.p315q.p328q0.p329s3.p330a.C5761c;
import p131c.p161d.p282e.p315q.p328q0.p329s3.p331b.C5765a;
import p131c.p161d.p282e.p315q.p328q0.p329s3.p331b.C5766a0;
import p131c.p161d.p282e.p315q.p328q0.p329s3.p331b.C5771d;
import p131c.p161d.p282e.p315q.p328q0.p329s3.p331b.C5785k;
import p131c.p161d.p282e.p315q.p328q0.p329s3.p331b.C5791n;
import p131c.p161d.p282e.p315q.p328q0.p329s3.p331b.C5805v;
import p131c.p161d.p282e.p335s.AbstractC5898g;
import p131c.p161d.p282e.p351v.C6061h;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar.class */
public class FirebaseInAppMessagingRegistrar implements AbstractC5171h {
    /* JADX INFO: Access modifiers changed from: private */
    public C5841r providesFirebaseInAppMessaging(AbstractC5165e eVar) {
        C5128c cVar = (C5128c) eVar.mo24330a(C5128c.class);
        AbstractC5898g gVar = (AbstractC5898g) eVar.mo24330a(AbstractC5898g.class);
        AbstractC5143a aVar = (AbstractC5143a) eVar.mo24330a(AbstractC5143a.class);
        AbstractC5473d dVar = (AbstractC5473d) eVar.mo24330a(AbstractC5473d.class);
        Application application = (Application) cVar.m24468b();
        C5761c.C5763b q = C5761c.m23095q();
        q.m23090a(new C5791n(application));
        q.m23091a(new C5785k(aVar, dVar));
        q.m23092a(new C5765a());
        q.m23093a(new C5766a0(new C5727r2()));
        AbstractC5764d a = q.m23094a();
        AbstractC5740a.AbstractC5741a b = C5742b.m23103b();
        b.mo23100a(new C5639b(((C5141a) eVar.mo24330a(C5141a.class)).m24420b("fiam")));
        b.mo23098a(new C5771d(cVar, gVar, a.mo23077m()));
        b.mo23097a(new C5805v(cVar));
        b.mo23099a(a);
        b.mo23101a((AbstractC2497f) eVar.mo24330a(AbstractC2497f.class));
        return b.mo23102a().mo23105a();
    }

    @Override // p131c.p161d.p282e.p288k.AbstractC5171h
    @Keep
    public List<C5162d<?>> getComponents() {
        C5162d.C5164b a = C5162d.m24395a(C5841r.class);
        a.m24378a(C5180n.m24343c(Context.class));
        a.m24378a(C5180n.m24343c(AbstractC5898g.class));
        a.m24378a(C5180n.m24343c(C5128c.class));
        a.m24378a(C5180n.m24343c(C5141a.class));
        a.m24378a(C5180n.m24347a(AbstractC5143a.class));
        a.m24378a(C5180n.m24343c(AbstractC2497f.class));
        a.m24378a(C5180n.m24343c(AbstractC5473d.class));
        a.m24379a(C5882w.m22818a(this));
        a.m24376b();
        return Arrays.asList(a.m24382a(), C6061h.m22163a("fire-fiam", "19.1.2"));
    }
}
