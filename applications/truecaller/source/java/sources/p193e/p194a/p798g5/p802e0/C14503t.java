package p193e.p194a.p798g5.p802e0;

import com.truecaller.data.entity.Contact;
import com.truecaller.tagger.tagPicker.TaggerViewModel;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.p799b0.C14462a;
import s1.o;
/* renamed from: e.a.g5.e0.t */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/t.class */
public final class C14503t<R> implements AbstractC19851d0<Void> {

    /* renamed from: a */
    public final /* synthetic */ Contact f41746a;

    /* renamed from: b */
    public final /* synthetic */ TaggerViewModel f41747b;

    /* renamed from: c */
    public final /* synthetic */ C8551c f41748c;

    public C14503t(Contact contact, TaggerViewModel taggerViewModel, C8551c c8551c) {
        this.f41746a = contact;
        this.f41747b = taggerViewModel;
        this.f41748c = c8551c;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19851d0
    public void onResult(Void r10) {
        this.f41747b.f15291f.mo1001j(new C14462a<>(new o(this.f41748c, this.f41746a, Boolean.TRUE)));
    }
}
