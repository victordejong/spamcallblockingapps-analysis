package p193e.p194a.p294b.p370p;

import android.content.Context;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import p1727n3.p1807k.p1809b.C26467a;
import s1.z.c.l;
/* renamed from: e.a.b.p.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/p/b.class */
public final class C8203b extends ClickableSpan {

    /* renamed from: a */
    public final /* synthetic */ TextView f25350a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC8207f f25351b;

    public C8203b(TextView textView, AbstractC8207f abstractC8207f) {
        this.f25350a = textView;
        this.f25351b = abstractC8207f;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        l.e(view, ViewAction.VIEW);
        this.f25351b.mo28775sw();
        view.cancelPendingInputEvents();
        view.invalidate();
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        int i;
        l.e(textPaint, "ds");
        textPaint.setUnderlineText(false);
        if (this.f25350a.isPressed()) {
            Context context = this.f25350a.getContext();
            int i2 = C3478R.color.white;
            Object obj = C26467a.f74235a;
            i = C26467a.C26471d.m1787a(context, i2);
        } else {
            Context context2 = this.f25350a.getContext();
            int i3 = C3478R.color.azure;
            Object obj2 = C26467a.f74235a;
            i = C26467a.C26471d.m1787a(context2, i3);
        }
        textPaint.setColor(i);
        this.f25350a.invalidate();
    }
}
