package p193e.p194a.p947k.p948a.p959g;

import com.truecaller.videocallerid.p187ui.recording.customisation_option.VideoCustomisationOption;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter$onCustomisationOptionSelected$1", f = "RecordingPresenter.kt", l = {317, 318}, m = "invokeSuspend")
/* renamed from: e.a.k.a.g.d0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/d0.class */
public final class C15712d0 extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f44320e;

    /* renamed from: f */
    public final /* synthetic */ C15757y f44321f;

    /* renamed from: g */
    public final /* synthetic */ VideoCustomisationOption f44322g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15712d0(C15757y c15757y, VideoCustomisationOption videoCustomisationOption, d dVar) {
        super(1, dVar);
        this.f44321f = c15757y;
        this.f44322g = videoCustomisationOption;
    }

    /* renamed from: d */
    public final Object m18456d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C15712d0(this.f44321f, this.f44322g, dVar).m18454s(s.a);
    }

    /* renamed from: l */
    public final d<s> m18455l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C15712d0(this.f44321f, this.f44322g, dVar);
    }

    /* renamed from: s */
    public final Object m18454s(Object obj) {
        a aVar = a.a;
        int i = this.f44320e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            VideoCustomisationOption videoCustomisationOption = this.f44322g;
            if (videoCustomisationOption instanceof VideoCustomisationOption.C4735a) {
                this.f44320e = 1;
                if (this.f44321f.m18371Oj((VideoCustomisationOption.C4735a) videoCustomisationOption, this) == aVar) {
                    return aVar;
                }
            } else if (videoCustomisationOption instanceof VideoCustomisationOption.PredefinedVideo) {
                this.f44320e = 2;
                if (this.f44321f.m18372Nj((VideoCustomisationOption.PredefinedVideo) videoCustomisationOption, this) == aVar) {
                    return aVar;
                }
            }
        } else if (i != 1 && i != 2) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
