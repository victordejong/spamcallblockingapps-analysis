package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/PaintCompat.class */
public final class PaintCompat {
    public static final String EM_STRING = "m";
    public static final String TOFU_STRING = "��";
    public static final ThreadLocal<Pair<Rect, Rect>> sRectThreadLocal = new ThreadLocal<>();

    public static boolean hasGlyph(@NonNull Paint paint, @NonNull String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return paint.hasGlyph(str);
        }
        int length = str.length();
        if (length == 1 && Character.isWhitespace(str.charAt(0))) {
            return true;
        }
        float measureText = paint.measureText(TOFU_STRING);
        float measureText2 = paint.measureText("m");
        float measureText3 = paint.measureText(str);
        float f = 0.0f;
        if (measureText3 == 0.0f) {
            return false;
        }
        if (str.codePointCount(0, str.length()) > 1) {
            if (measureText3 > measureText2 * 2.0f) {
                return false;
            }
            int i = 0;
            while (i < length) {
                int charCount = Character.charCount(str.codePointAt(i)) + i;
                f += paint.measureText(str, i, charCount);
                i = charCount;
            }
            if (measureText3 >= f) {
                return false;
            }
        }
        if (measureText3 != measureText) {
            return true;
        }
        Pair<Rect, Rect> obtainEmptyRects = obtainEmptyRects();
        paint.getTextBounds(TOFU_STRING, 0, 2, obtainEmptyRects.first);
        paint.getTextBounds(str, 0, length, obtainEmptyRects.second);
        return !obtainEmptyRects.first.equals(obtainEmptyRects.second);
    }

    public static Pair<Rect, Rect> obtainEmptyRects() {
        Pair<Rect, Rect> pair = sRectThreadLocal.get();
        if (pair == null) {
            pair = new Pair<>(new Rect(), new Rect());
            sRectThreadLocal.set(pair);
        } else {
            pair.first.setEmpty();
            pair.second.setEmpty();
        }
        return pair;
    }

    public static boolean setBlendMode(@NonNull Paint paint, @Nullable BlendModeCompat blendModeCompat) {
        boolean z = true;
        PorterDuffXfermode porterDuffXfermode = null;
        BlendMode blendMode = null;
        if (Build.VERSION.SDK_INT >= 29) {
            if (blendModeCompat != null) {
                blendMode = BlendModeUtils.obtainBlendModeFromCompat(blendModeCompat);
            }
            paint.setBlendMode(blendMode);
            return true;
        } else if (blendModeCompat != null) {
            PorterDuff.Mode obtainPorterDuffFromCompat = BlendModeUtils.obtainPorterDuffFromCompat(blendModeCompat);
            if (obtainPorterDuffFromCompat != null) {
                porterDuffXfermode = new PorterDuffXfermode(obtainPorterDuffFromCompat);
            }
            paint.setXfermode(porterDuffXfermode);
            if (obtainPorterDuffFromCompat == null) {
                z = false;
            }
            return z;
        } else {
            paint.setXfermode(null);
            return true;
        }
    }
}
