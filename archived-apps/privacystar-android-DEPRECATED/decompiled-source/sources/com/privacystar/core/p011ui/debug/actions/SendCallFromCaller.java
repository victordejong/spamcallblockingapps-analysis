package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import android.support.p001v4.app.FragmentManager;
import com.privacystar.core.data.model.Offender;
import com.privacystar.core.data.model.OffenderCategory;
import com.privacystar.core.p011ui.PSActivity;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.p011ui.debug.widgets.DropDownDialogForm;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0007J\b\u0010\u000e\u001a\u00020\u0006H\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R.\u0010\u0003\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0013"}, m254d2 = {"Lcom/privacystar/core/ui/debug/actions/SendCallFromCaller;", "Lcom/privacystar/core/ui/debug/DebugAction;", "()V", "choices", "", "Lkotlin/Pair;", "", "", "getChoices", "()Ljava/util/List;", "setChoices", "(Ljava/util/List;)V", "getCategoryNumber", "categoryId", "getTitle", "onPerformAction", "", "context", "Landroid/content/Context;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.debug.actions.SendCallFromCaller */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/SendCallFromCaller.class */
public final class SendCallFromCaller extends DebugAction {
    @Nullable
    private List<Pair<String, Integer>> choices;

    @NotNull
    public final String getCategoryNumber(int i) {
        Timber.m37d("Finding category number where id = " + i, new Object[0]);
        PSActivity activity = getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        RealmResults findAll = activity.getRealm().where(Offender.class).equalTo("categoryId", Integer.valueOf(i)).findAll();
        Intrinsics.checkExpressionValueIsNotNull(findAll, "activity.realm.where(Off…               .findAll()");
        RealmResults<Offender> realmResults = findAll;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(realmResults, 10));
        for (Offender it : realmResults) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            arrayList.add(it.getNumber());
        }
        Object[] array = arrayList.toArray(new Long[0]);
        if (array == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        Long[] lArr = (Long[]) array;
        Timber.m37d("Found " + lArr.length + " numbers with category = " + i, new Object[0]);
        return String.valueOf(lArr[new Random().nextInt(lArr.length)].longValue());
    }

    @Nullable
    public final List<Pair<String, Integer>> getChoices() {
        return this.choices;
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    @NotNull
    public String getTitle() {
        return "Send call from selected caller";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        PSActivity activity = getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        RealmResults findAll = activity.getRealm().where(OffenderCategory.class).findAll();
        Intrinsics.checkExpressionValueIsNotNull(findAll, "activity.realm.where(Off…ry::class.java).findAll()");
        RealmResults<OffenderCategory> realmResults = findAll;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(realmResults, 10));
        for (OffenderCategory it : realmResults) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            arrayList.add(new Pair(it.getCategoryName(), it.getCategoryId()));
        }
        this.choices = arrayList;
        DropDownDialogForm.Companion companion = DropDownDialogForm.Companion;
        FragmentManager fragmentManager = getFragmentManager();
        Intrinsics.checkExpressionValueIsNotNull(fragmentManager, "fragmentManager");
        List<Pair<String, Integer>> list = this.choices;
        if (list == null) {
            Intrinsics.throwNpe();
        }
        List<Pair<String, Integer>> list2 = list;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList2.add((String) ((Pair) it2.next()).getFirst());
        }
        Object[] array = arrayList2.toArray(new String[0]);
        if (array == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        companion.showDropDownDialogForm(fragmentManager, "Send call from caller:", (String[]) array, new SendCallFromCaller$onPerformAction$3(this, context));
    }

    public final void setChoices(@Nullable List<Pair<String, Integer>> list) {
        this.choices = list;
    }
}
