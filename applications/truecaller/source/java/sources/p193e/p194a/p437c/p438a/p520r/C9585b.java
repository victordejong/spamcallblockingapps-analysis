package p193e.p194a.p437c.p438a.p520r;

import android.content.Context;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.p168ui.C4078R;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.c.a.r.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/r/b.class */
public final class C9585b extends ClickableSpan {

    /* renamed from: a */
    public final Context f28997a;

    /* renamed from: b */
    public final a<s> f28998b;

    public C9585b(Context context, a<s> aVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(aVar, "onClick");
        this.f28997a = context;
        this.f28998b = aVar;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        l.e(view, "widget");
        this.f28998b.invoke();
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        l.e(textPaint, "ds");
        textPaint.setColor(C19291g.m13538k0(this.f28997a, C4078R.attr.tcx_brandBackgroundBlue));
    }
}
