package butterknife.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import androidx.core.content.C0203a;
import androidx.core.graphics.drawable.C0222a;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:butterknife/internal/Utils.class */
public final class Utils {
    private static final TypedValue VALUE = new TypedValue();

    private Utils() {
        throw new AssertionError("No instances.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object[]] */
    @SafeVarargs
    public static <T> T[] arrayFilteringNull(T... tArr) {
        int i;
        int length = tArr.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= length) {
                break;
            }
            T t = tArr[i2];
            int i4 = i;
            if (t != null) {
                tArr[i] = t;
                i4 = i + 1;
            }
            i2++;
            i3 = i4;
        }
        if (i != length) {
            tArr = Arrays.copyOf(tArr, i);
        }
        return tArr;
    }

    public static <T> T castParam(Object obj, String str, int i, String str2, int i2, Class<T> cls) {
        try {
            return cls.cast(obj);
        } catch (ClassCastException e) {
            throw new IllegalStateException("Parameter #" + (i + 1) + " of method '" + str + "' was of the wrong type for parameter #" + (i2 + 1) + " of method '" + str2 + "'. See cause for more info.", e);
        }
    }

    public static <T> T castView(View view, int i, String str, Class<T> cls) {
        try {
            return cls.cast(view);
        } catch (ClassCastException e) {
            String resourceEntryName = getResourceEntryName(view, i);
            throw new IllegalStateException("View '" + resourceEntryName + "' with ID " + i + " for " + str + " was of the wrong type. See cause for more info.", e);
        }
    }

    public static <T> T findOptionalViewAsType(View view, int i, String str, Class<T> cls) {
        return (T) castView(view.findViewById(i), i, str, cls);
    }

    public static View findRequiredView(View view, int i, String str) {
        View findViewById = view.findViewById(i);
        if (findViewById != null) {
            return findViewById;
        }
        String resourceEntryName = getResourceEntryName(view, i);
        throw new IllegalStateException("Required view '" + resourceEntryName + "' with ID " + i + " for " + str + " was not found. If this view is optional add '@Nullable' (fields) or '@Optional' (methods) annotation.");
    }

    public static <T> T findRequiredViewAsType(View view, int i, String str, Class<T> cls) {
        return (T) castView(findRequiredView(view, i, str), i, str, cls);
    }

    public static float getFloat(Context context, int i) {
        TypedValue typedValue = VALUE;
        context.getResources().getValue(i, typedValue, true);
        if (typedValue.type == 4) {
            return typedValue.getFloat();
        }
        throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
    }

    private static String getResourceEntryName(View view, int i) {
        return view.isInEditMode() ? "<unavailable while editing>" : view.getContext().getResources().getResourceEntryName(i);
    }

    public static Drawable getTintedDrawable(Context context, int i, int i2) {
        Resources.Theme theme = context.getTheme();
        TypedValue typedValue = VALUE;
        if (theme.resolveAttribute(i2, typedValue, true)) {
            Drawable m5954r = C0222a.m5954r(C0203a.m6054f(context, i).mutate());
            C0222a.m5958n(m5954r, C0203a.m6056d(context, typedValue.resourceId));
            return m5954r;
        }
        throw new Resources.NotFoundException("Required tint color attribute with name " + context.getResources().getResourceEntryName(i2) + " and attribute ID " + i2 + " was not found.");
    }

    @SafeVarargs
    public static <T> List<T> listFilteringNull(T... tArr) {
        return new ImmutableList(arrayFilteringNull(tArr));
    }
}
