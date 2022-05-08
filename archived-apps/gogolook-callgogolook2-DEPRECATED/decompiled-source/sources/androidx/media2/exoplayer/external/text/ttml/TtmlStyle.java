package androidx.media2.exoplayer.external.text.ttml;

import android.text.Layout;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/ttml/TtmlStyle.class */
public final class TtmlStyle {
    public static final int FONT_SIZE_UNIT_EM = 2;
    public static final int FONT_SIZE_UNIT_PERCENT = 3;
    public static final int FONT_SIZE_UNIT_PIXEL = 1;
    public static final int OFF = 0;

    /* renamed from: ON */
    public static final int f104ON = 1;
    public static final int STYLE_BOLD = 1;
    public static final int STYLE_BOLD_ITALIC = 3;
    public static final int STYLE_ITALIC = 2;
    public static final int STYLE_NORMAL = 0;
    public static final int UNSPECIFIED = -1;
    public int backgroundColor;
    public int fontColor;
    public String fontFamily;
    public float fontSize;
    public boolean hasBackgroundColor;
    public boolean hasFontColor;

    /* renamed from: id */
    public String f105id;
    public TtmlStyle inheritableStyle;
    public Layout.Alignment textAlign;
    public int linethrough = -1;
    public int underline = -1;
    public int bold = -1;
    public int italic = -1;
    public int fontSizeUnit = -1;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/ttml/TtmlStyle$FontSizeUnit.class */
    public @interface FontSizeUnit {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/ttml/TtmlStyle$OptionalBoolean.class */
    public @interface OptionalBoolean {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/ttml/TtmlStyle$StyleFlags.class */
    public @interface StyleFlags {
    }

    private TtmlStyle inherit(TtmlStyle ttmlStyle, boolean z) {
        if (ttmlStyle != null) {
            if (!this.hasFontColor && ttmlStyle.hasFontColor) {
                setFontColor(ttmlStyle.fontColor);
            }
            if (this.bold == -1) {
                this.bold = ttmlStyle.bold;
            }
            if (this.italic == -1) {
                this.italic = ttmlStyle.italic;
            }
            if (this.fontFamily == null) {
                this.fontFamily = ttmlStyle.fontFamily;
            }
            if (this.linethrough == -1) {
                this.linethrough = ttmlStyle.linethrough;
            }
            if (this.underline == -1) {
                this.underline = ttmlStyle.underline;
            }
            if (this.textAlign == null) {
                this.textAlign = ttmlStyle.textAlign;
            }
            if (this.fontSizeUnit == -1) {
                this.fontSizeUnit = ttmlStyle.fontSizeUnit;
                this.fontSize = ttmlStyle.fontSize;
            }
            if (z && !this.hasBackgroundColor && ttmlStyle.hasBackgroundColor) {
                setBackgroundColor(ttmlStyle.backgroundColor);
            }
        }
        return this;
    }

    public TtmlStyle chain(TtmlStyle ttmlStyle) {
        return inherit(ttmlStyle, true);
    }

    public int getBackgroundColor() {
        if (this.hasBackgroundColor) {
            return this.backgroundColor;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public int getFontColor() {
        if (this.hasFontColor) {
            return this.fontColor;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    public String getFontFamily() {
        return this.fontFamily;
    }

    public float getFontSize() {
        return this.fontSize;
    }

    public int getFontSizeUnit() {
        return this.fontSizeUnit;
    }

    public String getId() {
        return this.f105id;
    }

    public int getStyle() {
        if (this.bold == -1 && this.italic == -1) {
            return -1;
        }
        int i = 0;
        int i2 = this.bold == 1 ? 1 : 0;
        if (this.italic == 1) {
            i = 2;
        }
        return i2 | i;
    }

    public Layout.Alignment getTextAlign() {
        return this.textAlign;
    }

    public boolean hasBackgroundColor() {
        return this.hasBackgroundColor;
    }

    public boolean hasFontColor() {
        return this.hasFontColor;
    }

    public TtmlStyle inherit(TtmlStyle ttmlStyle) {
        return inherit(ttmlStyle, false);
    }

    public boolean isLinethrough() {
        boolean z = true;
        if (this.linethrough != 1) {
            z = false;
        }
        return z;
    }

    public boolean isUnderline() {
        boolean z = true;
        if (this.underline != 1) {
            z = false;
        }
        return z;
    }

    public TtmlStyle setBackgroundColor(int i) {
        this.backgroundColor = i;
        this.hasBackgroundColor = true;
        return this;
    }

    public TtmlStyle setBold(boolean z) {
        Assertions.checkState(this.inheritableStyle == null);
        this.bold = z ? 1 : 0;
        return this;
    }

    public TtmlStyle setFontColor(int i) {
        Assertions.checkState(this.inheritableStyle == null);
        this.fontColor = i;
        this.hasFontColor = true;
        return this;
    }

    public TtmlStyle setFontFamily(String str) {
        Assertions.checkState(this.inheritableStyle == null);
        this.fontFamily = str;
        return this;
    }

    public TtmlStyle setFontSize(float f) {
        this.fontSize = f;
        return this;
    }

    public TtmlStyle setFontSizeUnit(int i) {
        this.fontSizeUnit = i;
        return this;
    }

    public TtmlStyle setId(String str) {
        this.f105id = str;
        return this;
    }

    public TtmlStyle setItalic(boolean z) {
        Assertions.checkState(this.inheritableStyle == null);
        this.italic = z ? 1 : 0;
        return this;
    }

    public TtmlStyle setLinethrough(boolean z) {
        Assertions.checkState(this.inheritableStyle == null);
        this.linethrough = z ? 1 : 0;
        return this;
    }

    public TtmlStyle setTextAlign(Layout.Alignment alignment) {
        this.textAlign = alignment;
        return this;
    }

    public TtmlStyle setUnderline(boolean z) {
        Assertions.checkState(this.inheritableStyle == null);
        this.underline = z ? 1 : 0;
        return this;
    }
}
