package p193e.p194a.p437c.p438a.p521s;

import android.content.res.ColorStateList;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001J1\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\u0005\u001a\u00020\u00042\b\b\u0003\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nR%\u0010\u0011\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Le/a/c/a/s/c;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "tabName", "", "unselectedColorAttr", "selectedColorAttr", "tabTag", "Ls1/s;", "f1", "(Ljava/lang/String;IILjava/lang/String;)V", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "t", "Ls1/g;", "getLabel", "()Landroid/widget/TextView;", "label", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.s.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/s/c.class */
public final class C9592c extends ConstraintLayout {

    /* renamed from: t */
    public final g f29008t;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C9592c(android.content.Context r6, android.util.AttributeSet r7, int r8, int r9) {
        /*
            r5 = this;
            r0 = r9
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r8 = r0
        L9:
            r0 = r6
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            r1 = r6
            r2 = 0
            r3 = r8
            r0.<init>(r1, r2, r3)
            r0 = r5
            r1 = r5
            int r2 = com.truecaller.insights.p168ui.C4078R.C4080id.label
            s1.g r1 = p193e.p194a.p1129p5.p1132s0.C19286f.m13660s(r1, r2)
            r0.f29008t = r1
            r0 = r6
            int r1 = com.truecaller.insights.p168ui.C4078R.layout.layout_title_tcx_tab
            r2 = r5
            android.view.View r0 = android.view.ViewGroup.inflate(r0, r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p521s.C9592c.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    private final TextView getLabel() {
        return (TextView) this.f29008t.getValue();
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    /* renamed from: f1 */
    public final void m27404f1(String str, int i, int i2, String str2) {
        l.e(str, "tabName");
        l.e(str2, "tabTag");
        TextView label = getLabel();
        l.d(label, "label");
        label.setText(str);
        getLabel().setTextColor(new ColorStateList(new int[]{new int[]{16842913}, new int[0]}, new int[]{C19291g.m13612L(getContext(), i2), C19291g.m13612L(getContext(), i)}));
        setTag(str2);
    }
}
