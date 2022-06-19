package p193e.p194a.p437c.p538g.p546y;

import com.truecaller.insights.models.categorizerseed.Probability;
import java.util.List;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10122m;
/* renamed from: e.a.c.g.y.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/y/j.class */
public final class C10226j implements AbstractC10122m {

    /* renamed from: a */
    public final List<Double> f30340a;

    /* renamed from: b */
    public final String f30341b;

    /* renamed from: c */
    public final /* synthetic */ Probability f30342c;

    public C10226j(Probability probability) {
        this.f30342c = probability;
        this.f30340a = probability.getProbability();
        this.f30341b = probability.getWord();
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10122m
    public List<Double> getProbability() {
        return this.f30340a;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10122m
    public String getWord() {
        return this.f30341b;
    }
}
