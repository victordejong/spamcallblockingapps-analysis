package com.privacystar.core.p011ui.widgets;

import android.content.Context;
import android.support.annotation.StringRes;
import android.support.design.widget.Snackbar;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.text.HtmlCompat;
import android.view.View;
import android.widget.TextView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mustafatunc.simplesnackbarbuilder.SSnackbar;
import com.privacystar.core.C1566R;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006J \u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ4\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0012\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\u0013\u001a\u00020\b¨\u0006\u0014"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/PSSnackBars;", "", "()V", "getColorResource", "", "context", "Landroid/content/Context;", "isErrorMessage", "", "getNeighborhoodSpoofingEnabledSnack", "Landroid/support/design/widget/Snackbar;", "parent", "Landroid/view/View;", "getSettingsSnackBar", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroid/view/View$OnClickListener;", "getTopToBottomNoActionSnack", "Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar;", "messageStringID", "textCenterAligned", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.PSSnackBars */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/PSSnackBars.class */
public final class PSSnackBars {
    public static final PSSnackBars INSTANCE = new PSSnackBars();

    private PSSnackBars() {
    }

    private final int getColorResource(Context context, boolean z) {
        return z ? ContextCompat.getColor(context, C1566R.color.snackbar_error_red) : ContextCompat.getColor(context, C1566R.color.snackbar_success_green);
    }

    @NotNull
    public static /* synthetic */ SSnackbar getTopToBottomNoActionSnack$default(PSSnackBars pSSnackBars, View view, Context context, int i, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            z = false;
        }
        if ((i2 & 16) != 0) {
            z2 = true;
        }
        return pSSnackBars.getTopToBottomNoActionSnack(view, context, i, z, z2);
    }

    @NotNull
    public final Snackbar getNeighborhoodSpoofingEnabledSnack(@NotNull View parent, @NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Intrinsics.checkParameterIsNotNull(context, "context");
        String string = context.getString(C1566R.string.general_success);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.string.general_success)");
        String string2 = context.getString(C1566R.string.neighborhood_spoofing_snack_text);
        Intrinsics.checkExpressionValueIsNotNull(string2, "context.getString(R.stri…hood_spoofing_snack_text)");
        Snackbar make = Snackbar.make(parent, HtmlCompat.fromHtml(StringsKt.replace$default(string2, string, "<b>" + string + "</b>", false, 4, (Object) null), 0), 0);
        Intrinsics.checkExpressionValueIsNotNull(make, "Snackbar.make(\n         …  , Snackbar.LENGTH_LONG)");
        View view = make.getView();
        Intrinsics.checkExpressionValueIsNotNull(view, "snack.view");
        View findViewById = view.findViewById(2131297275);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        TextView textView = (TextView) findViewById;
        textView.setCompoundDrawablesWithIntrinsicBounds(C1566R.C1568drawable.ic_checkmark, 0, 0, 0);
        textView.setCompoundDrawablePadding(context.getResources().getDimensionPixelOffset(C1566R.dimen.snackbar_image_margin));
        View view2 = make.getView();
        Intrinsics.checkExpressionValueIsNotNull(view2, "snack.view");
        view2.setBackground(context.getDrawable(C1566R.C1568drawable.snackbar_layout));
        return make;
    }

    @NotNull
    public final Snackbar getSettingsSnackBar(@NotNull View parent, @NotNull Context context, @Nullable View.OnClickListener onClickListener) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Intrinsics.checkParameterIsNotNull(context, "context");
        String string = context.getString(C1566R.string.general_success);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.string.general_success)");
        String string2 = context.getString(C1566R.string.settings_toast_message);
        Intrinsics.checkExpressionValueIsNotNull(string2, "context.getString(R.string.settings_toast_message)");
        Snackbar make = Snackbar.make(parent, HtmlCompat.fromHtml(StringsKt.replace$default(string2, string, "<b>" + string + "</b>", false, 4, (Object) null), 0), -1);
        Intrinsics.checkExpressionValueIsNotNull(make, "Snackbar.make(\n         …   Snackbar.LENGTH_SHORT)");
        View view = make.getView();
        Intrinsics.checkExpressionValueIsNotNull(view, "snack.view");
        View findViewById = view.findViewById(2131297275);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        TextView textView = (TextView) findViewById;
        textView.setCompoundDrawablesWithIntrinsicBounds(C1566R.C1568drawable.ic_checkmark, 0, 0, 0);
        textView.setCompoundDrawablePadding(context.getResources().getDimensionPixelOffset(C1566R.dimen.snackbar_image_margin));
        View view2 = make.getView();
        Intrinsics.checkExpressionValueIsNotNull(view2, "snack.view");
        view2.setBackground(context.getDrawable(C1566R.C1568drawable.snackbar_layout));
        if (onClickListener != null) {
            make.setActionTextColor(ContextCompat.getColor(context, C1566R.color.ps3_white));
            make.setAction(C1566R.string.general_undo, onClickListener);
        }
        return make;
    }

    @NotNull
    public final SSnackbar getTopToBottomNoActionSnack(@NotNull View parent, @NotNull Context context, @StringRes int i, boolean z, boolean z2) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Intrinsics.checkParameterIsNotNull(context, "context");
        return new SSnackbar.Builder(context, parent, SSnackbar.SnackType.TOP).setTextWithColor(i, -1).backgroundColor(getColorResource(context, z)).textAlignment(z2 ? SSnackbar.Alignment.CENTER : SSnackbar.Alignment.LEFT).build();
    }
}
