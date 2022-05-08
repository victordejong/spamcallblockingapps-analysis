package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/ComplexColorCompat.class */
public final class ComplexColorCompat {

    /* renamed from: a */
    private final Shader f2992a;

    /* renamed from: b */
    private final ColorStateList f2993b;

    /* renamed from: c */
    private int f2994c;

    private ComplexColorCompat(Shader shader, ColorStateList colorStateList, @ColorInt int i) {
        this.f2992a = shader;
        this.f2993b = colorStateList;
        this.f2994c = i;
    }

    @NonNull
    /* renamed from: a */
    private static ComplexColorCompat m19650a(@NonNull Resources resources, @ColorRes int i, @Nullable Resources.Theme theme) throws IOException, XmlPullParserException {
        int next;
        XmlResourceParser xml = resources.getXml(i);
        AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            String name = xml.getName();
            char c = 65535;
            int hashCode = name.hashCode();
            if (hashCode != 89650992) {
                if (hashCode == 1191572447 && name.equals("selector")) {
                    c = 0;
                }
            } else if (name.equals("gradient")) {
                c = 1;
            }
            if (c == 0) {
                return m19648c(ColorStateListInflaterCompat.m19655b(resources, xml, asAttributeSet, theme));
            }
            if (c == 1) {
                return m19647d(GradientColorInflaterCompat.m19619b(resources, xml, asAttributeSet, theme));
            }
            throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static ComplexColorCompat m19649b(@ColorInt int i) {
        return new ComplexColorCompat(null, null, i);
    }

    /* renamed from: c */
    static ComplexColorCompat m19648c(@NonNull ColorStateList colorStateList) {
        return new ComplexColorCompat(null, colorStateList, colorStateList.getDefaultColor());
    }

    /* renamed from: d */
    static ComplexColorCompat m19647d(@NonNull Shader shader) {
        return new ComplexColorCompat(shader, null, 0);
    }

    @Nullable
    /* renamed from: g */
    public static ComplexColorCompat m19644g(@NonNull Resources resources, @ColorRes int i, @Nullable Resources.Theme theme) {
        try {
            return m19650a(resources, i, theme);
        } catch (Exception e) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
            return null;
        }
    }

    @ColorInt
    /* renamed from: e */
    public int m19646e() {
        return this.f2994c;
    }

    @Nullable
    /* renamed from: f */
    public Shader m19645f() {
        return this.f2992a;
    }

    /* renamed from: h */
    public boolean m19643h() {
        return this.f2992a != null;
    }

    /* renamed from: i */
    public boolean m19642i() {
        ColorStateList colorStateList;
        return this.f2992a == null && (colorStateList = this.f2993b) != null && colorStateList.isStateful();
    }

    /* renamed from: j */
    public boolean m19641j(int[] iArr) {
        boolean z;
        ColorStateList colorStateList;
        int colorForState;
        if (!m19642i() || (colorForState = (colorStateList = this.f2993b).getColorForState(iArr, colorStateList.getDefaultColor())) == this.f2994c) {
            z = false;
        } else {
            z = true;
            this.f2994c = colorForState;
        }
        return z;
    }

    /* renamed from: k */
    public void m19640k(@ColorInt int i) {
        this.f2994c = i;
    }

    /* renamed from: l */
    public boolean m19639l() {
        return m19643h() || this.f2994c != 0;
    }
}
