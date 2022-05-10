package p131c.p161d.p282e.p315q.p328q0;

import android.text.TextUtils;
import com.google.firebase.inappmessaging.CommonTypesProto$TriggeringCondition;
import com.google.internal.firebase.inappmessaging.p495v1.CampaignProto$ThickContent;
import io.reactivex.BackpressureStrategy;
import java.util.HashSet;
import java.util.Set;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p131c.p161d.p362g.p363a.p364a.p365a.p366g.C6267i;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9816f;
import p530d.p541c.AbstractC9818g;
import p530d.p541c.p570z.AbstractC9864a;
/* renamed from: c.d.e.q.q0.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/c.class */
public class C5644c {

    /* renamed from: a */
    public final AbstractC5143a f18720a;

    /* renamed from: b */
    public final AbstractC9864a<String> f18721b;

    /* renamed from: c */
    public AbstractC5143a.AbstractC5144a f18722c;

    /* renamed from: c.d.e.q.q0.c$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/c$a.class */
    public class C5645a implements AbstractC9818g<String> {
        public C5645a() {
        }

        @Override // p530d.p541c.AbstractC9818g
        /* renamed from: a */
        public void mo1917a(AbstractC9816f<String> fVar) {
            C5694l2.m23216a("Subscribing to analytics events.");
            C5644c cVar = C5644c.this;
            cVar.f18722c = cVar.f18720a.mo23141a("fiam", new C5676i0(fVar));
        }
    }

    public C5644c(AbstractC5143a aVar) {
        this.f18720a = aVar;
        AbstractC9864a<String> e = AbstractC9814e.m1966a(new C5645a(), BackpressureStrategy.BUFFER).m1948e();
        this.f18721b = e;
        e.m1821i();
    }

    /* renamed from: b */
    public static Set<String> m23344b(C6267i iVar) {
        HashSet hashSet = new HashSet();
        for (CampaignProto$ThickContent campaignProto$ThickContent : iVar.m21704w()) {
            for (CommonTypesProto$TriggeringCondition commonTypesProto$TriggeringCondition : campaignProto$ThickContent.m7098C()) {
                if (!TextUtils.isEmpty(commonTypesProto$TriggeringCondition.m7333v().m23684v())) {
                    hashSet.add(commonTypesProto$TriggeringCondition.m7333v().m23684v());
                }
            }
        }
        if (hashSet.size() > 50) {
            C5694l2.m23214c("Too many contextual triggers defined - limiting to 50");
        }
        return hashSet;
    }

    /* renamed from: a */
    public AbstractC9864a<String> m23348a() {
        return this.f18721b;
    }

    /* renamed from: a */
    public void m23345a(C6267i iVar) {
        Set<String> b = m23344b(iVar);
        C5694l2.m23216a("Updating contextual triggers for the following analytics events: " + b);
        this.f18722c.mo23135a(b);
    }
}
