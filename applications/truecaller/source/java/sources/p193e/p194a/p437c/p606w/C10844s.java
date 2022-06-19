package p193e.p194a.p437c.p606w;

import com.truecaller.insights.insightsui.CategoryModel;
import com.truecaller.insights.insightsui.GrammarCategoryData;
import com.truecaller.insights.insightsui.UpdateCategoryData;
import com.truecaller.insights.models.updates.UpdateCategory;
import com.truecaller.insights.smartcards.SmartCardCategory;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.s;
import s1.u.u;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.insights.repository.FilterDataRepositoryImpl$getCategories$1", f = "FilterDataRepository.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.c.w.s */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/s.class */
public final class C10844s extends i implements q<List<? extends UpdateCategoryData>, List<? extends GrammarCategoryData>, d<? super List<? extends CategoryModel>>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f32196e;

    /* renamed from: f */
    public /* synthetic */ Object f32197f;

    /* renamed from: g */
    public final /* synthetic */ C10850u f32198g;

    /* renamed from: e.a.c.w.s$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/s$a.class */
    public static final class C10845a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return C25225a.m4000K(Integer.valueOf(((CategoryModel) t2).getCount()), Integer.valueOf(((CategoryModel) t).getCount()));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10844s(C10850u c10850u, d dVar) {
        super(3, dVar);
        this.f32198g = c10850u;
    }

    /* renamed from: h */
    public final Object m25564h(Object obj, Object obj2, Object obj3) {
        List list = (List) obj;
        List list2 = (List) obj2;
        d dVar = (d) obj3;
        l.e(list, "u");
        l.e(list2, "g");
        l.e(dVar, "continuation");
        C10844s c10844s = new C10844s(this.f32198g, dVar);
        c10844s.f32196e = list;
        c10844s.f32197f = list2;
        return c10844s.m25563s(s.a);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: s */
    public final Object m25563s(Object obj) {
        SmartCardCategory smartCardCategory;
        CategoryModel categoryModel;
        u uVar = u.a;
        C25225a.m3932a3(obj);
        List list = (List) this.f32196e;
        List<GrammarCategoryData> list2 = (List) this.f32197f;
        Objects.requireNonNull(this.f32198g);
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (true) {
            CategoryModel categoryModel2 = null;
            if (!it.hasNext()) {
                break;
            }
            UpdateCategoryData updateCategoryData = (UpdateCategoryData) it.next();
            UpdateCategory m35221a = UpdateCategory.Companion.m35221a(updateCategoryData.getUpdateCategory());
            CategoryModel categoryModel3 = m35221a != null ? new CategoryModel(C10480a.m25927m3(m35221a), s1.u.i.y0(m35221a), "Updates", updateCategoryData.getCount(), false, 16, null) : null;
            SmartCardCategory m35209a = SmartCardCategory.Companion.m35209a(updateCategoryData.getUpdateCategory());
            if (m35209a != null) {
                categoryModel2 = new CategoryModel(m35209a, uVar, "Updates", updateCategoryData.getCount(), true);
            }
            if (categoryModel3 == null) {
                categoryModel3 = categoryModel2;
            }
            if (categoryModel3 != null) {
                arrayList.add(categoryModel3);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            CategoryModel categoryModel4 = (CategoryModel) it2.next();
            SmartCardCategory tagCategory = categoryModel4.getTagCategory();
            Object obj2 = linkedHashMap.get(tagCategory);
            boolean z = true;
            boolean z2 = obj2 == null && !linkedHashMap.containsKey(tagCategory);
            CategoryModel categoryModel5 = (CategoryModel) obj2;
            if (z2) {
                categoryModel = new CategoryModel(tagCategory, categoryModel4.getUpdateCategories(), "Updates", categoryModel4.getCount(), categoryModel4.getUseTagCategory());
            } else {
                l.c(categoryModel5);
                Set c1 = s1.u.i.c1(categoryModel5.getUpdateCategories());
                c1.addAll(categoryModel4.getUpdateCategories());
                int count = categoryModel5.getCount();
                int count2 = categoryModel4.getCount();
                if (!categoryModel4.getUseTagCategory()) {
                    z = categoryModel5.getUseTagCategory();
                }
                categoryModel = CategoryModel.copy$default(categoryModel5, null, c1, null, count2 + count, z, 5, null);
            }
            linkedHashMap.put(tagCategory, categoryModel);
        }
        Map b1 = s1.u.i.b1(linkedHashMap);
        Objects.requireNonNull(this.f32198g);
        ArrayList arrayList2 = new ArrayList();
        for (GrammarCategoryData grammarCategoryData : list2) {
            String domain = grammarCategoryData.getDomain();
            l.e(domain, "$this$toSmartCardCategory");
            switch (domain.hashCode()) {
                case -1781830854:
                    if (domain.equals("Travel")) {
                        smartCardCategory = SmartCardCategory.Travel;
                        break;
                    }
                    smartCardCategory = null;
                    break;
                case 2062940:
                    if (domain.equals("Bank")) {
                        smartCardCategory = SmartCardCategory.Transaction;
                        break;
                    }
                    smartCardCategory = null;
                    break;
                case 2070567:
                    if (domain.equals("Bill")) {
                        smartCardCategory = SmartCardCategory.Bill;
                        break;
                    }
                    smartCardCategory = null;
                    break;
                case 67338874:
                    if (domain.equals("Event")) {
                        smartCardCategory = SmartCardCategory.Event;
                        break;
                    }
                    smartCardCategory = null;
                    break;
                case 888111124:
                    if (domain.equals("Delivery")) {
                        smartCardCategory = SmartCardCategory.Delivery;
                        break;
                    }
                    smartCardCategory = null;
                    break;
                default:
                    smartCardCategory = null;
                    break;
            }
            CategoryModel categoryModel6 = smartCardCategory != null ? new CategoryModel(smartCardCategory, uVar, grammarCategoryData.getDomain(), grammarCategoryData.getCount(), false, 16, null) : null;
            if (categoryModel6 != null) {
                arrayList2.add(categoryModel6);
            }
        }
        int m3942Y1 = C25225a.m3942Y1(C25225a.m4004J(arrayList2, 10));
        int i = m3942Y1;
        if (m3942Y1 < 16) {
            i = 16;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(i);
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            Object next = it3.next();
            linkedHashMap2.put(((CategoryModel) next).getTagCategory(), next);
        }
        Map b12 = s1.u.i.b1(linkedHashMap2);
        LinkedHashMap linkedHashMap3 = (LinkedHashMap) b1;
        for (Map.Entry entry : linkedHashMap3.entrySet()) {
            if (b12.containsKey(entry.getKey())) {
                int count3 = ((CategoryModel) entry.getValue()).getCount();
                CategoryModel categoryModel7 = (CategoryModel) ((LinkedHashMap) b12).get(entry.getKey());
                if (categoryModel7 != null) {
                    int i2 = count3;
                    if (categoryModel7.getCount() > count3) {
                        i2 = categoryModel7.getCount();
                    }
                    entry.setValue(CategoryModel.copy$default((CategoryModel) entry.getValue(), null, null, categoryModel7.getGrammarCategory(), i2, false, 19, null));
                    b12.remove(entry.getKey());
                }
            }
        }
        return s1.u.i.F0(s1.u.i.l0(linkedHashMap3.values(), ((LinkedHashMap) b12).values()), new C10845a());
    }
}
