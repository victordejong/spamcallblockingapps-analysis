package com.tmobile.services.nameid.p007ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.p007ui.features.FeatureDisplayFragment;
import com.tmobile.services.nameid.utility.ScreenDensityUtils;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010 ¢\u0006\u0004\b\"\u0010#J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0015\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\nR\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001d\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001a¨\u0006$"}, d2 = {"Lcom/tmobile/services/nameid/ui/NameIDFeatureIndicator;", "Landroid/widget/LinearLayout;", "", "configureFreeFeature", "()V", "configureNewFeature", "configurePremiumFeature", "", "on", "setBorder", "(Z)V", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "featureType", "setFeatureType", "(Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;)V", "dark", "setUseDarkVariant", "Landroid/widget/ImageView;", "featureIcon", "Landroid/widget/ImageView;", "Lcom/tmobile/services/nameid/ui/NameIDTextView;", "featureText", "Lcom/tmobile/services/nameid/ui/NameIDTextView;", "Lcom/tmobile/services/nameid/ui/features/FeatureDisplayFragment$FeatureType;", "", "layoutResId", "I", "plural", "Z", "premiumColorRes", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.NameIDFeatureIndicator */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/NameIDFeatureIndicator.class */
public final class NameIDFeatureIndicator extends LinearLayout {

    /* renamed from: f */
    private final int f13832f;

    /* renamed from: g */
    private final ImageView f13833g;

    /* renamed from: h */
    private final NameIDTextView f13834h;

    /* renamed from: i */
    private int f13835i;

    /* renamed from: j */
    private FeatureDisplayFragment.FeatureType f13836j;

    /* renamed from: k */
    private boolean f13837k;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.NameIDFeatureIndicator$WhenMappings */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/NameIDFeatureIndicator$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13838a;

        static {
            int[] iArr = new int[FeatureDisplayFragment.FeatureType.values().length];
            f13838a = iArr;
            iArr[FeatureDisplayFragment.FeatureType.Premium.ordinal()] = 1;
            f13838a[FeatureDisplayFragment.FeatureType.Free.ordinal()] = 2;
            f13838a[FeatureDisplayFragment.FeatureType.New.ordinal()] = 3;
        }
    }

    @JvmOverloads
    public NameIDFeatureIndicator(@NotNull Context context) {
        this(context, null, 2, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NameIDFeatureIndicator(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.m1830e(context, "context");
        this.f13832f = C1517R.layout.feature_indicator;
        this.f13835i = C1517R.C1518color.magenta_or_pumpkin_orange;
        this.f13836j = FeatureDisplayFragment.FeatureType.Free;
        LayoutInflater.from(context).inflate(this.f13832f, (ViewGroup) this, true);
        int a = ScreenDensityUtils.m5376a(context, 6);
        int a2 = ScreenDensityUtils.m5376a(context, 10);
        setPadding(a2, a, a2, a);
        setOrientation(0);
        setGravity(16);
        setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        View findViewById = findViewById(C1517R.C1520id.feature_type_icon);
        Intrinsics.m1831d(findViewById, "findViewById(R.id.feature_type_icon)");
        this.f13833g = (ImageView) findViewById;
        View findViewById2 = findViewById(C1517R.C1520id.feature_type_label);
        Intrinsics.m1831d(findViewById2, "findViewById(R.id.feature_type_label)");
        this.f13834h = (NameIDTextView) findViewById2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1517R.styleable.NameIDFeatureIndicator);
        String string = obtainStyledAttributes.getString(0);
        this.f13836j = FeatureDisplayFragment.FeatureType.Companion.m6052a(string == null ? "free" : string);
        this.f13837k = obtainStyledAttributes.getBoolean(1, false);
        setUseDarkVariant(obtainStyledAttributes.getBoolean(2, false));
        obtainStyledAttributes.recycle();
    }

    public /* synthetic */ NameIDFeatureIndicator(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* renamed from: a */
    private final void m6272a() {
        this.f13833g.setVisibility(8);
        setBackgroundResource(17170445);
        this.f13834h.setText(!this.f13837k ? C1517R.string.app_feature_type_free : C1517R.string.app_feature_type_free_plural);
        this.f13834h.setTextColor(getResources().getColor(C1517R.C1518color.magenta_or_pumpkin_orange));
        this.f13834h.setTextSize(2, 12.0f);
    }

    /* renamed from: b */
    private final void m6271b() {
        this.f13833g.setVisibility(8);
        setBackgroundResource(17170445);
        this.f13834h.setText(!this.f13837k ? C1517R.string.app_feature_type_new : C1517R.string.app_feature_type_new_plural);
        this.f13834h.setTextColor(getResources().getColor(C1517R.C1518color.magenta_or_pumpkin_orange));
        this.f13834h.setTextSize(2, 12.0f);
    }

    /* renamed from: c */
    private final void m6270c() {
        this.f13833g.setVisibility(0);
        setBackgroundResource(this.f13835i);
        this.f13834h.setText(!this.f13837k ? C1517R.string.app_feature_type_premium : C1517R.string.app_feature_type_premium_plural);
        this.f13834h.setTextColor(getResources().getColor(C1517R.C1518color.white));
        this.f13834h.setTextSize(2, 10.0f);
    }

    public final void setBorder(boolean z) {
        if (z) {
            setBackgroundResource(C1517R.C1519drawable.feature_indicator_border);
        }
    }

    public final void setFeatureType(@NotNull FeatureDisplayFragment.FeatureType featureType) {
        Intrinsics.m1830e(featureType, "featureType");
        int i = WhenMappings.f13838a[featureType.ordinal()];
        if (i == 1) {
            m6270c();
        } else if (i == 2) {
            m6272a();
        } else if (i == 3) {
            m6271b();
        }
    }

    public final void setUseDarkVariant(boolean z) {
        this.f13835i = z ? C1517R.C1518color.black_or_pumpkin_orange : C1517R.C1518color.magenta_or_pumpkin_orange;
        setFeatureType(this.f13836j);
    }
}
