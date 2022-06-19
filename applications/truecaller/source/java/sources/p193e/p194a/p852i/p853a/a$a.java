package p193e.p194a.p852i.p853a;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import e.a.i.f0.m.b;
import e.a.i.f0.m.c;
import java.util.Objects;
/* renamed from: e.a.i.a.a$a */
/* loaded from: classes3-dex2jar.jar:e/a/i/a/a$a.class */
public final class a$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f42740a;

    /* renamed from: b */
    public final /* synthetic */ Object f42741b;

    public a$a(int i, Object obj) {
        this.f42740a = i;
        this.f42741b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f42740a;
        if (i == 0) {
            a aVar = (a) this.f42741b;
            c cVar = a.b;
            aVar.pa().removeAllViews();
            aVar.finish();
        } else if (i != 1) {
            throw null;
        } else {
            a aVar2 = (a) this.f42741b;
            c cVar2 = a.b;
            Objects.requireNonNull(aVar2);
            c cVar3 = a.b;
            if (cVar3 != null) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(((NativeCustomFormatAd) ((b) cVar3).b).getText("ClickURL").toString()));
                intent.addFlags(268435456);
                aVar2.startActivity(intent);
            }
            a aVar3 = (a) this.f42741b;
            aVar3.pa().removeAllViews();
            aVar3.finish();
        }
    }
}
