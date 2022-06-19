package p193e.p194a.p437c.p538g.p547z;

import java.util.List;
import kotlin.Metadata;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10122m;
import p193e.p194a.p437c.p538g.p539a0.C10118i;
import p193e.p194a.p437c.p538g.p542d0.AbstractC10153e;
import s1.u.i;
import s1.z.c.l;
@Metadata(d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001R\u001c\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"com/truecaller/insights/categorizer/extension/ModelExtensionsKt$toWordToProb$1", "Lcom/truecaller/insights/categorizer/model/WordToProb;", "probability", "", "", "getProbability", "()Ljava/util/List;", "word", "", "getWord", "()Ljava/lang/String;", "insights-categorizer"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.a.c.g.z.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/z/a.class */
public final class C10250a implements AbstractC10122m {

    /* renamed from: a */
    public final /* synthetic */ String f30401a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC10153e.C10154a<C10118i> f30402b;

    public C10250a(String str, AbstractC10153e.C10154a<C10118i> c10154a) {
        this.f30401a = str;
        this.f30402b = c10154a;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10122m
    public List<Double> getProbability() {
        C10118i c10118i = this.f30402b.f30139b;
        l.e(c10118i, "<this>");
        return i.T(new Double[]{c10118i.f30038a, c10118i.f30039b, c10118i.f30040c, c10118i.f30041d, c10118i.f30042e, c10118i.f30043f});
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10122m
    public String getWord() {
        return this.f30401a;
    }
}
