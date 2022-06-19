package p193e.p194a.p437c.p538g;

import com.truecaller.insights.models.categorizer.ReclassifiedMessage;
import java.util.List;
import java.util.Objects;
import org.apache.avro.Schema;
import org.apache.avro.generic.GenericRecord;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17475c2;
import p193e.p194a.p1050l5.p1051a.C17553g4;
import p193e.p194a.p1050l5.p1051a.C17571h4;
import p193e.p194a.p1146q2.AbstractC19462a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.categorizer.InsightsAndroidCategorizerImpl$logReclassificationEvent$1", f = "InsightsAndroidCategorizer.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.c.g.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/h.class */
public final class C10171h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C10162g f30174e;

    /* renamed from: f */
    public final /* synthetic */ List f30175f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10171h(C10162g c10162g, List list, d dVar) {
        super(2, dVar);
        this.f30174e = c10162g;
        this.f30175f = list;
    }

    /* renamed from: i */
    public final d<s> m26638i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C10171h(this.f30174e, this.f30175f, dVar);
    }

    /* renamed from: k */
    public final Object m26637k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C10171h c10171h = new C10171h(this.f30174e, this.f30175f, dVar);
        s sVar = s.a;
        c10171h.m26636s(sVar);
        return sVar;
    }

    /* renamed from: s */
    public final Object m26636s(Object obj) {
        C25225a.m3932a3(obj);
        for (ReclassifiedMessage reclassifiedMessage : this.f30175f) {
            C10162g c10162g = this.f30174e;
            String fromCategory = reclassifiedMessage.getFromCategory();
            String toCategory = reclassifiedMessage.getToCategory();
            Objects.requireNonNull(c10162g);
            Schema schema = C17571h4.f49454f;
            C17571h4.C17573b c17573b = new C17571h4.C17573b(null);
            Schema schema2 = C17475c2.f48990h;
            C17475c2.C17477b c17477b = new C17475c2.C17477b(null);
            c17477b.validate(c17477b.fields()[3], fromCategory);
            c17477b.f49002b = fromCategory;
            c17477b.fieldSetFlags()[3] = true;
            c17477b.validate(c17477b.fields()[4], toCategory);
            c17477b.f49003c = toCategory;
            c17477b.fieldSetFlags()[4] = true;
            Schema schema3 = C17553g4.f49371c;
            C17553g4.C17555b c17555b = new C17553g4.C17555b(null);
            c17555b.validate(c17555b.fields()[1], 20807);
            c17555b.f49377a = 20807;
            c17555b.fieldSetFlags()[1] = true;
            C17553g4 build = c17555b.build();
            l.d(build, "SmsCategorizerModel.newB…VERSION)\n        .build()");
            c17477b.validate(c17477b.fields()[5], build);
            c17477b.f49004d = build;
            c17477b.fieldSetFlags()[5] = true;
            C17571h4 build2 = c17573b.build();
            c17477b.validate(c17477b.fields()[6], build2);
            c17477b.f49005e = build2;
            c17477b.fieldSetFlags()[6] = true;
            s1.u.s sVar = s1.u.s.a;
            c17477b.validate(c17477b.fields()[2], sVar);
            c17477b.f49001a = sVar;
            c17477b.fieldSetFlags()[2] = true;
            GenericRecord build3 = c17477b.build();
            AbstractC19462a abstractC19462a = c10162g.f30150f;
            l.d(build3, "event");
            abstractC19462a.mo13275a(build3);
        }
        return s.a;
    }
}
