package p193e.p194a.p798g5.p802e0;

import com.truecaller.tagger.tagPicker.TaggerViewModel;
import java.util.List;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p194a.p372b0.p426p.C8551c;
import s1.o;
/* renamed from: e.a.g5.e0.s */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/s.class */
public final class C14502s<T> implements AbstractC27012l0<List<? extends C8551c>> {

    /* renamed from: a */
    public final /* synthetic */ TaggerViewModel f41743a;

    /* renamed from: b */
    public final /* synthetic */ String f41744b;

    /* renamed from: c */
    public final /* synthetic */ boolean f41745c;

    public C14502s(TaggerViewModel taggerViewModel, String str, boolean z) {
        this.f41743a = taggerViewModel;
        this.f41744b = str;
        this.f41745c = z;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(List<? extends C8551c> list) {
        this.f41743a.f15289d.mo1000l(new o(this.f41744b, list, Boolean.valueOf(this.f41745c)));
    }
}
