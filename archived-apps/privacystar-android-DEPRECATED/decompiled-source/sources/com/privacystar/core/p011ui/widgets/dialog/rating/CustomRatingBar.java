package com.privacystar.core.p011ui.widgets.dialog.rating;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.C1566R;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018��2\u00020\u0001:\u0001<B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001f\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0012\u0010$\u001a\u00020\u001a2\b\u0010%\u001a\u0004\u0018\u00010\"H\u0002J\u0012\u0010&\u001a\u00020\u001a2\b\u0010%\u001a\u0004\u0018\u00010\"H\u0002J\b\u0010'\u001a\u00020\"H\u0002J\u0010\u0010(\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\fH\u0002J\u0012\u0010)\u001a\u0004\u0018\u00010\"2\u0006\u0010*\u001a\u00020\tH\u0002J\u0010\u0010+\u001a\u00020\f2\u0006\u0010,\u001a\u00020\fH\u0002J\r\u0010-\u001a\u00020\u001aH��¢\u0006\u0002\b.J\u0018\u0010/\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u00100\u001a\u00020\u000e2\u0006\u00101\u001a\u000202H\u0016J\u0010\u00103\u001a\u00020\u000e2\u0006\u00104\u001a\u000202H\u0016J\b\u00105\u001a\u00020\u001aH\u0002J\u000e\u00106\u001a\u00020\u001a2\u0006\u00107\u001a\u00020\u0014J)\u00108\u001a\u00020\u001a2!\u00109\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(7\u0012\u0004\u0012\u00020\u001a0\u0016J\u000e\u0010:\u001a\u00020\u001a2\u0006\u0010;\u001a\u00020\u000eR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n��R+\u0010\u0015\u001a\u001f\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u0018\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\"0!X\u0082\u000e¢\u0006\u0004\n\u0002\u0010#¨\u0006="}, m254d2 = {"Lcom/privacystar/core/ui/widgets/dialog/rating/CustomRatingBar;", "Landroid/widget/LinearLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "currentScore", "", "isHalfStars", "", "lastStarId", "lastX", "", "maxStar", "onScoreChanged", "Lcom/privacystar/core/ui/widgets/dialog/rating/CustomRatingBar$IRatingBarCallbacks;", "onScoreSelected", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", FirebaseAnalytics.Param.SCORE, "", "onlyForDisplay", "starHalfResource", "starOffResource", "starOnResource", "starPadding", "starViews", "", "Landroid/widget/ImageView;", "[Landroid/widget/ImageView;", "animateStarPressed", "star", "animateStarRelease", "createStar", "getImageForScore", "getImageView", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "getScoreForPosition", "x", "init", "init$app_core", "initializeAttributes", "onInterceptTouchEvent", "ev", "Landroid/view/MotionEvent;", "onTouchEvent", "event", "refreshStars", "setOnScoreChangeListener", "change", "setOnScoreSelectedListener", "fn", "setScrollToSelect", "enabled", "IRatingBarCallbacks", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.dialog.rating.CustomRatingBar */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/rating/CustomRatingBar.class */
public final class CustomRatingBar extends LinearLayout {
    private HashMap _$_findViewCache;
    private float currentScore;
    private boolean isHalfStars;
    private int lastStarId;
    private double lastX;
    private int maxStar;
    private IRatingBarCallbacks onScoreChanged;
    private Function1<? super Float, Unit> onScoreSelected;
    private boolean onlyForDisplay;
    private int starHalfResource;
    private int starOffResource;
    private int starOnResource;
    private float starPadding;
    private ImageView[] starViews;

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0007\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/dialog/rating/CustomRatingBar$IRatingBarCallbacks;", "", "scoreChanged", "", FirebaseAnalytics.Param.SCORE, "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.widgets.dialog.rating.CustomRatingBar$IRatingBarCallbacks */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/rating/CustomRatingBar$IRatingBarCallbacks.class */
    public interface IRatingBarCallbacks {
        void scoreChanged(float f);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomRatingBar(@NotNull Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.maxStar = 5;
        this.currentScore = 2.5f;
        this.starOnResource = C1566R.C1568drawable.ic_star_filled;
        this.starOffResource = C1566R.C1568drawable.ic_star_empty;
        this.starHalfResource = C1566R.C1568drawable.ic_star_filled;
        this.starViews = new ImageView[this.maxStar];
        this.isHalfStars = true;
        init$app_core();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomRatingBar(@NotNull Context context, @NotNull AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attrs, "attrs");
        this.maxStar = 5;
        this.currentScore = 2.5f;
        this.starOnResource = C1566R.C1568drawable.ic_star_filled;
        this.starOffResource = C1566R.C1568drawable.ic_star_empty;
        this.starHalfResource = C1566R.C1568drawable.ic_star_filled;
        this.starViews = new ImageView[this.maxStar];
        this.isHalfStars = true;
        initializeAttributes(attrs, context);
        init$app_core();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @TargetApi(11)
    public CustomRatingBar(@NotNull Context context, @NotNull AttributeSet attrs, int i) {
        super(context, attrs, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attrs, "attrs");
        this.maxStar = 5;
        this.currentScore = 2.5f;
        this.starOnResource = C1566R.C1568drawable.ic_star_filled;
        this.starOffResource = C1566R.C1568drawable.ic_star_empty;
        this.starHalfResource = C1566R.C1568drawable.ic_star_filled;
        this.starViews = new ImageView[this.maxStar];
        this.isHalfStars = true;
        initializeAttributes(attrs, context);
        init$app_core();
    }

    private final void animateStarPressed(ImageView imageView) {
        if (imageView != null) {
            ViewCompat.animate(imageView).scaleX(1.3f).scaleY(1.3f).setDuration(150L).start();
        }
    }

    private final void animateStarRelease(ImageView imageView) {
        if (imageView != null) {
            ViewCompat.animate(imageView).scaleX(1.0f).scaleY(1.0f).setDuration(150L).start();
        }
    }

    private final ImageView createStar() {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        imageView.setPadding((int) this.starPadding, 0, (int) this.starPadding, 0);
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setLayoutParams(layoutParams);
        imageView.setImageResource(this.starOffResource);
        return imageView;
    }

    private final int getImageForScore(float f) {
        return f > ((float) 0) ? Math.round(f) - 1 : -1;
    }

    private final ImageView getImageView(int i) {
        ImageView imageView;
        try {
            imageView = this.starViews[i];
        } catch (Exception e) {
            imageView = null;
        }
        return imageView;
    }

    private final float getScoreForPosition(float f) {
        if (this.isHalfStars) {
            return Math.round(((f / (getWidth() / (this.maxStar * 3.0f))) / 3.0f) * 2.0f) / 2;
        }
        float round = Math.round(f / (getWidth() / this.maxStar));
        float f2 = round;
        if (round < 0) {
            f2 = 1.0f;
        }
        return f2;
    }

    private final void initializeAttributes(AttributeSet attributeSet, Context context) {
        TypedArray a = context.obtainStyledAttributes(attributeSet, C1566R.styleable.CustomRatingBar);
        Intrinsics.checkExpressionValueIsNotNull(a, "a");
        int indexCount = a.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = a.getIndex(i);
            switch (index) {
                case 0:
                    this.isHalfStars = a.getBoolean(index, true);
                    break;
                case 1:
                    this.maxStar = a.getInt(index, 5);
                    break;
                case 2:
                    this.onlyForDisplay = a.getBoolean(index, false);
                    break;
                case 3:
                    this.starHalfResource = a.getResourceId(index, 17301620);
                    break;
                case 4:
                    this.starOffResource = a.getResourceId(index, 17301621);
                    break;
                case 5:
                    this.starOnResource = a.getResourceId(index, 17301620);
                    break;
                case 6:
                    this.starPadding = a.getDimension(index, 0.0f);
                    break;
                case 7:
                    this.currentScore = a.getFloat(index, 2.5f);
                    break;
            }
        }
        a.recycle();
    }

    private final void refreshStars() {
        int i = 1;
        boolean z = this.currentScore != 0.0f && ((double) this.currentScore) % 0.5d == 0.0d && this.isHalfStars;
        int i2 = this.maxStar;
        if (1 <= i2) {
            while (true) {
                if (i <= this.currentScore) {
                    ImageView imageView = this.starViews[i - 1];
                    if (imageView != null) {
                        imageView.setImageResource(this.starOnResource);
                    }
                } else if (!z || i - 0.5d > this.currentScore) {
                    ImageView imageView2 = this.starViews[i - 1];
                    if (imageView2 != null) {
                        imageView2.setImageResource(this.starOffResource);
                    }
                } else {
                    ImageView imageView3 = this.starViews[i - 1];
                    if (imageView3 != null) {
                        imageView3.setImageResource(this.starHalfResource);
                    }
                }
                if (i != i2) {
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    public final void init$app_core() {
        this.starViews = new ImageView[this.maxStar];
        int i = this.maxStar;
        for (int i2 = 0; i2 < i; i2++) {
            ImageView createStar = createStar();
            addView(createStar);
            this.starViews[i2] = createStar;
        }
        refreshStars();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NotNull MotionEvent ev) {
        Intrinsics.checkParameterIsNotNull(ev, "ev");
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        if (this.onlyForDisplay) {
            return true;
        }
        float f = this.currentScore;
        switch (event.getAction()) {
            case 0:
                this.lastX = event.getX();
                float f2 = this.currentScore;
                this.currentScore = getScoreForPosition(event.getX());
                animateStarPressed(getImageView(getImageForScore(this.currentScore)));
                this.lastStarId = getImageForScore(this.currentScore);
                if (f2 == this.currentScore) {
                    return true;
                }
                refreshStars();
                if (this.onScoreChanged == null) {
                    return true;
                }
                IRatingBarCallbacks iRatingBarCallbacks = this.onScoreChanged;
                if (iRatingBarCallbacks == null) {
                    Intrinsics.throwNpe();
                }
                iRatingBarCallbacks.scoreChanged(this.currentScore);
                return true;
            case 1:
                animateStarRelease(getImageView(this.lastStarId));
                this.lastStarId = -1;
                Function1<? super Float, Unit> function1 = this.onScoreSelected;
                if (function1 == null) {
                    return true;
                }
                function1.invoke(Float.valueOf(this.currentScore));
                return true;
            case 2:
                if (Math.abs(event.getX() - this.lastX) > 50) {
                    requestDisallowInterceptTouchEvent(true);
                }
                this.currentScore = getScoreForPosition(event.getX());
                if (f == this.currentScore) {
                    return true;
                }
                animateStarRelease(getImageView(this.lastStarId));
                animateStarPressed(getImageView(getImageForScore(this.currentScore)));
                this.lastStarId = getImageForScore(this.currentScore);
                refreshStars();
                if (this.onScoreChanged == null) {
                    return true;
                }
                IRatingBarCallbacks iRatingBarCallbacks2 = this.onScoreChanged;
                if (iRatingBarCallbacks2 == null) {
                    Intrinsics.throwNpe();
                }
                iRatingBarCallbacks2.scoreChanged(this.currentScore);
                return true;
            default:
                return true;
        }
    }

    public final void setOnScoreChangeListener(@NotNull IRatingBarCallbacks change) {
        Intrinsics.checkParameterIsNotNull(change, "change");
        this.onScoreChanged = change;
    }

    public final void setOnScoreSelectedListener(@NotNull Function1<? super Float, Unit> fn) {
        Intrinsics.checkParameterIsNotNull(fn, "fn");
        this.onScoreSelected = fn;
    }

    public final void setScrollToSelect(boolean z) {
        this.onlyForDisplay = !z;
    }
}
