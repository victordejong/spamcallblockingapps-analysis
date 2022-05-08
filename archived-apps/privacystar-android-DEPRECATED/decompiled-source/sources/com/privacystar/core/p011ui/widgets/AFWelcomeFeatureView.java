package com.privacystar.core.p011ui.widgets;

import android.content.Context;
import android.support.annotation.DrawableRes;
import android.support.annotation.StringRes;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.privacystar.core.C1566R;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\u0018��2\u00020\u0001B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u001a\u0010\u0013\u001a\u00020\u00142\b\b\u0001\u0010\u0015\u001a\u00020\u00162\b\b\u0001\u0010\u0017\u001a\u00020\u0016R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/AFWelcomeFeatureView;", "Landroid/widget/LinearLayout;", "context", "Landroid/content/Context;", "attributeSet", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", SettingsJsonConstants.APP_ICON_KEY, "Landroid/widget/ImageView;", "getIcon", "()Landroid/widget/ImageView;", "setIcon", "(Landroid/widget/ImageView;)V", "label", "Landroid/widget/TextView;", "getLabel", "()Landroid/widget/TextView;", "setLabel", "(Landroid/widget/TextView;)V", "setContent", "", "featureLabel", "", "featureIcon", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.AFWelcomeFeatureView */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/AFWelcomeFeatureView.class */
public final class AFWelcomeFeatureView extends LinearLayout {
    private HashMap _$_findViewCache;
    @NotNull
    private ImageView icon;
    @NotNull
    private TextView label;

    @JvmOverloads
    public AFWelcomeFeatureView(@NotNull Context context) {
        this(context, null, 2, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AFWelcomeFeatureView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        View view = LayoutInflater.from(context).inflate(C1566R.C1571layout.af_welcome_feature, (ViewGroup) this, true);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        TextView textView = (TextView) view.findViewById(C1566R.C1569id.af_welcome_feature_label);
        Intrinsics.checkExpressionValueIsNotNull(textView, "view.af_welcome_feature_label");
        this.label = textView;
        ImageView imageView = (ImageView) view.findViewById(C1566R.C1569id.af_welcome_feature_icon);
        Intrinsics.checkExpressionValueIsNotNull(imageView, "view.af_welcome_feature_icon");
        this.icon = imageView;
    }

    @JvmOverloads
    public /* synthetic */ AFWelcomeFeatureView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
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

    @NotNull
    public final ImageView getIcon() {
        return this.icon;
    }

    @NotNull
    public final TextView getLabel() {
        return this.label;
    }

    public final void setContent(@StringRes int i, @DrawableRes int i2) {
        this.label.setText(i);
        this.icon.setImageResource(i2);
    }

    public final void setIcon(@NotNull ImageView imageView) {
        Intrinsics.checkParameterIsNotNull(imageView, "<set-?>");
        this.icon = imageView;
    }

    public final void setLabel(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.label = textView;
    }
}
