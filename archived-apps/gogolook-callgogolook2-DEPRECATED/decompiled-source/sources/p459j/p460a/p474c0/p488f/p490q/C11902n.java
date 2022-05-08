package p459j.p460a.p474c0.p488f.p490q;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import p459j.p460a.p474c0.p475c.p478y.C11636q;
import p459j.p460a.p474c0.p488f.C11837k;
import p459j.p460a.p474c0.p488f.p489p.AbstractC11844a;
import p459j.p460a.p474c0.p488f.p490q.AbstractC11893j;
import p459j.p460a.p474c0.p488f.p490q.C11876e;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e;
import p459j.p460a.p582w0.p590x4.p591a0.C14234c;
import p626l.C14979k;
import p626l.p632u.C15022n;
import p626l.p632u.C15029u;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15059b;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15162x;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n��\n\u0002\u0010\"\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0005¢\u0006\u0002\u0010\bJ\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\fH\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0007H\u0002J\u0011\u0010\u0010\u001a\u00020\u0011H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0012R\u001c\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0005X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/messaging/sms/job/SyncBatchInferSmsJob;", "Lgogolook/callgogolook2/messaging/sms/job/SmsJob;", "callback", "Lgogolook/callgogolook2/messaging/sms/job/SmsJob$SmsJobCallback;", "msgIdToSmsDataMap", "", "", "Lgogolook/callgogolook2/messaging/datamodel/data/UnfilteredMessageData;", "(Lgogolook/callgogolook2/messaging/sms/job/SmsJob$SmsJobCallback;Ljava/util/Map;)V", "getInferSuccessConversationList", "", "messageIdList", "", "isNeedInfer", "", "sms", "startWork", "Lgogolook/callgogolook2/messaging/sms/job/SmsJob$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.f.q.n */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/n.class */
public final class C11902n extends AbstractC11893j {

    /* renamed from: b */
    public final Map<String, C11636q> f26686b;

    /* renamed from: j.a.c0.f.q.n$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/n$a.class */
    public static final class C11903a implements AbstractC11844a.AbstractC11845a {

        /* renamed from: a */
        public final /* synthetic */ C13930d f26687a;

        /* renamed from: b */
        public final /* synthetic */ List f26688b;

        /* renamed from: c */
        public final /* synthetic */ C15162x f26689c;

        /* renamed from: d */
        public final /* synthetic */ CancellableContinuation f26690d;

        /* renamed from: e */
        public final /* synthetic */ C11876e f26691e;

        /* renamed from: f */
        public final /* synthetic */ C11902n f26692f;

        public C11903a(C13930d dVar, List list, C15162x xVar, CancellableContinuation cancellableContinuation, C11876e eVar, C11902n nVar) {
            this.f26687a = dVar;
            this.f26688b = list;
            this.f26689c = xVar;
            this.f26690d = cancellableContinuation;
            this.f26691e = eVar;
            this.f26692f = nVar;
        }

        @Override // p459j.p460a.p474c0.p488f.p489p.AbstractC11844a.AbstractC11845a
        /* renamed from: a */
        public void mo7962a(AbstractC11893j.AbstractC11894a.C11896b bVar) {
            C15149k.m377b(bVar, "result");
            if (bVar instanceof C11876e.C11877a) {
                C15162x xVar = this.f26689c;
                int i = xVar.f33150a;
                C11876e.C11877a aVar = (C11876e.C11877a) bVar;
                xVar.f33150a = i + aVar.m8000a().size();
                C14080m2.m2616a("sms] filter} SyncBatchInferSmsJob - onInferSuccess, success count: " + this.f26689c.f33150a);
                this.f26691e.m8008a(aVar);
                C11876e eVar = this.f26691e;
                C11902n nVar = this.f26692f;
                Set<String> keySet = aVar.m8000a().keySet();
                C15149k.m383a((Object) keySet, "result.msgIdToFilterTypeMap.keys");
                eVar.m8006a(nVar.m7963a(keySet));
            }
        }

        @Override // p459j.p460a.p474c0.p488f.p489p.AbstractC11844a.AbstractC11845a
        /* renamed from: a */
        public void mo7961a(List<String> list) {
            C15149k.m377b(list, "keyList");
            C14080m2.m2616a("sms] filter} SyncBatchInferSmsJob - onInferFailed, fail count: " + list.size());
            this.f26691e.m8005a(list);
        }

        @Override // p459j.p460a.p474c0.p488f.p489p.AbstractC11844a.AbstractC11845a
        public void onComplete() {
            this.f26687a.m3017f();
            C11837k.m8068a("Batch_Infer_Complete_Status", true, this.f26688b.size(), this.f26689c.f33150a, this.f26687a.m3025a());
            CancellableContinuation cancellableContinuation = this.f26690d;
            AbstractC11893j.AbstractC11894a.C11896b bVar = new AbstractC11893j.AbstractC11894a.C11896b();
            C14979k.C14980a aVar = C14979k.f33013a;
            C14979k.m657a(bVar);
            cancellableContinuation.resumeWith(bVar);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11902n(AbstractC11893j.AbstractC11897b bVar, Map<String, C11636q> map) {
        super(bVar);
        C15149k.m377b(bVar, "callback");
        C15149k.m377b(map, "msgIdToSmsDataMap");
        this.f26686b = map;
    }

    @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11893j
    /* renamed from: a */
    public Object mo4042a(AbstractC15044d<? super AbstractC11893j.AbstractC11894a> dVar) {
        String b;
        String c;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
        Map map = this.f26686b;
        if (map == null || map.isEmpty()) {
            AbstractC11893j.AbstractC11894a.C11896b bVar = new AbstractC11893j.AbstractC11894a.C11896b();
            C14979k.C14980a aVar = C14979k.f33013a;
            C14979k.m657a(bVar);
            cancellableContinuationImpl.resumeWith(bVar);
        } else {
            ArrayList<C11636q> arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            C11876e eVar = new C11876e();
            C15162x xVar = new C15162x();
            xVar.f33150a = 0;
            for (C11636q qVar : C15029u.m532c((Iterable) this.f26686b.values())) {
                if (m7967a(qVar) && (b = qVar.m8742b()) != null) {
                    if ((b.length() > 0) && (c = qVar.m8741c()) != null) {
                        if (c.length() > 0) {
                            arrayList2.add(qVar);
                        }
                    }
                }
                arrayList.add(qVar);
            }
            if (arrayList2.size() > 0) {
                AbstractC14238e.C14239a.m2086a(new C14234c("Start_Batch_Infer"), null, 1, null);
                C13930d dVar2 = new C13930d();
                dVar2.m3018e();
                AbstractC11844a a = new C11876e().m8009a(new C11903a(dVar2, arrayList2, xVar, cancellableContinuationImpl, eVar, this));
                if (a != null) {
                    a.mo8038a(arrayList2);
                }
            }
            if (!arrayList.isEmpty()) {
                ArrayList arrayList3 = new ArrayList(C15022n.m555a(arrayList, 10));
                for (C11636q qVar2 : arrayList) {
                    arrayList3.add(qVar2.m8742b());
                }
                eVar.m8002b(arrayList3);
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return result;
    }

    /* renamed from: a */
    public final Collection<String> m7963a(Set<String> set) {
        String a;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : set) {
            C11636q qVar = this.f26686b.get(str);
            if (!(qVar == null || (a = qVar.m8744a()) == null)) {
                linkedHashSet.add(a);
            }
        }
        return linkedHashSet;
    }

    /* renamed from: a */
    public final boolean m7967a(C11636q qVar) {
        return !qVar.m8740d() && qVar.m8739e();
    }
}
