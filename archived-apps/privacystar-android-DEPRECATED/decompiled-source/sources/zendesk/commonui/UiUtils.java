package zendesk.commonui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.AttrRes;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.graphics.drawable.DrawableCompat;
import android.support.p001v4.view.ViewCompat;
import android.text.Html;
import android.util.TypedValue;
import android.view.View;
import com.zendesk.logger.Logger;
import java.util.Locale;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/UiUtils.class */
public class UiUtils {
    private static final String LOG_TAG = "UiUtils";

    /* loaded from: classes3-dex2jar.jar:zendesk/commonui/UiUtils$ScreenSize.class */
    public enum ScreenSize {
        UNKNOWN,
        UNDEFINED,
        X_LARGE,
        LARGE,
        NORMAL,
        SMALL
    }

    private UiUtils() {
    }

    public static CharSequence decodeHtmlEntities(String str) {
        return Build.VERSION.SDK_INT >= 24 ? Html.fromHtml(str, 0) : Html.fromHtml(str);
    }

    public static int resolveColor(@ColorRes int i, @NonNull Context context) {
        return ContextCompat.getColor(context, i);
    }

    public static void setTint(@ColorInt int i, @Nullable Drawable drawable, @Nullable View view) {
        if (drawable == null) {
            Logger.m295e(LOG_TAG, "Drawable is null, cannot apply a tint", new Object[0]);
            return;
        }
        DrawableCompat.setTint(DrawableCompat.wrap(drawable).mutate(), i);
        if (view != null) {
            view.invalidate();
        }
    }

    public static void setVisibility(View view, int i) {
        if (view == null) {
            Logger.m289w(LOG_TAG, "View is null and can't change visibility", new Object[0]);
        } else {
            view.setVisibility(i);
        }
    }

    @ColorInt
    public static int themeAttributeToColor(@AttrRes int i, @NonNull Context context, @ColorRes int i2) {
        if (i == 0 || context == null || i2 == 0) {
            Logger.m298d(LOG_TAG, "themeAttributeId, context, and fallbackColorId are required.", new Object[0]);
            return ViewCompat.MEASURED_STATE_MASK;
        }
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            Logger.m295e(LOG_TAG, String.format(Locale.US, "Resource %d not found. Resource is either missing or you are using a non-ui context.", Integer.valueOf(i)), new Object[0]);
            return resolveColor(i2, context);
        }
        return typedValue.resourceId == 0 ? typedValue.data : resolveColor(typedValue.resourceId, context);
    }

    public int themeAttributeToPixels(@AttrRes int i, Context context, int i2, float f) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return Math.round(typedValue.getDimension(context.getResources().getDisplayMetrics()));
        }
        Logger.m295e(LOG_TAG, String.format(Locale.US, "Resource %d not found. Resource is either missing or you are using a non-ui context.", Integer.valueOf(i)), new Object[0]);
        return Math.round(TypedValue.applyDimension(i2, f, context.getResources().getDisplayMetrics()));
    }
}
