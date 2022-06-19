package p193e.p194a.p372b0.p373a.p391x;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.imageview.FullScreenProfilePictureView;
import e.f.a.r.k.c;
import p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22604d;
import s1.z.c.l;
/* renamed from: e.a.b0.a.x.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/x/c.class */
public final class C8351c extends c<BitmapFactory.Options> {

    /* renamed from: d */
    public final /* synthetic */ FullScreenProfilePictureView f25682d;

    /* renamed from: e */
    public final /* synthetic */ FullScreenProfilePictureView.AbstractC3736a f25683e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8351c(FullScreenProfilePictureView fullScreenProfilePictureView, FullScreenProfilePictureView.AbstractC3736a abstractC3736a) {
        super(Integer.MIN_VALUE, Integer.MIN_VALUE);
        this.f25682d = fullScreenProfilePictureView;
        this.f25683e = abstractC3736a;
    }

    /* renamed from: d */
    public void m28647d(Drawable drawable) {
    }

    /* renamed from: e */
    public void m28646e(Object obj, AbstractC22604d abstractC22604d) {
        BitmapFactory.Options options = (BitmapFactory.Options) obj;
        l.e(options, Constants.VAST_RESOURCE);
        FullScreenProfilePictureView.AbstractC3736a abstractC3736a = this.f25683e;
        FullScreenProfilePictureView fullScreenProfilePictureView = this.f25682d;
        int i = options.outWidth;
        int i2 = FullScreenProfilePictureView.f11239e;
        Context context = fullScreenProfilePictureView.getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        Resources resources = context.getResources();
        l.d(resources, "context.resources");
        abstractC3736a.mo35301a(new C8349a((int) ((i * resources.getDisplayMetrics().density) + 0.5f)));
    }
}
