package p193e.p194a.p437c.p538g.p546y;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10112c;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10113d;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10115f;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10121l;
import p193e.p194a.p437c.p538g.p539a0.C10116g;
import p193e.p194a.p437c.p538g.p539a0.C10117h;
import p193e.p194a.p437c.p538g.p542d0.C10152d;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@e(c = "com.truecaller.insights.categorizer.datasource.MultiClassMetadataRepositoryImpl$1", f = "MultiClassMetadataRepository.kt", l = {38}, m = "invokeSuspend")
/* renamed from: e.a.c.g.y.o */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/y/o.class */
public final class C10237o extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f30363e;

    /* renamed from: f */
    public final /* synthetic */ C10238p f30364f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10237o(C10238p c10238p, d<? super C10237o> dVar) {
        super(2, dVar);
        this.f30364f = c10238p;
    }

    /* renamed from: i */
    public final d<s> m26548i(Object obj, d<?> dVar) {
        return new C10237o(this.f30364f, dVar);
    }

    /* renamed from: k */
    public Object m26547k(Object obj, Object obj2) {
        i0 i0Var = (i0) obj;
        return new C10237o(this.f30364f, (d) obj2).m26546s(s.a);
    }

    /* renamed from: s */
    public final Object m26546s(Object obj) {
        a aVar = a.a;
        int i = this.f30363e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C10210a c10210a = this.f30364f.f30365a;
            this.f30363e = 1;
            Object m26537b = ((C10245r) c10210a.f30291a).m26537b(this);
            obj = m26537b;
            if (m26537b == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC10115f abstractC10115f = (AbstractC10115f) obj;
        List<AbstractC10121l> probabilities = abstractC10115f.getProbabilities();
        C10238p c10238p = this.f30364f;
        for (AbstractC10121l abstractC10121l : probabilities) {
            C10152d<List<C10116g>> c10152d = c10238p.f30368d;
            String word = abstractC10121l.getWord();
            List<AbstractC10112c> probabilities2 = abstractC10121l.getProbabilities();
            l.e(probabilities2, "<this>");
            ArrayList arrayList = new ArrayList(C25225a.m4004J(probabilities2, 10));
            for (AbstractC10112c abstractC10112c : probabilities2) {
                arrayList.add(new C10116g(abstractC10112c.getClassIdentifier(), abstractC10112c.getProbs(), abstractC10112c.getTf()));
            }
            c10152d.m26654b(word, arrayList);
        }
        this.f30364f.f30369e = abstractC10115f.getClassMetas();
        List<? extends AbstractC10113d> list = this.f30364f.f30369e;
        if (list == null) {
            l.l("classifierMeta");
            throw null;
        }
        l.e(list, "<this>");
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(list, 10));
        for (AbstractC10113d abstractC10113d : list) {
            arrayList2.add(new C10117h(abstractC10113d.getClassProb(), abstractC10113d.getTotalMessageCount(), abstractC10113d.getWordsInClass(), abstractC10113d.getTfIdfSum(), abstractC10113d.getClassId(), abstractC10113d.getClassName()));
        }
        this.f30364f.f30371g = abstractC10115f.getBarrierValue();
        return s.a;
    }
}
