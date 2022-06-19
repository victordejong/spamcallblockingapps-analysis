package p193e.p194a.p682e.p698c;

import com.truecaller.C2752R;
import java.util.List;
import n3.r.a.l;
import p193e.p194a.p1048l3.AbstractAsyncTaskC17402a;
import p193e.p194a.p937j4.p938a.AbstractC15561d;
/* renamed from: e.a.e.c.m1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/m1.class */
public class AsyncTaskC13113m1 extends AbstractAsyncTaskC17402a {

    /* renamed from: f */
    public final /* synthetic */ C13108l1 f38055f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncTaskC13113m1(C13108l1 c13108l1, AbstractC15561d abstractC15561d, List list) {
        super(abstractC15561d, list);
        this.f38055f = c13108l1;
    }

    @Override // p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a
    /* renamed from: a */
    public void mo18682a(Object obj) {
        l activity = this.f38055f.getActivity();
        if (activity != null) {
            int intValue = ((Integer) obj).intValue();
            C13108l1 c13108l1 = this.f38055f;
            String quantityString = activity.getResources().getQuantityString(C2752R.plurals.HistoryActionDeleted, intValue, Integer.valueOf(intValue));
            int i = C13108l1.f38038q;
            c13108l1.m21917We(quantityString);
        }
    }
}
