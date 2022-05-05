package com.vladlee.easyblacklist;

import android.content.Context;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.DialogInterfaceC0308m;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
/* renamed from: com.vladlee.easyblacklist.cz */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/cz.class */
final class RunnableC3353cz implements Runnable {

    /* renamed from: a */
    final /* synthetic */ RunnableC3350cw f19469a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC3353cz(RunnableC3350cw cwVar) {
        this.f19469a = cwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AdView adView;
        AdView adView2;
        int i;
        String str;
        AdView adView3;
        LinearLayout linearLayout;
        AdView adView4;
        LinearLayout linearLayout2;
        AdView adView5;
        C3365dk dkVar;
        C3365dk dkVar2;
        boolean a;
        LinearLayout linearLayout3;
        if (!this.f19469a.f19462b.isFinishing() && EasyBlacklistActivity.m341a((AppCompatActivity) this.f19469a.f19462b)) {
            EasyBlacklistActivity.m303l(this.f19469a.f19462b);
            this.f19469a.f19462b.f19255q = new AdView(this.f19469a.f19462b);
            adView = this.f19469a.f19462b.f19255q;
            adView.setAdSize(AdSize.SMART_BANNER);
            adView2 = this.f19469a.f19462b.f19255q;
            adView2.setBackgroundColor(0);
            i = this.f19469a.f19462b.f19250B;
            if (i >= 590) {
                adView3 = this.f19469a.f19462b.f19255q;
                str = "ca-app-pub-6122218967681151/5363993787";
            } else {
                adView3 = this.f19469a.f19462b.f19255q;
                str = "ca-app-pub-6122218967681151/3887260588";
            }
            adView3.setAdUnitId(str);
            this.f19469a.f19462b.f19256r = (LinearLayout) this.f19469a.f19462b.findViewById(2131296453);
            linearLayout = this.f19469a.f19462b.f19256r;
            linearLayout.setVisibility(0);
            adView4 = this.f19469a.f19462b.f19255q;
            adView4.setVisibility(0);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            linearLayout2 = this.f19469a.f19462b.f19256r;
            adView5 = this.f19469a.f19462b.f19255q;
            linearLayout2.addView(adView5, layoutParams);
            dkVar = this.f19469a.f19462b.f19257s;
            if (dkVar != null) {
                dkVar2 = this.f19469a.f19462b.f19257s;
                if (!dkVar2.m135b(this.f19469a.f19462b)) {
                    a = this.f19469a.f19462b.m342a((Context) this.f19469a.f19462b);
                    if (!a) {
                        EasyBlacklistActivity easyBlacklistActivity = this.f19469a.f19462b;
                        DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(easyBlacklistActivity);
                        aVar.m9804a(2131624077);
                        aVar.m9791b(2131624076);
                        aVar.m9796a(easyBlacklistActivity.getResources().getString(2131624078), new DialogInterface$OnClickListenerC3332ce(easyBlacklistActivity));
                        aVar.m9787b(easyBlacklistActivity.getResources().getString(2131624075), new DialogInterface$OnClickListenerC3333cf(easyBlacklistActivity));
                        DialogInterfaceC0308m b = aVar.m9792b();
                        b.setOnCancelListener(new DialogInterface$OnCancelListenerC3334cg(easyBlacklistActivity));
                        b.show();
                        linearLayout3 = this.f19469a.f19462b.f19256r;
                        linearLayout3.setVisibility(8);
                        this.f19469a.f19462b.m328a(true);
                    }
                }
            }
            this.f19469a.f19462b.m328a(true);
            this.f19469a.f19462b.m328a(true);
        }
    }
}
