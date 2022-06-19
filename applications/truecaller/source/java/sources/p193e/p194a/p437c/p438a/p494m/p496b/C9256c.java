package p193e.p194a.p437c.p438a.p494m.p496b;

import androidx.lifecycle.LiveData;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.insights.models.pdo.SmsBackupMessage;
import kotlin.Metadata;
import n3.v.i0;
import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C27010k0;
import p1727n3.p1868v.C27035w0;
import p1727n3.p1909z.AbstractC27592q1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p437c.p552i.p558f.AbstractC10339a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001:\u0001\nB\u000f\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012R\"\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Le/a/c/a/m/b/c;", "Ln3/v/y0;", "Landroidx/lifecycle/LiveData;", "Ln3/z/q1;", "Lcom/truecaller/insights/models/pdo/SmsBackupMessage;", C22021b.f61237c, "Landroidx/lifecycle/LiveData;", "searchResultsLiveData", "Ln3/v/k0;", "", "a", "Ln3/v/k0;", "searchQueryLiveData", "Le/a/c/i/f/a;", AbstractC2405c.f7629a, "Le/a/c/i/f/a;", "ftsRepository", "<init>", "(Le/a/c/i/f/a;)V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.m.b.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/c.class */
public final class C9256c extends AbstractC27040y0 {

    /* renamed from: a */
    public final C27010k0<String> f28176a;

    /* renamed from: b */
    public final LiveData<AbstractC27592q1<SmsBackupMessage>> f28177b;

    /* renamed from: c */
    public final AbstractC10339a f28178c;

    /* renamed from: e.a.c.a.m.b.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/c$a.class */
    public static final class C9257a implements C26986a1.AbstractC26987b {

        /* renamed from: a */
        public final AbstractC10339a f28179a;

        public C9257a(AbstractC10339a abstractC10339a) {
            l.e(abstractC10339a, "ftsRepository");
            this.f28179a = abstractC10339a;
        }

        @Override // p1727n3.p1868v.C26986a1.AbstractC26987b
        public <T extends AbstractC27040y0> T create(Class<T> cls) {
            l.e(cls, "modelClass");
            return new C9256c(this.f28179a);
        }
    }

    /* renamed from: e.a.c.a.m.b.c$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/c$b.class */
    public static final class C9258b<I, O> implements AbstractC25640a<String, LiveData<AbstractC27592q1<SmsBackupMessage>>> {
        public C9258b() {
            C9256c.this = r4;
        }

        @Override // p1727n3.p1746c.p1747a.p1750c.AbstractC25640a
        public LiveData<AbstractC27592q1<SmsBackupMessage>> apply(String str) {
            String str2 = str;
            AbstractC10339a abstractC10339a = C9256c.this.f28178c;
            l.d(str2, "it");
            return abstractC10339a.mo26322a(str2);
        }
    }

    public C9256c(AbstractC10339a abstractC10339a) {
        l.e(abstractC10339a, "ftsRepository");
        this.f28178c = abstractC10339a;
        C27010k0<String> c27010k0 = new C27010k0<>();
        this.f28176a = c27010k0;
        C9258b c9258b = new C9258b();
        i0 i0Var = new i0();
        i0Var.m(c27010k0, new C27035w0(c9258b, i0Var));
        l.d(i0Var, "Transformations.switchMa…sWithString(it)\n        }");
        this.f28177b = i0Var;
    }
}
