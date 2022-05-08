package com.privacystar.core.p011ui.detail_view.dashboard;

import android.support.annotation.DrawableRes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\b\u0018��2\u00020\u0001B\u001f\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\f\u0010\t¨\u0006\r"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/DashboardItem;", "", "itemIcon", "", "itemTitle", "", "itemValue", "(ILjava/lang/String;I)V", "getItemIcon", "()I", "getItemTitle", "()Ljava/lang/String;", "getItemValue", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.dashboard.DashboardItem */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/DashboardItem.class */
public final class DashboardItem {
    private final int itemIcon;
    @NotNull
    private final String itemTitle;
    private final int itemValue;

    public DashboardItem(@DrawableRes int i, @NotNull String itemTitle, int i2) {
        Intrinsics.checkParameterIsNotNull(itemTitle, "itemTitle");
        this.itemIcon = i;
        this.itemTitle = itemTitle;
        this.itemValue = i2;
    }

    public final int getItemIcon() {
        return this.itemIcon;
    }

    @NotNull
    public final String getItemTitle() {
        return this.itemTitle;
    }

    public final int getItemValue() {
        return this.itemValue;
    }
}
