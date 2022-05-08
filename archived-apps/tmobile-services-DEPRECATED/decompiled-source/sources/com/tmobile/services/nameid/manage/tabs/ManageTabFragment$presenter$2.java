package com.tmobile.services.nameid.manage.tabs;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/tmobile/services/nameid/manage/tabs/ManageTabPresenter;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/tabs/ManageTabFragment$presenter$2.class */
public final class ManageTabFragment$presenter$2 extends Lambda implements Function0<ManageTabPresenter> {

    /* renamed from: f */
    final /* synthetic */ ManageTabFragment f13585f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManageTabFragment$presenter$2(ManageTabFragment manageTabFragment) {
        super(0);
        this.f13585f = manageTabFragment;
    }

    @NotNull
    /* renamed from: b */
    public final ManageTabPresenter invoke() {
        return new ManageTabPresenter(this.f13585f, new RealmManageTabModel());
    }
}
