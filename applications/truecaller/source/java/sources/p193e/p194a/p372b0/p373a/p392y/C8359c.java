package p193e.p194a.p372b0.p373a.p392y;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import e.f.a.r.k.c;
import p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22604d;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.b0.a.y.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/y/c.class */
public final class C8359c extends C8361d {

    /* renamed from: f */
    public Integer f25691f;

    /* renamed from: g */
    public String f25692g;

    /* renamed from: h */
    public final CharSequence f25693h;

    /* renamed from: i */
    public final int f25694i;

    /* renamed from: j */
    public final Paint.FontMetricsInt f25695j;

    /* renamed from: e.a.b0.a.y.c$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/y/c$a.class */
    public final class C8360a extends c<Bitmap> {

        /* renamed from: d */
        public BitmapDrawable f25696d;

        /* renamed from: e */
        public final Context f25697e;

        /* renamed from: f */
        public final SpannableStringBuilder f25698f;

        /* renamed from: g */
        public final /* synthetic */ C8359c f25699g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8360a(C8359c c8359c, Context context, SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            super(i, i2);
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(spannableStringBuilder, "spannableStringBuilder");
            this.f25699g = c8359c;
            this.f25697e = context;
            this.f25698f = spannableStringBuilder;
        }

        /* renamed from: d */
        public void m28645d(Drawable drawable) {
            this.f25696d = null;
        }

        /* renamed from: e */
        public void m28644e(Object obj, AbstractC22604d abstractC22604d) {
            Bitmap bitmap = (Bitmap) obj;
            l.e(bitmap, Constants.VAST_RESOURCE);
            try {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f25697e.getResources(), bitmap);
                this.f25696d = bitmapDrawable;
                SpannableStringBuilder spannableStringBuilder = this.f25698f;
                C8359c c8359c = this.f25699g;
                C19291g.m13545i(bitmapDrawable, spannableStringBuilder, c8359c.f25691f, c8359c.f25695j, false, 8);
            } catch (Exception e) {
                this.f25696d = null;
                AssertionUtil.reportWeirdnessButNeverCrash(e.getMessage());
            }
            SpannableStringBuilder spannableStringBuilder2 = this.f25698f;
            C8359c c8359c2 = this.f25699g;
            SpannableStringBuilder append = spannableStringBuilder2.append(C18334g0.m15243Y(c8359c2.f25693h, c8359c2.f25694i, c8359c2.f25700a, c8359c2.f25701b));
            l.d(append, "spannableStringBuilder.a…ngEndIndex)\n            )");
            v.g0(append);
        }

        /* renamed from: i */
        public void m28643i(Drawable drawable) {
            SpannableStringBuilder spannableStringBuilder = this.f25698f;
            C8359c c8359c = this.f25699g;
            SpannableStringBuilder append = spannableStringBuilder.append(C18334g0.m15243Y(c8359c.f25693h, c8359c.f25694i, c8359c.f25700a, c8359c.f25701b));
            l.d(append, "spannableStringBuilder.a…ngEndIndex)\n            )");
            v.g0(append);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8359c(CharSequence charSequence, int i, Paint.FontMetricsInt fontMetricsInt) {
        super(charSequence, i, fontMetricsInt);
        l.e(charSequence, "text");
        l.e(fontMetricsInt, "fontMetrics");
        this.f25693h = charSequence;
        this.f25694i = i;
        this.f25695j = fontMetricsInt;
    }
}
