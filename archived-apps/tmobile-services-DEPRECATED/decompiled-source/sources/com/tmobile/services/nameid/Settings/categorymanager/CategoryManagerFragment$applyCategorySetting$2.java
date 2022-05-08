package com.tmobile.services.nameid.Settings.categorymanager;

import com.tmobile.services.nameid.Settings.categorymanager.CategoryManagerFragment;
import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import retrofit2.Response;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "sucess", "Lretrofit2/Response;", "Ljava/lang/Void;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoryManagerFragment$applyCategorySetting$2.class */
final class CategoryManagerFragment$applyCategorySetting$2<T> implements Consumer<Response<Void>> {

    /* renamed from: f */
    public static final CategoryManagerFragment$applyCategorySetting$2 f12910f = new CategoryManagerFragment$applyCategorySetting$2();

    CategoryManagerFragment$applyCategorySetting$2() {
    }

    /* renamed from: a */
    public final void accept(Response<Void> response) {
        CategoryManagerFragment.Companion unused;
        unused = CategoryManagerFragment.f12887o;
        LogUtil.m5632o("CategoryManagerFragment", "Successfully updated category");
    }
}
