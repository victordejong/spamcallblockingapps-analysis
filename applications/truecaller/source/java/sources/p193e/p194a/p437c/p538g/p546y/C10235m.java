package p193e.p194a.p437c.p538g.p546y;

import com.truecaller.insights.models.categorizerseed.Probability;
import java.util.List;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10122m;
/* renamed from: e.a.c.g.y.m */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/y/m.class */
public final class C10235m implements AbstractC10122m {

    /* renamed from: a */
    public final List<Double> f30360a;

    /* renamed from: b */
    public final String f30361b;

    /* renamed from: c */
    public final /* synthetic */ Probability f30362c;

    public C10235m(Probability probability) {
        this.f30362c = probability;
        this.f30360a = probability.getProbability();
        this.f30361b = probability.getWord();
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10122m
    public List<Double> getProbability() {
        return this.f30360a;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10122m
    public String getWord() {
        return this.f30361b;
    }
}
