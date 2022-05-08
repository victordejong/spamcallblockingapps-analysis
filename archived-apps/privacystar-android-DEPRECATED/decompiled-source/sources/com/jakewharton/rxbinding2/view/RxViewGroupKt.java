package com.jakewharton.rxbinding2.view;

import android.view.ViewGroup;
import io.reactivex.Observable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a\u0013\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b¨\u0006\u0004"}, m254d2 = {"changeEvents", "Lio/reactivex/Observable;", "Lcom/jakewharton/rxbinding2/view/ViewGroupHierarchyChangeEvent;", "Landroid/view/ViewGroup;", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/RxViewGroupKt.class */
public final class RxViewGroupKt {
    @NotNull
    public static final Observable<ViewGroupHierarchyChangeEvent> changeEvents(@NotNull ViewGroup receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<ViewGroupHierarchyChangeEvent> changeEvents = RxViewGroup.changeEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(changeEvents, "RxViewGroup.changeEvents(this)");
        return changeEvents;
    }
}
