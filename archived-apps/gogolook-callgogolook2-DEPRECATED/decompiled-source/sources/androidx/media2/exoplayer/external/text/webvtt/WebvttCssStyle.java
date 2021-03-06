package androidx.media2.exoplayer.external.text.webvtt;

import android.text.Layout;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle.class */
public final class WebvttCssStyle {
    public static final int FONT_SIZE_UNIT_EM = 2;
    public static final int FONT_SIZE_UNIT_PERCENT = 3;
    public static final int FONT_SIZE_UNIT_PIXEL = 1;
    public static final int OFF = 0;

    /* renamed from: ON */
    public static final int f106ON = 1;
    public static final int STYLE_BOLD = 1;
    public static final int STYLE_BOLD_ITALIC = 3;
    public static final int STYLE_ITALIC = 2;
    public static final int STYLE_NORMAL = 0;
    public static final int UNSPECIFIED = -1;
    public int backgroundColor;
    public int bold;
    public int fontColor;
    public String fontFamily;
    public float fontSize;
    public int fontSizeUnit;
    public boolean hasBackgroundColor;
    public boolean hasFontColor;
    public int italic;
    public int linethrough;
    public List<String> targetClasses;
    public String targetId;
    public String targetTag;
    public String targetVoice;
    public Layout.Alignment textAlign;
    public int underline;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle$FontSizeUnit.class */
    public @interface FontSizeUnit {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle$OptionalBoolean.class */
    public @interface OptionalBoolean {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle$StyleFlags.class */
    public @interface StyleFlags {
    }

    public WebvttCssStyle() {
        reset();
    }

    public static int updateScoreForMatch(int i, String str, String str2, int i2) {
        if (!str.isEmpty()) {
            int i3 = -1;
            if (i != -1) {
                if (str.equals(str2)) {
                    i3 = i + i2;
                }
                return i3;
            }
        }
        return i;
    }

    public void cascadeFrom(WebvttCssStyle webvttCssStyle) {
        if (webvttCssStyle.hasFontColor) {
            setFontColor(webvttCssStyle.fontColor);
        }
        int i = webvttCssStyle.bold;
        if (i != -1) {
            this.bold = i;
        }
        int i2 = webvttCssStyle.italic;
        if (i2 != -1) {
            this.italic = i2;
        }
        String str = webvttCssStyle.fontFamily;
        if (str != null) {
            this.fontFamily = str;
        }
        if (this.linethrough == -1) {
            this.linethrough = webvttCssStyle.linethrough;
        }
        if (this.underline == -1) {
            this.underline = webvttCssStyle.underline;
        }
        if (this.textAlign == null) {
            this.textAlign = webvttCssStyle.textAlign;
        }
        if (this.fontSizeUnit == -1) {
            this.fontSizeUnit = webvttCssStyle.fontSizeUnit;
            this.fontSize = webvttCssStyle.fontSize;
        }
        if (webvttCssStyle.hasBackgroundColor) {
            setBackgroundColor(webvttCssStyle.backgroundColor);
        }
    }

    public int getBackgroundColor() {
        if (this.hasBackgroundColor) {
            return this.backgroundColor;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public int getFontColor() {
        if (this.hasFontColor) {
            return this.fontColor;
        }
        throw new IllegalStateException("Font color not defined");
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

    public int getSpecificityScore(String str, String str2, String[] strArr, String str3) {
        if (this.targetId.isEmpty() && this.targetTag.isEmpty() && this.targetClasses.isEmpty() && this.targetVoice.isEmpty()) {
            return str2.isEmpty() ? 1 : 0;
        }
        int updateScoreForMatch = updateScoreForMatch(updateScoreForMatch(updateScoreForMatch(0, this.targetId, str, 1073741824), this.targetTag, str2, 2), this.targetVoice, str3, 4);
        if (updateScoreForMatch == -1 || !Arrays.asList(strArr).containsAll(this.targetClasses)) {
            return 0;
        }
        return updateScoreForMatch + (this.targetClasses.size() * 4);
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

    public void reset() {
        this.targetId = "";
        this.targetTag = "";
        this.targetClasses = Collections.emptyList();
        this.targetVoice = "";
        this.fontFamily = null;
        this.hasFontColor = false;
        this.hasBackgroundColor = false;
        this.linethrough = -1;
        this.underline = -1;
        this.bold = -1;
        this.italic = -1;
        this.fontSizeUnit = -1;
        this.textAlign = null;
    }

    public WebvttCssStyle setBackgroundColor(int i) {
        this.backgroundColor = i;
        this.hasBackgroundColor = true;
        return this;
    }

    public WebvttCssStyle setBold(boolean z) {
        this.bold = z ? 1 : 0;
        return this;
    }

    public WebvttCssStyle setFontColor(int i) {
        this.fontColor = i;
        this.hasFontColor = true;
        return this;
    }

    public WebvttCssStyle setFontFamily(String str) {
        this.fontFamily = Util.toLowerInvariant(str);
        return this;
    }

    public WebvttCssStyle setFontSize(float f) {
        this.fontSize = f;
        return this;
    }

    public WebvttCssStyle setFontSizeUnit(short s) {
        this.fontSizeUnit = s;
        return this;
    }

    public WebvttCssStyle setItalic(boolean z) {
        this.italic = z ? 1 : 0;
        return this;
    }

    public WebvttCssStyle setLinethrough(boolean z) {
        this.linethrough = z ? 1 : 0;
        return this;
    }

    public void setTargetClasses(String[] strArr) {
        this.targetClasses = Arrays.asList(strArr);
    }

    public void setTargetId(String str) {
        this.targetId = str;
    }

    public void setTargetTagName(String str) {
        this.targetTag = str;
    }

    public void setTargetVoice(String str) {
        this.targetVoice = str;
    }

    public WebvttCssStyle setTextAlign(Layout.Alignment alignment) {
        this.textAlign = alignment;
        return this;
    }

    public WebvttCssStyle setUnderline(boolean z) {
        this.underline = z ? 1 : 0;
        return this;
    }
}
