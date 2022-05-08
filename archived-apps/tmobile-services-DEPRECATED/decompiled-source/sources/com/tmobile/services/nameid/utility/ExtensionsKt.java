package com.tmobile.services.nameid.utility;

import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.TmoUserStatus;
import io.realm.RealmResults;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0019\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\b\u0012\u0004\u0012\u00020\u00010��¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0019\u0010\u0002\u001a\u0004\u0018\u00010\u0004*\b\u0012\u0004\u0012\u00020\u00040��¢\u0006\u0004\b\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"Lio/realm/RealmResults;", "Lcom/tmobile/services/nameid/model/LicenseResponseItem;", "getFirst", "(Lio/realm/RealmResults;)Lcom/tmobile/services/nameid/model/LicenseResponseItem;", "Lcom/tmobile/services/nameid/model/TmoUserStatus;", "(Lio/realm/RealmResults;)Lcom/tmobile/services/nameid/model/TmoUserStatus;", "app-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ExtensionsKt.class */
public final class ExtensionsKt {
    @Nullable
    /* renamed from: a */
    public static final LicenseResponseItem m5717a(@NotNull RealmResults<LicenseResponseItem> getFirst) {
        Intrinsics.m1830e(getFirst, "$this$getFirst");
        return (!getFirst.isValid() || getFirst.isEmpty()) ? null : getFirst.get(0);
    }

    @Nullable
    /* renamed from: b */
    public static final TmoUserStatus m5716b(@NotNull RealmResults<TmoUserStatus> getFirst) {
        Intrinsics.m1830e(getFirst, "$this$getFirst");
        return (!getFirst.isValid() || getFirst.isEmpty()) ? null : getFirst.get(0);
    }
}
