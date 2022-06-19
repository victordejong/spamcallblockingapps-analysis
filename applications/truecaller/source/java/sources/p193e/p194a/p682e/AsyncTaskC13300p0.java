package p193e.p194a.p682e;

import com.truecaller.C2752R;
import java.util.List;
import java.util.Objects;
import p193e.p194a.p682e.AbstractC13291o0;
import p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a;
/* renamed from: e.a.e.p0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/p0.class */
public class AsyncTaskC13300p0 extends AbstractAsyncTaskC15557a {

    /* renamed from: d */
    public final /* synthetic */ List f38659d;

    /* renamed from: e */
    public final /* synthetic */ String f38660e;

    /* renamed from: f */
    public final /* synthetic */ String f38661f;

    /* renamed from: g */
    public final /* synthetic */ String f38662g;

    /* renamed from: h */
    public final /* synthetic */ String f38663h;

    /* renamed from: i */
    public final /* synthetic */ boolean f38664i;

    /* renamed from: j */
    public final /* synthetic */ AbstractC13291o0 f38665j;

    public AsyncTaskC13300p0(AbstractC13291o0 abstractC13291o0, List list, String str, String str2, String str3, String str4, boolean z) {
        this.f38665j = abstractC13291o0;
        this.f38659d = list;
        this.f38660e = str;
        this.f38661f = str2;
        this.f38662g = str3;
        this.f38663h = str4;
        this.f38664i = z;
    }

    @Override // p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a
    /* renamed from: a */
    public void mo18682a(Object obj) {
        if (!((Boolean) obj).booleanValue()) {
            ((AbstractC13291o0.C13294c) this.f38665j).f38643b.m21920TA(C2752R.string.BlockUpdateFail);
            return;
        }
        ((AbstractC13291o0.C13294c) this.f38665j).f38643b.m21920TA(C2752R.string.BlockRemoveSuccess);
        AbstractC13291o0.C13294c c13294c = (AbstractC13291o0.C13294c) this.f38665j;
        if (!c13294c.f38643b.m21921SA()) {
            return;
        }
        c13294c.f38643b.mo21924OA();
    }

    @Override // android.os.AsyncTask
    public Object doInBackground(Object[] objArr) {
        Boolean bool;
        if (this.f38665j.mo21947c() == null || this.f38665j.f38631a.mo19594b(this.f38659d, this.f38660e, this.f38661f, this.f38662g, this.f38663h, this.f38664i) <= 0) {
            bool = Boolean.FALSE;
        } else {
            Objects.requireNonNull(this.f38665j);
            bool = Boolean.TRUE;
        }
        return bool;
    }
}
