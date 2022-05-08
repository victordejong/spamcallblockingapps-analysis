package com.tmobile.services.nameid.Settings.categorymanager;

import android.widget.CompoundButton;
import android.widget.Switch;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tmobile.services.nameid.Settings.categorymanager.CategoriesAdapter;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.utility.WidgetUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��:\u0002\u0003\u0004B\u0007¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0005"}, d2 = {"Lcom/tmobile/services/nameid/Settings/categorymanager/CategoryManager;", "<init>", "()V", "Presenter", "View", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoryManager.class */
public final class CategoryManager {

    @Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J)\u0010\r\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\u000bH&¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH&¢\u0006\u0004\b\u0011\u0010\u0012J%\u0010\u0017\u001a\u00020\u00042\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0016\u001a\u00020\u0002H&¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H&¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcom/tmobile/services/nameid/Settings/categorymanager/CategoryManager$Presenter;", "Lkotlin/Any;", "", "bucketId", "", "createCategoriesList", "(I)V", "Lcom/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$CategoryListItem;", "item", "Landroid/widget/Switch;", "theSwitch", "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "listener", "onCategoryToggled", "(Lcom/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$CategoryListItem;Landroid/widget/Switch;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V", "Lcom/tmobile/services/nameid/model/LicenseResponseItem;", "licenseResponse", "onMetroUserStatusUpdate", "(Lcom/tmobile/services/nameid/model/LicenseResponseItem;)V", "", "Lcom/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$CategoryListInterface;", FirebaseAnalytics.Param.ITEMS, "bucketIdToScrollTo", "onSetVisible", "(Ljava/util/List;I)V", "Lcom/tmobile/services/nameid/model/TmoUserStatus;", "userStatus", "onUserStatusUpdate", "(Lcom/tmobile/services/nameid/model/TmoUserStatus;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoryManager$Presenter.class */
    public interface Presenter {

        @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoryManager$Presenter$DefaultImpls.class */
        public static final class DefaultImpls {
        }

        /* renamed from: a */
        void mo7281a(@Nullable LicenseResponseItem licenseResponseItem);

        /* renamed from: b */
        void mo7280b(@Nullable TmoUserStatus tmoUserStatus);

        /* renamed from: c */
        void mo7279c(@NotNull CategoriesAdapter.CategoryListItem categoryListItem, @Nullable Switch r2, @NotNull CompoundButton.OnCheckedChangeListener onCheckedChangeListener);

        /* renamed from: d */
        void mo7278d(int i);

        /* renamed from: e */
        void mo7277e(@NotNull List<? extends CategoriesAdapter.CategoryListInterface> list, int i);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0003\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J%\u0010\b\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\b\u0010\tJ7\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0005H&¢\u0006\u0004\b\u0011\u0010\u0012J/\u0010\u0015\u001a\u00020\u00072\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0013j\b\u0012\u0004\u0012\u00020\u0003`\u00142\u0006\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u00020\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H&¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\nH&¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u0005H&¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0007H&¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0007H&¢\u0006\u0004\b#\u0010\"J\u001f\u0010'\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u00052\u0006\u0010&\u001a\u00020%H&¢\u0006\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lcom/tmobile/services/nameid/Settings/categorymanager/CategoryManager$View;", "Lkotlin/Any;", "", "Lcom/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$CategoryListInterface;", FirebaseAnalytics.Param.ITEMS, "", "isActive", "", "addCategoriesToAdapter", "(Ljava/util/List;Z)V", "", "bucketId", "", "bucketIdString", "on", "disposition", "isPending", "applyCategorySetting", "(ILjava/lang/String;ZIZ)V", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "fillCategoryList", "(Ljava/util/ArrayList;Z)V", "Lcom/tmobile/services/nameid/utility/WidgetUtils$SubscribeFromDialogListener;", "listener", "goToSubscribe", "(Lcom/tmobile/services/nameid/utility/WidgetUtils$SubscribeFromDialogListener;)V", "position", "scrollToCategoryPosition", "(I)V", "active", "setUserActiveStatus", "(Z)V", "showCallCareDialog", "()V", "showMetroPendingCategoryDialog", "add", "", "fail", "showUpdateFailUI", "(ZLjava/lang/Throwable;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoryManager$View.class */
    public interface View {
        /* renamed from: B */
        void mo7313B(@Nullable WidgetUtils.SubscribeFromDialogListener subscribeFromDialogListener);

        /* renamed from: E0 */
        void mo7312E0();

        /* renamed from: Z */
        void mo7295Z(int i, @NotNull String str, boolean z, int i2, boolean z2);

        /* renamed from: b */
        void mo7294b();

        /* renamed from: c0 */
        void mo7293c0(int i);

        /* renamed from: j */
        void mo7292j(@NotNull ArrayList<CategoriesAdapter.CategoryListInterface> arrayList, boolean z);

        /* renamed from: k0 */
        void mo7291k0(@NotNull List<? extends CategoriesAdapter.CategoryListInterface> list, boolean z);

        /* renamed from: o0 */
        void mo7290o0(boolean z);
    }
}
