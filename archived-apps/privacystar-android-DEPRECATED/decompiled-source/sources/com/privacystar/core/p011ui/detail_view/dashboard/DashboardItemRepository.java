package com.privacystar.core.p011ui.detail_view.dashboard;

import android.content.Context;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.helper.CallStatsRealm;
import com.privacystar.core.util.OffenderUtil;
import io.realm.Realm;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\"\u0010\u0013\u001a\u0004\u0018\u00010\u00042\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0015j\b\u0012\u0004\u0012\u00020\u0004`\u0016H\u0002¨\u0006\u0017"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/DashboardItemRepository;", "", "()V", "getBlockListItem", "Lcom/privacystar/core/ui/detail_view/dashboard/DashboardItem;", "context", "Landroid/content/Context;", "count", "", "getDebtCollectorItem", "getNuisanceItem", "getPrisonItem", "getScamItem", "getSurveyItem", "getTelemarketerItem", "provideDashboardIntroItems", "", "realm", "Lio/realm/Realm;", "pullLargest", "list", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.dashboard.DashboardItemRepository */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/DashboardItemRepository.class */
public final class DashboardItemRepository {
    public static final DashboardItemRepository INSTANCE = new DashboardItemRepository();

    private DashboardItemRepository() {
    }

    private final DashboardItem getBlockListItem(Context context, int i) {
        String string = context.getString(C1566R.string.dashboard_category_block_list);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…oard_category_block_list)");
        return new DashboardItem(C1566R.C1568drawable.ic_cat_block_list, string, i);
    }

    private final DashboardItem getDebtCollectorItem(Context context, int i) {
        String string = context.getString(C1566R.string.dashboard_category_account_services);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…ategory_account_services)");
        return new DashboardItem(C1566R.C1568drawable.ic_cat_debt_collector, string, i);
    }

    private final DashboardItem getNuisanceItem(Context context, int i) {
        String string = context.getString(C1566R.string.dashboard_category_nuisance);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…hboard_category_nuisance)");
        return new DashboardItem(C1566R.C1568drawable.ic_cat_nuisance_gray, string, i);
    }

    private final DashboardItem getPrisonItem(Context context, int i) {
        String string = context.getString(C1566R.string.dashboard_category_prison);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…ashboard_category_prison)");
        return new DashboardItem(C1566R.C1568drawable.ic_cat_reported_telemarketer, string, i);
    }

    private final DashboardItem getScamItem(Context context, int i) {
        String string = context.getString(C1566R.string.dashboard_category_scam);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri….dashboard_category_scam)");
        return new DashboardItem(C1566R.C1568drawable.ic_cat_scam_grey, string, i);
    }

    private final DashboardItem getSurveyItem(Context context, int i) {
        String string = context.getString(C1566R.string.dashboard_category_surveys);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…shboard_category_surveys)");
        return new DashboardItem(C1566R.C1568drawable.ic_cat_market_research, string, i);
    }

    private final DashboardItem getTelemarketerItem(Context context, int i) {
        String string = context.getString(C1566R.string.dashboard_category_telemarketer);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…rd_category_telemarketer)");
        return new DashboardItem(C1566R.C1568drawable.ic_cat_telemarketer_grey, string, i);
    }

    private final DashboardItem pullLargest(ArrayList<DashboardItem> arrayList) {
        DashboardItem dashboardItem = null;
        Iterator<DashboardItem> it = arrayList.iterator();
        while (it.hasNext()) {
            DashboardItem next = it.next();
            if (dashboardItem == null || dashboardItem.getItemValue() < next.getItemValue()) {
                dashboardItem = next;
            }
        }
        return dashboardItem;
    }

    @NotNull
    public final List<DashboardItem> provideDashboardIntroItems(@NotNull Realm realm) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        Context context = PSApplication.context();
        ArrayList arrayList = new ArrayList();
        ArrayList<DashboardItem> arrayList2 = new ArrayList<>();
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (Number number : CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(OffenderUtil.EOffenderCategory.SCAM_LIKELY.getValue()), Integer.valueOf(OffenderUtil.EOffenderCategory.NUISANCE.getValue()), Integer.valueOf(OffenderUtil.EOffenderCategory.TELEMARKETER.getValue()), Integer.valueOf(OffenderUtil.EOffenderCategory.DEBT_COLLECTOR.getValue()), Integer.valueOf(OffenderUtil.EOffenderCategory.GENERAL_SURVEY.getValue()), Integer.valueOf(OffenderUtil.EOffenderCategory.PRISON.getValue())})) {
            int intValue = number.intValue();
            hashMap.put(Integer.valueOf(intValue), Integer.valueOf((int) CallStatsRealm.INSTANCE.getCategoryCount(realm, intValue)));
        }
        Integer it = (Integer) hashMap.get(Integer.valueOf(OffenderUtil.EOffenderCategory.SCAM_LIKELY.getValue()));
        if (it != null) {
            if (!(Intrinsics.compare(it.intValue(), 0) > 0)) {
                it = null;
            }
            if (it != null) {
                DashboardItemRepository dashboardItemRepository = INSTANCE;
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                arrayList2.add(dashboardItemRepository.getScamItem(context, it.intValue()));
            }
        }
        Integer it2 = (Integer) hashMap.get(Integer.valueOf(OffenderUtil.EOffenderCategory.NUISANCE.getValue()));
        if (it2 != null) {
            if (!(Intrinsics.compare(it2.intValue(), 0) > 0)) {
                it2 = null;
            }
            if (it2 != null) {
                DashboardItemRepository dashboardItemRepository2 = INSTANCE;
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                Intrinsics.checkExpressionValueIsNotNull(it2, "it");
                arrayList2.add(dashboardItemRepository2.getNuisanceItem(context, it2.intValue()));
            }
        }
        Integer it3 = (Integer) hashMap.get(Integer.valueOf(OffenderUtil.EOffenderCategory.TELEMARKETER.getValue()));
        if (it3 != null) {
            if (!(Intrinsics.compare(it3.intValue(), 0) > 0)) {
                it3 = null;
            }
            if (it3 != null) {
                DashboardItemRepository dashboardItemRepository3 = INSTANCE;
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                Intrinsics.checkExpressionValueIsNotNull(it3, "it");
                arrayList2.add(dashboardItemRepository3.getTelemarketerItem(context, it3.intValue()));
            }
        }
        Integer it4 = (Integer) hashMap.get(Integer.valueOf(OffenderUtil.EOffenderCategory.DEBT_COLLECTOR.getValue()));
        if (it4 != null) {
            if (!(Intrinsics.compare(it4.intValue(), 0) > 0)) {
                it4 = null;
            }
            if (it4 != null) {
                DashboardItemRepository dashboardItemRepository4 = INSTANCE;
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                Intrinsics.checkExpressionValueIsNotNull(it4, "it");
                arrayList2.add(dashboardItemRepository4.getDebtCollectorItem(context, it4.intValue()));
            }
        }
        Integer it5 = (Integer) hashMap.get(Integer.valueOf(OffenderUtil.EOffenderCategory.PRISON.getValue()));
        if (it5 != null) {
            if (!(Intrinsics.compare(it5.intValue(), 0) > 0)) {
                it5 = null;
            }
            if (it5 != null) {
                DashboardItemRepository dashboardItemRepository5 = INSTANCE;
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                Intrinsics.checkExpressionValueIsNotNull(it5, "it");
                arrayList2.add(dashboardItemRepository5.getPrisonItem(context, it5.intValue()));
            }
        }
        Integer it6 = (Integer) hashMap.get(Integer.valueOf(OffenderUtil.EOffenderCategory.GENERAL_SURVEY.getValue()));
        if (it6 != null) {
            if (Intrinsics.compare(it6.intValue(), 0) > 0) {
                z = true;
            }
            if (!z) {
                it6 = null;
            }
            if (it6 != null) {
                DashboardItemRepository dashboardItemRepository6 = INSTANCE;
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                Intrinsics.checkExpressionValueIsNotNull(it6, "it");
                arrayList2.add(dashboardItemRepository6.getSurveyItem(context, it6.intValue()));
            }
        }
        while (!arrayList2.isEmpty()) {
            DashboardItem pullLargest = pullLargest(arrayList2);
            if (pullLargest != null) {
                arrayList.add(pullLargest);
                arrayList2.remove(pullLargest);
            }
        }
        return arrayList;
    }
}
