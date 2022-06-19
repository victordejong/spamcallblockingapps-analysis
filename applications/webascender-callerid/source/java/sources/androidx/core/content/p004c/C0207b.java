package androidx.core.content.p004c;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.content.c.b */
/* loaded from: classes-dex2jar.jar:androidx/core/content/c/b.class */
public final class C0207b {

    /* renamed from: a */
    private final Shader f1313a;

    /* renamed from: b */
    private final ColorStateList f1314b;

    /* renamed from: c */
    private int f1315c;

    private C0207b(Shader shader, ColorStateList colorStateList, int i) {
        this.f1313a = shader;
        this.f1314b = colorStateList;
        this.f1315c = i;
    }

    /* renamed from: a */
    private static C0207b m6038a(Resources resources, int i, Resources.Theme theme) throws IOException, XmlPullParserException {
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
            name.hashCode();
            if (name.equals("gradient")) {
                return m6035d(C0211d.m6011b(resources, xml, asAttributeSet, theme));
            }
            if (name.equals("selector")) {
                return m6036c(C0206a.m6043b(resources, xml, asAttributeSet, theme));
            }
            throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: b */
    public static C0207b m6037b(int i) {
        return new C0207b(null, null, i);
    }

    /* renamed from: c */
    static C0207b m6036c(ColorStateList colorStateList) {
        return new C0207b(null, colorStateList, colorStateList.getDefaultColor());
    }

    /* renamed from: d */
    static C0207b m6035d(Shader shader) {
        return new C0207b(shader, null, 0);
    }

    /* renamed from: g */
    public static C0207b m6032g(Resources resources, int i, Resources.Theme theme) {
        try {
            return m6038a(resources, i, theme);
        } catch (Exception e) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
            return null;
        }
    }

    /* renamed from: e */
    public int m6034e() {
        return this.f1315c;
    }

    /* renamed from: f */
    public Shader m6033f() {
        return this.f1313a;
    }

    /* renamed from: h */
    public boolean m6031h() {
        return this.f1313a != null;
    }

    /* renamed from: i */
    public boolean m6030i() {
        ColorStateList colorStateList;
        return this.f1313a == null && (colorStateList = this.f1314b) != null && colorStateList.isStateful();
    }

    /* renamed from: j */
    public boolean m6029j(int[] iArr) {
        boolean z;
        ColorStateList colorStateList;
        int colorForState;
        if (!m6030i() || (colorForState = (colorStateList = this.f1314b).getColorForState(iArr, colorStateList.getDefaultColor())) == this.f1315c) {
            z = false;
        } else {
            z = true;
            this.f1315c = colorForState;
        }
        return z;
    }

    /* renamed from: k */
    public void m6028k(int i) {
        this.f1315c = i;
    }

    /* renamed from: l */
    public boolean m6027l() {
        return m6031h() || this.f1315c != 0;
    }
}
