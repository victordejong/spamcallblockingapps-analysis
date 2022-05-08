package p459j.p460a.p518j.p520f;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Color;
import android.view.MenuItem;
import android.widget.ImageView;
import android.widget.TextView;
import com.gogolook.developmode.p050ui.FreeLayout;
import gogolook.callgogolook2.R$drawable;
import p459j.p460a.p582w0.C14217x3;
/* renamed from: j.a.j.f.a */
/* loaded from: classes2-dex2jar.jar:j/a/j/f/a.class */
public class C12483a extends FreeLayout {

    /* renamed from: k */
    public int f28130k = -1;

    /* renamed from: i */
    public ImageView f28128i = (ImageView) m32232a(new ImageView(getContext()), -2, -1);

    /* renamed from: j */
    public TextView f28129j = (TextView) m32232a(new TextView(getContext()), -2, -2);

    public C12483a(Context context) {
        super(context);
        m32222b();
        this.f28128i.getLayoutParams().width = C14217x3.m2201a(50.0f);
        this.f28128i.getLayoutParams().height = C14217x3.m2201a(54.0f);
        this.f28128i.setPadding(0, C14217x3.m2201a(12.0f), 0, C14217x3.m2201a(12.0f));
        this.f28128i.setBackgroundResource(R$drawable.actionbar_selector);
        this.f28129j.getLayoutParams().height = C14217x3.m2201a(54.0f);
        this.f28129j.setPadding(C14217x3.m2201a(10.0f), 0, C14217x3.m2201a(20.0f), 0);
        this.f28129j.setGravity(16);
        this.f28129j.setTextSize(18.0f);
        this.f28129j.setTextColor(-1);
    }

    @TargetApi(16)
    /* renamed from: a */
    public void m6051a(MenuItem menuItem, int i, int i2) {
        this.f28130k = i;
        int i3 = 0;
        if (menuItem.getIcon() != null) {
            this.f28129j.setVisibility(8);
            this.f28128i.setVisibility(0);
            this.f28128i.setImageDrawable(menuItem.getIcon());
            this.f28128i.setImageAlpha(i2);
        } else {
            this.f28129j.setVisibility(0);
            this.f28128i.setVisibility(8);
        }
        this.f28129j.setTextColor(i);
        if (this.f28128i.getVisibility() == 8) {
            this.f28129j.setText(menuItem.getTitle());
        }
        setEnabled(menuItem.isEnabled());
        if (!menuItem.isVisible()) {
            i3 = 8;
        }
        setVisibility(i3);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        int alpha = Color.alpha(this.f28130k);
        int alpha2 = Color.alpha(this.f28130k);
        int alpha3 = Color.alpha(this.f28130k);
        int alpha4 = Color.alpha(this.f28130k);
        if (z) {
            this.f28129j.setTextColor(Color.argb(alpha, alpha2, alpha3, alpha4));
        } else {
            this.f28129j.setTextColor(Color.argb((alpha * 6) / 10, alpha2, alpha3, alpha4));
        }
    }
}
