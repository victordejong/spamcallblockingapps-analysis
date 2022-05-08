package p459j.p460a;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.library.baseAdapters.DataBinderMapperImpl;
import gogolook.callgogolook2.R$layout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p459j.p460a.p550p.C13299b;
import p459j.p460a.p550p.C13301d;
import p459j.p460a.p550p.C13303f;
import p459j.p460a.p550p.C13305h;
import p459j.p460a.p550p.C13307j;
import p459j.p460a.p550p.C13309l;
import p459j.p460a.p550p.C13311n;
import p459j.p460a.p550p.C13313p;
import p459j.p460a.p550p.C13315r;
/* renamed from: j.a.c */
/* loaded from: classes2-dex2jar.jar:j/a/c.class */
public class C11513c extends DataBinderMapper {

    /* renamed from: a */
    public static final SparseIntArray f25704a = new SparseIntArray(9);

    /* renamed from: j.a.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c$a.class */
    public static class C11514a {

        /* renamed from: a */
        public static final SparseArray<String> f25705a = new SparseArray<>(5);

        static {
            f25705a.put(0, "_all");
            f25705a.put(1, "listener");
            f25705a.put(2, "viewModel");
            f25705a.put(3, "headerItem");
        }
    }

    /* renamed from: j.a.c$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c$b.class */
    public static class C11515b {

        /* renamed from: a */
        public static final HashMap<String, Integer> f25706a = new HashMap<>(9);

        static {
            f25706a.put("layout/activity_vas_detection_0", Integer.valueOf((int) R$layout.activity_vas_detection));
            f25706a.put("layout/fragment_vas_empty_0", Integer.valueOf((int) R$layout.fragment_vas_empty));
            f25706a.put("layout/fragment_vas_intro_0", Integer.valueOf((int) R$layout.fragment_vas_intro));
            f25706a.put("layout/fragment_vas_main_0", Integer.valueOf((int) R$layout.fragment_vas_main));
            f25706a.put("layout/fragment_vas_promotion_0", Integer.valueOf((int) R$layout.fragment_vas_promotion));
            f25706a.put("layout/fragment_vas_scan_0", Integer.valueOf((int) R$layout.fragment_vas_scan));
            f25706a.put("layout/vas_main_header_0", Integer.valueOf((int) R$layout.vas_main_header));
            f25706a.put("layout/vas_main_small_header_0", Integer.valueOf((int) R$layout.vas_main_small_header));
            f25706a.put("layout/vas_promotion_header_0", Integer.valueOf((int) R$layout.vas_promotion_header));
        }
    }

    static {
        f25704a.put(R$layout.activity_vas_detection, 1);
        f25704a.put(R$layout.fragment_vas_empty, 2);
        f25704a.put(R$layout.fragment_vas_intro, 3);
        f25704a.put(R$layout.fragment_vas_main, 4);
        f25704a.put(R$layout.fragment_vas_promotion, 5);
        f25704a.put(R$layout.fragment_vas_scan, 6);
        f25704a.put(R$layout.vas_main_header, 7);
        f25704a.put(R$layout.vas_main_small_header, 8);
        f25704a.put(R$layout.vas_promotion_header, 9);
    }

    @Override // androidx.databinding.DataBinderMapper
    public List<DataBinderMapper> collectDependencies() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i) {
        return C11514a.f25705a.get(i);
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        int i2 = f25704a.get(i);
        if (i2 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag != null) {
            switch (i2) {
                case 1:
                    if ("layout/activity_vas_detection_0".equals(tag)) {
                        return new C13299b(dataBindingComponent, view);
                    }
                    throw new IllegalArgumentException("The tag for activity_vas_detection is invalid. Received: " + tag);
                case 2:
                    if ("layout/fragment_vas_empty_0".equals(tag)) {
                        return new C13301d(dataBindingComponent, view);
                    }
                    throw new IllegalArgumentException("The tag for fragment_vas_empty is invalid. Received: " + tag);
                case 3:
                    if ("layout/fragment_vas_intro_0".equals(tag)) {
                        return new C13303f(dataBindingComponent, view);
                    }
                    throw new IllegalArgumentException("The tag for fragment_vas_intro is invalid. Received: " + tag);
                case 4:
                    if ("layout/fragment_vas_main_0".equals(tag)) {
                        return new C13305h(dataBindingComponent, view);
                    }
                    throw new IllegalArgumentException("The tag for fragment_vas_main is invalid. Received: " + tag);
                case 5:
                    if ("layout/fragment_vas_promotion_0".equals(tag)) {
                        return new C13307j(dataBindingComponent, view);
                    }
                    throw new IllegalArgumentException("The tag for fragment_vas_promotion is invalid. Received: " + tag);
                case 6:
                    if ("layout/fragment_vas_scan_0".equals(tag)) {
                        return new C13309l(dataBindingComponent, view);
                    }
                    throw new IllegalArgumentException("The tag for fragment_vas_scan is invalid. Received: " + tag);
                case 7:
                    if ("layout/vas_main_header_0".equals(tag)) {
                        return new C13311n(dataBindingComponent, view);
                    }
                    throw new IllegalArgumentException("The tag for vas_main_header is invalid. Received: " + tag);
                case 8:
                    if ("layout/vas_main_small_header_0".equals(tag)) {
                        return new C13313p(dataBindingComponent, view);
                    }
                    throw new IllegalArgumentException("The tag for vas_main_small_header is invalid. Received: " + tag);
                case 9:
                    if ("layout/vas_promotion_header_0".equals(tag)) {
                        return new C13315r(dataBindingComponent, view);
                    }
                    throw new IllegalArgumentException("The tag for vas_promotion_header is invalid. Received: " + tag);
                default:
                    return null;
            }
        } else {
            throw new RuntimeException("view must have a tag");
        }
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f25704a.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        int i = 0;
        if (str == null) {
            return 0;
        }
        Integer num = C11515b.f25706a.get(str);
        if (num != null) {
            i = num.intValue();
        }
        return i;
    }
}
