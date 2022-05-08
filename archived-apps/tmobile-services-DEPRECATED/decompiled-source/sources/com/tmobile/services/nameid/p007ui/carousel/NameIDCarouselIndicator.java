package com.tmobile.services.nameid.p007ui.carousel;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.utility.LogUtil;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001f¢\u0006\u0004\b!\u0010\"J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u0010\u001a\u00020\u0004*\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001d\u0010\u0019\u001a\u00020\u00078B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001d\u0010\u001c\u001a\u00020\u00078B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0016\u001a\u0004\b\u001b\u0010\u0018¨\u0006#"}, d2 = {"Lcom/tmobile/services/nameid/ui/carousel/NameIDCarouselIndicator;", "Landroid/widget/LinearLayout;", "Landroidx/viewpager/widget/ViewPager;", "vp", "Landroid/widget/ImageView;", "createIndicatorDot", "(Landroidx/viewpager/widget/ViewPager;)Landroid/widget/ImageView;", "", "pageNum", "", "indicatePageNumber", "(I)V", "viewPager", "setupWithViewPager", "(Landroidx/viewpager/widget/ViewPager;)V", "Landroid/view/View;", "toImageView", "(Landroid/view/View;)Landroid/widget/ImageView;", "", "TAG", "Ljava/lang/String;", "paddingPx$delegate", "Lkotlin/Lazy;", "getPaddingPx", "()I", "paddingPx", "widthPx$delegate", "getWidthPx", "widthPx", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.carousel.NameIDCarouselIndicator */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/carousel/NameIDCarouselIndicator.class */
public final class NameIDCarouselIndicator extends LinearLayout {

    /* renamed from: f */
    private final String f13908f;

    /* renamed from: g */
    private final Lazy f13909g;

    /* renamed from: h */
    private final Lazy f13910h;

    @JvmOverloads
    public NameIDCarouselIndicator(@NotNull Context context) {
        this(context, null, 2, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NameIDCarouselIndicator(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Lazy a;
        Lazy a2;
        Intrinsics.m1830e(context, "context");
        setOrientation(0);
        setGravity(17);
        this.f13908f = "NameIDCarouselIndic";
        a = LazyKt__LazyJVMKt.m2487a(new NameIDCarouselIndicator$widthPx$2(this));
        this.f13909g = a;
        a2 = LazyKt__LazyJVMKt.m2487a(new NameIDCarouselIndicator$paddingPx$2(context));
        this.f13910h = a2;
    }

    public /* synthetic */ NameIDCarouselIndicator(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* renamed from: c */
    private final ImageView m6190c(final ViewPager viewPager) {
        final Context context = getContext();
        ImageView nameIDCarouselIndicator$createIndicatorDot$dot$1 = new ImageView(this, context) { // from class: com.tmobile.services.nameid.ui.carousel.NameIDCarouselIndicator$createIndicatorDot$dot$1
            @Override // android.view.View
            public boolean dispatchTouchEvent(@Nullable MotionEvent motionEvent) {
                boolean z;
                if (super.dispatchTouchEvent(motionEvent)) {
                    z = true;
                } else {
                    viewPager.dispatchTouchEvent(motionEvent);
                    z = false;
                }
                return z;
            }
        };
        nameIDCarouselIndicator$createIndicatorDot$dot$1.setLayoutParams(new LinearLayout.LayoutParams(getWidthPx(), -2));
        nameIDCarouselIndicator$createIndicatorDot$dot$1.setPadding(getPaddingPx(), getPaddingPx(), getPaddingPx(), getPaddingPx());
        nameIDCarouselIndicator$createIndicatorDot$dot$1.setImageResource(C1517R.C1519drawable.circle);
        return nameIDCarouselIndicator$createIndicatorDot$dot$1;
    }

    /* renamed from: e */
    private final ImageView m6188e(View view) {
        if (view instanceof ImageView) {
            return (ImageView) view;
        }
        throw new IllegalStateException("Child of NameIDCarouselIndicator not ImageView [" + view.getClass().getSimpleName() + ']');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getPaddingPx() {
        return ((Number) this.f13910h.getValue()).intValue();
    }

    private final int getWidthPx() {
        return ((Number) this.f13909g.getValue()).intValue();
    }

    /* renamed from: d */
    public final void m6189d(int i) {
        int childCount = getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            int i3 = i2 == i ? C1517R.C1518color.magenta_or_mango : C1517R.C1518color.grey_4;
            View childAt = getChildAt(i2);
            Intrinsics.m1831d(childAt, "getChildAt(i)");
            m6188e(childAt).setImageTintList(getResources().getColorStateList(i3));
            i2++;
        }
    }

    public final void setupWithViewPager(@NotNull final ViewPager viewPager) {
        Intrinsics.m1830e(viewPager, "viewPager");
        removeAllViews();
        PagerAdapter it = viewPager.getAdapter();
        if (it != null) {
            Intrinsics.m1831d(it, "it");
            int count = it.getCount();
            for (final int i = 0; i < count; i++) {
                ImageView c = m6190c(viewPager);
                c.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.ui.carousel.NameIDCarouselIndicator$setupWithViewPager$$inlined$let$lambda$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        String str;
                        str = this.f13908f;
                        LogUtil.m5643d(str, "dot selected");
                        viewPager.setCurrentItem(i);
                    }
                });
                addView(c);
            }
        }
    }
}
