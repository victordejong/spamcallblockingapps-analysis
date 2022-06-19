package p193e.p194a.p947k.p948a.p954e;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.analytics.SourceType;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1275v.p1309p.C20940n;
import p193e.p194a.p947k.AbstractC16116j;
import p193e.p194a.p947k.C16117k;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.ui.manageincomingvideo.ManageIncomingVideoSettingPresenter$onHiddenContactClicked$1", f = "ManageIncomingVideoSettingPresenter.kt", l = {73}, m = "invokeSuspend")
/* renamed from: e.a.k.a.e.g */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/e/g.class */
public final class C15664g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f44220e;

    /* renamed from: f */
    public final /* synthetic */ C15666i f44221f;

    /* renamed from: g */
    public final /* synthetic */ C15657a f44222g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15664g(C15666i c15666i, C15657a c15657a, d dVar) {
        super(2, dVar);
        this.f44221f = c15666i;
        this.f44222g = c15657a;
    }

    /* renamed from: i */
    public final d<s> m18536i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C15664g(this.f44221f, this.f44222g, dVar);
    }

    /* renamed from: k */
    public final Object m18535k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C15664g(this.f44221f, this.f44222g, dVar).m18534s(s.a);
    }

    /* renamed from: s */
    public final Object m18534s(Object obj) {
        a aVar = a.a;
        int i = this.f44220e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16116j abstractC16116j = this.f44221f.f44228f;
            String str = this.f44222g.f44206b;
            this.f44220e = 1;
            Object m17808c = ((C16117k) abstractC16116j).m17808c(str, this);
            obj = m17808c;
            if (m17808c == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        Contact contact = (Contact) obj;
        if (contact != null) {
            C16117k c16117k = (C16117k) this.f44221f.f44228f;
            Objects.requireNonNull(c16117k);
            l.e(contact, AnalyticsConstants.CONTACT);
            C20940n c20940n = C20940n.f58889a;
            Context context = c16117k.f45420g;
            Intent m10485c = C20940n.m10485c(c20940n, context, contact, SourceType.VideoCallerIdHiddenContact, true, true, Boolean.FALSE, null, 64);
            m10485c.addFlags(268435456);
            c20940n.m10483e(context, m10485c);
        }
        return s.a;
    }
}
