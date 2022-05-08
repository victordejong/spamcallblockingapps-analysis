package androidx.core.content.p033a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.content.a.b */
/* loaded from: classes-dex2jar.jar:androidx/core/content/a/b.class */
public final class C0632b {

    /* renamed from: a */
    private final Shader f2889a;

    /* renamed from: b */
    private final ColorStateList f2890b;

    /* renamed from: c */
    private int f2891c;

    private C0632b(Shader shader, ColorStateList colorStateList, int i) {
        this.f2889a = shader;
        this.f2890b = colorStateList;
        this.f2891c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C0632b m8675a(int i) {
        return new C0632b(null, null, i);
    }

    /* renamed from: a */
    public static C0632b m8674a(Resources resources, int i, Resources.Theme theme) {
        int next;
        try {
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
                    ColorStateList a = C0631a.m8678a(resources, xml, asAttributeSet, theme);
                    return new C0632b(null, a, a.getDefaultColor());
                } else if (c == 1) {
                    return new C0632b(C0638d.m8650a(resources, xml, asAttributeSet, theme), null, 0);
                } else {
                    throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
                }
            } else {
                throw new XmlPullParserException("No start tag found");
            }
        } catch (Exception e) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
            return null;
        }
    }

    /* renamed from: a */
    public final Shader m8676a() {
        return this.f2889a;
    }

    /* renamed from: a */
    public final boolean m8673a(int[] iArr) {
        boolean z;
        ColorStateList colorStateList;
        int colorForState;
        if (!m8669d() || (colorForState = (colorStateList = this.f2890b).getColorForState(iArr, colorStateList.getDefaultColor())) == this.f2891c) {
            z = false;
        } else {
            z = true;
            this.f2891c = colorForState;
        }
        return z;
    }

    /* renamed from: b */
    public final int m8672b() {
        return this.f2891c;
    }

    /* renamed from: b */
    public final void m8671b(int i) {
        this.f2891c = i;
    }

    /* renamed from: c */
    public final boolean m8670c() {
        return this.f2889a != null;
    }

    /* renamed from: d */
    public final boolean m8669d() {
        ColorStateList colorStateList;
        return this.f2889a == null && (colorStateList = this.f2890b) != null && colorStateList.isStateful();
    }

    /* renamed from: e */
    public final boolean m8668e() {
        return m8670c() || this.f2891c != 0;
    }
}
