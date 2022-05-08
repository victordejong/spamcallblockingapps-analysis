package p081h.p160h.p174c.p177g;

import android.content.Context;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.gogolook.developmode.p050ui.FreeLayout;
import com.mopub.mobileads.MoPubView;
import java.util.ArrayList;
/* renamed from: h.h.c.g.a */
/* loaded from: classes2-dex2jar.jar:h/h/c/g/a.class */
public class C6332a extends FreeLayout {

    /* renamed from: i */
    public TextView f15721i;

    /* renamed from: j */
    public LinearLayout f15722j;

    /* renamed from: k */
    public LinearLayout f15723k;

    /* renamed from: l */
    public Button f15724l;

    /* renamed from: m */
    public TextView f15725m;

    /* renamed from: n */
    public Button f15726n;

    /* renamed from: o */
    public Button f15727o;

    /* renamed from: p */
    public ArrayList<String> f15728p = new ArrayList<>();

    /* renamed from: q */
    public int f15729q = MoPubView.AbstractC3840b.HEIGHT_280_INT;

    public C6332a(Context context) {
        super(context);
        m32235a();
        FreeLayout freeLayout = (FreeLayout) m32232a(new FreeLayout(context), -1, -2);
        freeLayout.setBackgroundColor(-13553359);
        this.f15721i = (TextView) freeLayout.m32228a(new TextView(context), -2, -2, new int[]{15});
        this.f15721i.setTextSize(22.0f);
        this.f15721i.setGravity(17);
        this.f15721i.setTextColor(-1);
        this.f15721i.setSingleLine(true);
        m32221b(this.f15721i, 15, 15, 15, 15);
        this.f15724l = (Button) freeLayout.m32228a(new Button(context), -2, -2, new int[]{15, 11});
        this.f15724l.setTextSize(13.0f);
        this.f15724l.setGravity(17);
        this.f15724l.setTextColor(-1);
        this.f15724l.setSingleLine(true);
        this.f15724l.setText("Export");
        m32221b(this.f15724l, 11, 5, 11, 5);
        m32231a(this.f15724l, 0, 0, 10, 0);
        FreeLayout freeLayout2 = (FreeLayout) m32228a(new FreeLayout(context), -1, -2, new int[]{12});
        this.f15726n = (Button) freeLayout2.m32228a(new Button(context), 320, -2, new int[]{15, 9});
        this.f15726n.setTextSize(16.0f);
        this.f15726n.setGravity(17);
        this.f15726n.setTextColor(-1);
        this.f15726n.setBackgroundColor(-13553359);
        this.f15726n.setSingleLine(true);
        this.f15726n.setText("Prev");
        m32221b(this.f15726n, 15, 15, 15, 15);
        this.f15727o = (Button) freeLayout2.m32228a(new Button(context), 320, -2, new int[]{15, 11});
        this.f15727o.setTextSize(16.0f);
        this.f15727o.setGravity(17);
        this.f15727o.setTextColor(-1);
        this.f15727o.setBackgroundColor(-12500671);
        this.f15727o.setSingleLine(true);
        this.f15727o.setText("Next");
        m32221b(this.f15727o, 15, 15, 15, 15);
        this.f15725m = (TextView) m32230a(new TextView(context), -1, -2, freeLayout2, new int[]{2});
        this.f15725m.setTextSize(13.0f);
        this.f15725m.setGravity(17);
        this.f15725m.setTextColor(-1);
        this.f15725m.setSingleLine(true);
        m32231a(this.f15725m, 15, 5, 15, 5);
        FreeLayout a = ((FreeLayout) m32229a(new FreeLayout(context), -1, -1, freeLayout, new int[]{3}, this.f15725m, new int[]{2})).m32220b(new FreeLayout(context), -2, -2).m32223a(new FreeLayout(context), -2, -2);
        this.f15722j = (LinearLayout) a.m32232a(new LinearLayout(context), -2, -2);
        this.f15722j.setOrientation(0);
        this.f15723k = (LinearLayout) a.m32230a(new LinearLayout(context), -2, -2, this.f15722j, new int[]{3});
        this.f15723k.setOrientation(1);
        this.f15728p.clear();
    }

    /* renamed from: a */
    public void m23279a(CharSequence charSequence) {
        this.f15721i.setText(charSequence);
    }

    /* renamed from: a */
    public void m23278a(String str) {
        this.f15728p.add(str);
    }

    /* renamed from: a */
    public void m23277a(ArrayList<String> arrayList) {
        this.f15722j.removeAllViews();
        for (int i = 0; i < arrayList.size(); i++) {
            String str = arrayList.get(i);
            TextView textView = (TextView) m32225a(this.f15722j, new TextView(getContext()), this.f15729q, -2);
            textView.setText(str);
            textView.setSingleLine(true);
            textView.setTextColor(-1);
            textView.setBackgroundColor(-11447983);
        }
    }

    /* renamed from: c */
    public void m23276c() {
        LinearLayout linearLayout = (LinearLayout) m32225a(this.f15723k, new LinearLayout(getContext()), -2, -2);
        linearLayout.setOrientation(0);
        linearLayout.setPadding(0, 1, 0, 1);
        for (int i = 0; i < this.f15728p.size(); i++) {
            String str = this.f15728p.get(i);
            TextView textView = (TextView) m32225a(linearLayout, new TextView(getContext()), this.f15729q, -2);
            textView.setText(str);
            textView.setTextColor(-1);
            textView.setPadding(0, 0, 5, 0);
            textView.setBackgroundColor(i % 2 == 0 ? -7237231 : -4079167);
        }
        this.f15728p.clear();
    }

    /* renamed from: d */
    public void m23275d() {
        this.f15723k.removeAllViews();
    }
}
