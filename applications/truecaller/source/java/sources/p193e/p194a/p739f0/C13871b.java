package p193e.p194a.p739f0;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.social_media.C4497R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p1727n3.p1849n.AbstractC26863d;
import p1727n3.p1849n.AbstractC26865f;
import p1727n3.p1849n.p1851p.p1852a.C26882a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p739f0.p741e.C13877b;
import p193e.p194a.p739f0.p741e.C13879d;
/* renamed from: e.a.f0.b */
/* loaded from: classes13-dex2jar.jar:e/a/f0/b.class */
public class C13871b extends AbstractC26863d {

    /* renamed from: a */
    public static final SparseIntArray f40238a;

    /* renamed from: e.a.f0.b$a */
    /* loaded from: classes13-dex2jar.jar:e/a/f0/b$a.class */
    public static class C13872a {

        /* renamed from: a */
        public static final SparseArray<String> f40239a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(5);
            f40239a = sparseArray;
            sparseArray.put(0, "_all");
            sparseArray.put(1, "bgIcon");
            sparseArray.put(2, RemoteMessageConst.Notification.ICON);
            sparseArray.put(3, "onSocialMediaItemClick");
            sparseArray.put(4, "title");
        }
    }

    /* renamed from: e.a.f0.b$b */
    /* loaded from: classes13-dex2jar.jar:e/a/f0/b$b.class */
    public static class C13873b {

        /* renamed from: a */
        public static final HashMap<String, Integer> f40240a;

        static {
            HashMap<String, Integer> hashMap = new HashMap<>(2);
            f40240a = hashMap;
            hashMap.put("layout/fragment_social_media_links_0", Integer.valueOf(C4497R.layout.fragment_social_media_links));
            hashMap.put("layout/layout_social_media_item_0", Integer.valueOf(C4497R.layout.layout_social_media_item));
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(2);
        f40238a = sparseIntArray;
        sparseIntArray.put(C4497R.layout.fragment_social_media_links, 1);
        sparseIntArray.put(C4497R.layout.layout_social_media_item, 2);
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public List<AbstractC26863d> collectDependencies() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new C26882a());
        return arrayList;
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public String convertBrIdToString(int i) {
        return C13872a.f40239a.get(i);
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View view, int i) {
        int i2 = f40238a.get(i);
        if (i2 > 0) {
            Object tag = view.getTag();
            if (tag == null) {
                throw new RuntimeException("view must have a tag");
            }
            if (i2 == 1) {
                if (!"layout/fragment_social_media_links_0".equals(tag)) {
                    throw new IllegalArgumentException(C22128a.m8551x2("The tag for fragment_social_media_links is invalid. Received: ", tag));
                }
                return new C13879d(abstractC26865f, view);
            } else if (i2 != 2) {
                return null;
            } else {
                if (!"layout/layout_social_media_item_0".equals(tag)) {
                    throw new IllegalArgumentException(C22128a.m8551x2("The tag for layout_social_media_item is invalid. Received: ", tag));
                }
                return new C13877b(abstractC26865f, view);
            }
        }
        return null;
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f40238a.get(i) <= 0 || viewArr[0].getTag() != null) {
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
        Integer num = C13873b.f40240a.get(str);
        if (num != null) {
            i = num.intValue();
        }
        return i;
    }
}
