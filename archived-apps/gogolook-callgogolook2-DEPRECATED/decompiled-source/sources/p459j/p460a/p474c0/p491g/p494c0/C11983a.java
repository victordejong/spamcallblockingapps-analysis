package p459j.p460a.p474c0.p491g.p494c0;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.messaging.p078ui.PersonItemView;
import p459j.p460a.p474c0.p475c.p478y.AbstractC11631n;
import p459j.p460a.p474c0.p475c.p478y.C11608e;
import p459j.p460a.p474c0.p491g.AbstractC12082g;
import p459j.p460a.p582w0.C14108o4;
/* renamed from: j.a.c0.g.c0.a */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/c0/a.class */
public class C11983a extends AbstractC12082g<C11985b> {

    /* renamed from: h */
    public final AbstractC11984a f26871h;

    /* renamed from: j.a.c0.g.c0.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/c0/a$a.class */
    public interface AbstractC11984a {
        /* renamed from: a */
        void mo7634a(C11608e eVar);
    }

    /* renamed from: j.a.c0.g.c0.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/c0/a$b.class */
    public class C11985b extends RecyclerView.ViewHolder implements PersonItemView.AbstractC4697c {

        /* renamed from: a */
        public final C11608e f26872a = new C11608e();

        /* renamed from: b */
        public final AbstractC11631n f26873b = new C11986a();

        /* renamed from: j.a.c0.g.c0.a$b$a */
        /* loaded from: classes3-dex2jar.jar:j/a/c0/g/c0/a$b$a.class */
        public class C11986a extends AbstractC11631n {
            public C11986a() {
            }

            @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
            /* renamed from: f */
            public Uri mo7643f() {
                return C11985b.this.f26872a.m8957b() == null ? null : Uri.parse(C11985b.this.f26872a.m8957b());
            }

            @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
            /* renamed from: g */
            public Intent mo7642g() {
                return null;
            }

            @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
            /* renamed from: h */
            public long mo7641h() {
                return -1L;
            }

            @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
            /* renamed from: i */
            public String mo7640i() {
                String e = C11985b.this.f26872a.m8954e();
                String a = C14108o4.m2493a(C11985b.this.f26872a.m8950i(), false, false);
                if (a == null || a.equals(e)) {
                    return null;
                }
                return a;
            }

            @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
            /* renamed from: j */
            public String mo7639j() {
                return C11985b.this.f26872a.m8954e();
            }

            @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
            /* renamed from: k */
            public String mo7638k() {
                return null;
            }

            @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
            /* renamed from: l */
            public String mo7637l() {
                return null;
            }
        }

        public C11985b(PersonItemView personItemView) {
            super(personItemView);
            personItemView.m27337a(this);
            personItemView.m27331b(true);
        }

        /* renamed from: a */
        public void m7647a(Cursor cursor) {
            this.f26872a.m8961a(cursor);
            ((PersonItemView) this.itemView).m27332b(this.f26873b);
        }

        @Override // gogolook.callgogolook2.messaging.p078ui.PersonItemView.AbstractC4697c
        /* renamed from: a */
        public void mo7646a(AbstractC11631n nVar) {
            C11983a.this.f26871h.mo7634a(this.f26872a);
        }

        @Override // gogolook.callgogolook2.messaging.p078ui.PersonItemView.AbstractC4697c
        /* renamed from: b */
        public boolean mo7644b(AbstractC11631n nVar) {
            return false;
        }
    }

    public C11983a(Context context, Cursor cursor, AbstractC11984a aVar) {
        super(context, cursor, 0);
        this.f26871h = aVar;
        setHasStableIds(true);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12082g
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C11985b mo7205a(Context context, ViewGroup viewGroup, int i) {
        return new C11985b((PersonItemView) LayoutInflater.from(context).inflate(R$layout.people_list_item_view, (ViewGroup) null));
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo7203a(C11985b bVar, Context context, Cursor cursor) {
        bVar.m7647a(cursor);
    }
}
