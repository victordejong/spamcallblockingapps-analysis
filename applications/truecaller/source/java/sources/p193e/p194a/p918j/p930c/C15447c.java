package p193e.p194a.p918j.p930c;

import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.survey.PostSurveyResults;
import com.truecaller.surveys.data.entities.Answer;
import com.truecaller.surveys.data.entities.Survey;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1238t2.p1239a.p1260i.C20494c;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p918j.p930c.p931d.AbstractC15453b;
import p193e.p194a.p918j.p930c.p932e.AbstractC15465a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.j.c.c */
/* loaded from: classes14-dex2jar.jar:e/a/j/c/c.class */
public final class C15447c implements AbstractC15446b {

    /* renamed from: a */
    public final f f43799a;

    /* renamed from: b */
    public final AbstractC15465a f43800b;

    /* renamed from: c */
    public final AbstractC15453b f43801c;

    /* renamed from: d */
    public final AbstractC19222c f43802d;

    @e(c = "com.truecaller.surveys.data.SurveysRepositoryImpl$fetchSurveys$2", f = "SurveysRepository.kt", l = {49}, m = "invokeSuspend")
    /* renamed from: e.a.j.c.c$a */
    /* loaded from: classes14-dex2jar.jar:e/a/j/c/c$a.class */
    public static final class C15448a extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f43803e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15448a(d dVar) {
            super(2, dVar);
            C15447c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18798i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15448a(dVar);
        }

        /* renamed from: k */
        public final Object m18797k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15448a(dVar).m18796s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x00d6, code lost:
            if (java.lang.Boolean.TRUE != null) goto L35;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m18796s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 236
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p918j.p930c.C15447c.C15448a.m18796s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.surveys.data.SurveysRepositoryImpl", f = "SurveysRepository.kt", l = {60}, m = "getById")
    /* renamed from: e.a.j.c.c$b */
    /* loaded from: classes14-dex2jar.jar:e/a/j/c/c$b.class */
    public static final class C15449b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f43805d;

        /* renamed from: e */
        public int f43806e;

        /* renamed from: g */
        public Object f43808g;

        /* renamed from: h */
        public Object f43809h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15449b(d dVar) {
            super(dVar);
            C15447c.this = r4;
        }

        /* renamed from: s */
        public final Object m18795s(Object obj) {
            this.f43805d = obj;
            this.f43806e |= Integer.MIN_VALUE;
            return C15447c.this.mo18799d(null, null, this);
        }
    }

    @e(c = "com.truecaller.surveys.data.SurveysRepositoryImpl$postSurveyResults$2", f = "SurveysRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.j.c.c$c */
    /* loaded from: classes14-dex2jar.jar:e/a/j/c/c$c.class */
    public static final class C15450c extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Survey f43811f;

        /* renamed from: g */
        public final /* synthetic */ Map f43812g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15450c(Survey survey, Map map, d dVar) {
            super(2, dVar);
            C15447c.this = r5;
            this.f43811f = survey;
            this.f43812g = map;
        }

        /* renamed from: i */
        public final d<s> m18794i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15450c(this.f43811f, this.f43812g, dVar);
        }

        /* renamed from: k */
        public final Object m18793k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15450c(this.f43811f, this.f43812g, dVar).m18792s(s.a);
        }

        /* renamed from: s */
        public final Object m18792s(Object obj) {
            Map mutableAnswersMap;
            boolean z;
            C20494c.C20495a mo20911c;
            C25225a.m3932a3(obj);
            PostSurveyResults.Request.C3418b newBuilder = PostSurveyResults.Request.newBuilder();
            String id = this.f43811f.getId();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setSurveyId(id);
            Map map = this.f43812g;
            l.e(map, "$this$toAnswersRequest");
            LinkedHashMap linkedHashMap = new LinkedHashMap(C25225a.m3942Y1(map.size()));
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                PostSurveyResults.Request.Answers.C3413a newBuilder2 = PostSurveyResults.Request.Answers.newBuilder();
                Answer answer = (Answer) entry.getValue();
                if (answer instanceof Answer.Binary) {
                    newBuilder2.m35892a(((Answer.Binary) answer).getChoice().getId());
                } else if (answer instanceof Answer.SingleChoice) {
                    newBuilder2.m35892a(((Answer.SingleChoice) answer).getChoice().getId());
                } else if (answer instanceof Answer.FreeText) {
                    String text = ((Answer.FreeText) answer).getText();
                    newBuilder2.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder2).instance.setFreeTextAnswer(text);
                } else if (answer instanceof Answer.Rating) {
                    newBuilder2.m35892a(((Answer.Rating) answer).getChoice().getId());
                }
                linkedHashMap.put(key, newBuilder2.build());
            }
            newBuilder.copyOnWrite();
            mutableAnswersMap = ((GeneratedMessageLite.Builder) newBuilder).instance.getMutableAnswersMap();
            mutableAnswersMap.putAll(linkedHashMap);
            String passThrough = this.f43811f.getPassThrough();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setPassthrough(passThrough);
            PostSurveyResults.Request build = newBuilder.build();
            try {
                mo20911c = C15447c.this.f43800b.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
                C20494c.C20495a c20495a = mo20911c;
                z = false;
                if (c20495a != null) {
                    z = false;
                    if (c20495a.m11081d(build) != null) {
                        z = false;
                        if (Boolean.TRUE != null) {
                            z = true;
                        }
                    }
                }
            } catch (Exception e) {
                C10480a.m26057J1(e, "Failed to post survey answers");
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    @e(c = "com.truecaller.surveys.data.SurveysRepositoryImpl", f = "SurveysRepository.kt", l = {69, 72}, m = "updateLastTimeSeen")
    /* renamed from: e.a.j.c.c$d */
    /* loaded from: classes14-dex2jar.jar:e/a/j/c/c$d.class */
    public static final class C15451d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f43813d;

        /* renamed from: e */
        public int f43814e;

        /* renamed from: g */
        public Object f43816g;

        /* renamed from: h */
        public Object f43817h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15451d(d dVar) {
            super(dVar);
            C15447c.this = r4;
        }

        /* renamed from: s */
        public final Object m18791s(Object obj) {
            this.f43813d = obj;
            this.f43814e |= Integer.MIN_VALUE;
            return C15447c.this.mo18800c(null, this);
        }
    }

    @Inject
    public C15447c(@Named("IO") f fVar, AbstractC15465a abstractC15465a, AbstractC15453b abstractC15453b, AbstractC19222c abstractC19222c) {
        l.e(fVar, "ioContext");
        l.e(abstractC15465a, "surveysStubManager");
        l.e(abstractC15453b, "surveysDao");
        l.e(abstractC19222c, "clock");
        this.f43799a = fVar;
        this.f43800b = abstractC15465a;
        this.f43801c = abstractC15453b;
        this.f43802d = abstractC19222c;
    }

    @Override // p193e.p194a.p918j.p930c.AbstractC15446b
    /* renamed from: a */
    public Object mo18802a(d<? super Boolean> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f43799a, new C15448a(null), dVar);
    }

    @Override // p193e.p194a.p918j.p930c.AbstractC15446b
    /* renamed from: b */
    public Object mo18801b(Survey survey, Map<Integer, ? extends Answer> map, d<? super Boolean> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f43799a, new C15450c(survey, map, null), dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f3  */
    @Override // p193e.p194a.p918j.p930c.AbstractC15446b
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo18800c(java.lang.String r11, s1.w.d<? super s1.s> r12) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p918j.p930c.C15447c.mo18800c(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:2|(2:4|(9:6|8|31|(2:10|(3:12|13|14)(2:15|16))(4:17|18|19|(2:21|22))|23|24|(1:26)|27|28))|7|8|31|(0)(0)|23|24|(0)|27|28) */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00be, code lost:
        r6 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b5 A[Catch: f -> 0x00bd, TRY_ENTER, TryCatch #0 {f -> 0x00bd, blocks: (B:13:0x0065, B:18:0x007f, B:23:0x00a9, B:26:0x00b5), top: B:31:0x004c }] */
    @Override // p193e.p194a.p918j.p930c.AbstractC15446b
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo18799d(java.lang.String r6, java.lang.String r7, s1.w.d<? super com.truecaller.surveys.data.entities.Survey> r8) {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p918j.p930c.C15447c.mo18799d(java.lang.String, java.lang.String, s1.w.d):java.lang.Object");
    }
}
