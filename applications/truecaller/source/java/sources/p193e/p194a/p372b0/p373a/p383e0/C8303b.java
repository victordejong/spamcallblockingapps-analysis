package p193e.p194a.p372b0.p373a.p383e0;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.appcompat.widget.AppCompatTextView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.tooltip.TooltipDirection;
import kotlin.Metadata;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\b\b\u0001\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010 \u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u0018R\u0016\u0010\"\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\u0018R\u0016\u0010$\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010\u0018¨\u0006%"}, d2 = {"Le/a/b0/a/e0/b;", "Landroidx/appcompat/widget/AppCompatTextView;", "Lcom/truecaller/common/ui/tooltip/TooltipDirection;", HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, "Ls1/s;", "setDirection", "(Lcom/truecaller/common/ui/tooltip/TooltipDirection;)V", "", "notchBias", "setNotchBias", "(F)V", "", RemoteMessageConst.Notification.COLOR, "setColor", "(I)V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "Landroid/graphics/Path;", "k", "Landroid/graphics/Path;", "notchPath", "i", "F", "Landroid/graphics/Paint;", "j", "Landroid/graphics/Paint;", "paint", "l", "Lcom/truecaller/common/ui/tooltip/TooltipDirection;", "f", "radius", "h", "notchHeight", "g", "notchWidth", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b0.a.e0.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/e0/b.class */
public final class C8303b extends AppCompatTextView {

    /* renamed from: f */
    public final float f25575f;

    /* renamed from: g */
    public final float f25576g;

    /* renamed from: h */
    public final float f25577h;

    /* renamed from: i */
    public float f25578i;

    /* renamed from: j */
    public final Paint f25579j;

    /* renamed from: k */
    public final Path f25580k;

    /* renamed from: l */
    public TooltipDirection f25581l;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C8303b(android.content.Context r6, android.util.AttributeSet r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 190
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p373a.p383e0.C8303b.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        l.e(canvas, "canvas");
        canvas.save();
        TooltipDirection m15212o0 = C18334g0.m15212o0(this.f25581l, this);
        RectF rectF = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        switch (m15212o0.ordinal()) {
            case 1:
            case 7:
            case 8:
            case 10:
            case 11:
                rectF.top += this.f25577h;
                break;
            case 2:
            case 6:
            case 9:
            case 12:
            default:
                throw new IllegalStateException();
            case 3:
            case 13:
            case 14:
                rectF.bottom -= this.f25577h;
                break;
            case 4:
                rectF.left += this.f25577h;
                break;
            case 5:
                rectF.right -= this.f25577h;
                break;
        }
        float f = this.f25575f;
        canvas.drawRoundRect(rectF, f, f, this.f25579j);
        switch (m15212o0.ordinal()) {
            case 1:
                canvas.translate(getWidth() * 0.5f, 0.0f);
                break;
            case 2:
            case 6:
            case 9:
            case 12:
            default:
                throw new IllegalStateException();
            case 3:
                canvas.translate(getWidth() * 0.5f, getHeight());
                break;
            case 4:
                canvas.translate(0.0f, getHeight() * 0.5f);
                break;
            case 5:
                canvas.translate(getWidth(), getHeight() * 0.5f);
                break;
            case 7:
                canvas.translate(getWidth() * 0.75f, 0.0f);
                break;
            case 8:
                canvas.translate(getWidth() * 0.2f, 0.0f);
                break;
            case 10:
                canvas.translate(getWidth() * 0.88f, 0.0f);
                break;
            case 11:
                canvas.translate(getWidth() * 0.12f, 0.0f);
                break;
            case 13:
                canvas.translate(getWidth() - this.f25578i, getHeight());
                break;
            case 14:
                canvas.translate(this.f25578i, getHeight());
                break;
        }
        switch (m15212o0.ordinal()) {
            case 1:
            case 7:
            case 8:
            case 10:
            case 11:
                canvas.rotate(90.0f);
                break;
            case 2:
            case 6:
            case 9:
            case 12:
            default:
                throw new IllegalStateException();
            case 3:
            case 13:
            case 14:
                canvas.rotate(270.0f);
                break;
            case 4:
                canvas.rotate(0.0f);
                break;
            case 5:
                canvas.rotate(180.0f);
                break;
        }
        canvas.drawPath(this.f25580k, this.f25579j);
        canvas.restore();
        super.draw(canvas);
    }

    public final void setColor(int i) {
        this.f25579j.setColor(i);
    }

    public final void setDirection(TooltipDirection tooltipDirection) {
        l.e(tooltipDirection, HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION);
        this.f25581l = tooltipDirection;
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        int m13494z = C19291g.m13494z(context, 10.0f);
        int i = 0;
        int i2 = tooltipDirection == TooltipDirection.START ? (int) this.f25577h : 0;
        int ordinal = tooltipDirection.ordinal();
        int i3 = (ordinal == 1 || ordinal == 6 || ordinal == 9) ? (int) this.f25577h : 0;
        int i4 = tooltipDirection == TooltipDirection.END ? (int) this.f25577h : 0;
        int ordinal2 = tooltipDirection.ordinal();
        if (ordinal2 == 3 || ordinal2 == 12 || ordinal2 == 15) {
            i = (int) this.f25577h;
        }
        setPaddingRelative(i2 + m13494z, i3 + m13494z, i4 + m13494z, m13494z + i);
        if (tooltipDirection == TooltipDirection.BOTTOM) {
            setTextAlignment(4);
        }
    }

    public final void setNotchBias(float f) {
        this.f25578i = f;
    }
}
