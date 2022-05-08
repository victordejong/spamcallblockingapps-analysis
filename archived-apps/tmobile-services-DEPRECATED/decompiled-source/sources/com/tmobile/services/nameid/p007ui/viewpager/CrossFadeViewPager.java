package com.tmobile.services.nameid.p007ui.viewpager;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.google.firebase.messaging.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001:\u0001\u000eB\u0019\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/tmobile/services/nameid/ui/viewpager/CrossFadeViewPager;", "Landroidx/viewpager/widget/ViewPager;", "Landroid/view/MotionEvent;", Constants.FirelogAnalytics.PARAM_EVENT, "", "onInterceptTouchEvent", "(Landroid/view/MotionEvent;)Z", "onTouchEvent", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "CrossFadeTransformer", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.viewpager.CrossFadeViewPager */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/viewpager/CrossFadeViewPager.class */
public final class CrossFadeViewPager extends ViewPager {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\b\u0002\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u001c\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086D¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/tmobile/services/nameid/ui/viewpager/CrossFadeViewPager$CrossFadeTransformer;", "androidx/viewpager/widget/ViewPager$PageTransformer", "Landroid/view/View;", "page", "", "position", "", "transformPage", "(Landroid/view/View;F)V", "", "ANIM_TIME", "J", "getANIM_TIME", "()J", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.viewpager.CrossFadeViewPager$CrossFadeTransformer */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/viewpager/CrossFadeViewPager$CrossFadeTransformer.class */
    private static final class CrossFadeTransformer implements ViewPager.PageTransformer {

        /* renamed from: a */
        private final long f14230a = 200;

        @Override // androidx.viewpager.widget.ViewPager.PageTransformer
        /* renamed from: a */
        public void mo5906a(@NotNull View page, float f) {
            Intrinsics.m1830e(page, "page");
            page.setAlpha(0.0f);
            page.setVisibility(0);
            page.animate().alpha(1.0f).setDuration(this.f14230a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CrossFadeViewPager(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.m1830e(context, "context");
        setPageTransformer(true, new CrossFadeTransformer());
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.m1830e(event, "event");
        return false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.m1830e(event, "event");
        return false;
    }
}
