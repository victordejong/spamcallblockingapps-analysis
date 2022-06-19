package p193e.p194a.p852i;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.appnext.suggestedappswider.DataBinderMapperImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p1727n3.p1849n.AbstractC26863d;
import p1727n3.p1849n.AbstractC26865f;
import p1727n3.p1849n.p1851p.p1852a.C26882a;
/* renamed from: e.a.i.p */
/* loaded from: classes2-dex2jar.jar:e/a/i/p.class */
public class C15216p extends AbstractC26863d {

    /* renamed from: a */
    public static final SparseIntArray f43293a = new SparseIntArray(0);

    /* renamed from: e.a.i.p$a */
    /* loaded from: classes2-dex2jar.jar:e/a/i/p$a.class */
    public static class C15217a {

        /* renamed from: a */
        public static final SparseArray<String> f43294a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(2);
            f43294a = sparseArray;
            sparseArray.put(0, "_all");
            sparseArray.put(1, "collectionAd");
        }
    }

    /* renamed from: e.a.i.p$b */
    /* loaded from: classes2-dex2jar.jar:e/a/i/p$b.class */
    public static class C15218b {

        /* renamed from: a */
        public static final HashMap<String, Integer> f43295a = new HashMap<>(0);
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public List<AbstractC26863d> collectDependencies() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new C26882a());
        arrayList.add(new DataBinderMapperImpl());
        return arrayList;
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public String convertBrIdToString(int i) {
        return C15217a.f43294a.get(i);
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View view, int i) {
        if (f43293a.get(i) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f43293a.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public int getLayoutId(String str) {
        int i = 0;
        if (str == null) {
            return 0;
        }
        Integer num = C15218b.f43295a.get(str);
        if (num != null) {
            i = num.intValue();
        }
        return i;
    }
}
