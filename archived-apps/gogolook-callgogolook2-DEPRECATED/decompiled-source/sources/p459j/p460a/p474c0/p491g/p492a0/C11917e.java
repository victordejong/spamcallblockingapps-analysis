package p459j.p460a.p474c0.p491g.p492a0;

import android.content.Context;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import gogolook.callgogolook2.messaging.p078ui.contact.ContactListItemView;
import p081h.p093b.p099c.p100a.AbstractC5598e;
import p081h.p093b.p099c.p100a.C5607h;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11646d;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11669o;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11672r;
import p459j.p460a.p474c0.p475c.p479z.C11643c;
import p459j.p460a.p474c0.p475c.p479z.C11675t;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12155e;
import p459j.p460a.p474c0.p499h.C12204q0;
/* renamed from: j.a.c0.g.a0.e */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/a0/e.class */
public class C11917e implements AbstractC5598e {

    /* renamed from: a */
    public final Context f26711a;

    /* renamed from: b */
    public final int f26712b;

    /* renamed from: j.a.c0.g.a0.e$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/a0/e$a.class */
    public class RunnableC11918a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C5607h f26713a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC5598e.AbstractC5599a f26714b;

        /* renamed from: j.a.c0.g.a0.e$a$a */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/g/a0/e$a$a.class */
        public class C11919a implements C11675t.AbstractC11679d<AbstractC11669o> {
            public C11919a() {
            }

            /* renamed from: a  reason: avoid collision after fix types in other method */
            public void mo7924a(AbstractC11672r<AbstractC11669o> rVar, AbstractC11669o oVar, boolean z) {
                RunnableC11918a.this.f26713a.m25031a(oVar.mo8675o());
                RunnableC11918a.this.f26714b.mo25057c();
            }

            @Override // p459j.p460a.p474c0.p475c.p479z.C11675t.AbstractC11679d
            /* renamed from: a */
            public void mo7923a(AbstractC11672r<AbstractC11669o> rVar, Exception exc) {
                C12153d0.m6987b("MessagingApp", "Photo bytes loading failed due to " + exc + " request key=" + rVar.getKey());
                RunnableC11918a.this.f26714b.mo25059a();
            }
        }

        public RunnableC11918a(C5607h hVar, AbstractC5598e.AbstractC5599a aVar) {
            this.f26713a = hVar;
            this.f26714b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC11646d<AbstractC11669o> a = new C11643c(C12155e.m6975a(ParticipantData.m27540a(this.f26713a)), C11917e.this.f26712b, C11917e.this.f26712b).m8658a(C11917e.this.f26711a, new C11919a());
            a.mo8736a("imagebytes");
            AbstractC11516a.m9413n().mo9401h().m8648c(a);
        }
    }

    public C11917e(Context context, ContactListItemView.AbstractC4717a aVar) {
        this.f26711a = context;
        this.f26712b = context.getResources().getDimensionPixelSize(R$dimen.compose_message_chip_height) - (context.getResources().getDimensionPixelSize(R$dimen.compose_message_chip_padding) * 2);
    }

    @Override // p081h.p093b.p099c.p100a.AbstractC5598e
    /* renamed from: a */
    public void mo7928a(C5607h hVar, AbstractC5598e.AbstractC5599a aVar) {
        C12204q0.m6814a().post(new RunnableC11918a(hVar, aVar));
    }
}
