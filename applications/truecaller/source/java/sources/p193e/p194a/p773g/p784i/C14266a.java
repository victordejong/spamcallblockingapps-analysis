package p193e.p194a.p773g.p784i;

import androidx.appcompat.widget.SwitchCompat;
import com.truecaller.acs.p130qa.AcsQaActivity;
import com.truecaller.searchwarnings.data.SearchWarningDTO;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1059m3.C18143a;
import p193e.p194a.p1359x4.p1360j.AbstractC21427a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.acs.qa.AcsQaActivity$insertSearchWarningsIfChosen$1", f = "AcsQaActivity.kt", l = {99}, m = "invokeSuspend")
/* renamed from: e.a.g.i.a */
/* loaded from: classes4-dex2jar.jar:e/a/g/i/a.class */
public final class C14266a extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f41307e;

    /* renamed from: f */
    public final /* synthetic */ AcsQaActivity f41308f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14266a(AcsQaActivity acsQaActivity, d dVar) {
        super(2, dVar);
        this.f41308f = acsQaActivity;
    }

    /* renamed from: i */
    public final d<s> m20309i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14266a(this.f41308f, dVar);
    }

    /* renamed from: k */
    public final Object m20308k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14266a(this.f41308f, dVar).m20307s(s.a);
    }

    /* renamed from: s */
    public final Object m20307s(Object obj) {
        a aVar = a.a;
        int i = this.f41307e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AcsQaActivity acsQaActivity = this.f41308f;
            int i2 = AcsQaActivity.f9669h;
            AbstractC21427a mo12628N3 = acsQaActivity.m36026ra().mo12628N3();
            C18143a c18143a = this.f41308f.f9676g;
            if (c18143a == null) {
                l.l("binding");
                throw null;
            }
            SwitchCompat switchCompat = c18143a.f51074m;
            l.d(switchCompat, "binding.hasSearchWarningsMessage");
            SearchWarningDTO searchWarningDTO = new SearchWarningDTO("2147483647", "Potential sales", switchCompat.isChecked() ? "Potential sales veeeeeeeeeeeeeeeery looooooooooong message" : "", "#00FF00", "#1900FF", "https://storage.googleapis.com/tc-search-context-eu/message-icon/ic_fraud.png");
            this.f41307e = 1;
            if (mo12628N3.mo9740d(new SearchWarningDTO[]{searchWarningDTO}, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
