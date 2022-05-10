package p131c.p431l.p432a.p452c;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.netqin.p525cm.billing.SubscribeActivity;
import p012b.p042i.p044i.C0869a;
import p012b.p042i.p046j.p047m.C0907a;
import p131c.p431l.p432a.p468n.C6860r;
import p131c.p431l.p478c.C6871a;
/* renamed from: c.l.a.c.c */
/* loaded from: classes2-dex2jar.jar:c/l/a/c/c.class */
public class View$OnClickListenerC6792c extends AbstractDialogC6781a implements View.OnClickListener {

    /* renamed from: b */
    public FrameLayout f20925b;

    /* renamed from: c */
    public final String f20926c;

    /* renamed from: d */
    public final String f20927d;

    public View$OnClickListenerC6792c(Context context) {
        super(context);
        String valueOf = String.valueOf(C6793d.m19783c() != 0 ? 2 : 1);
        this.f20926c = "IAP Popup Show " + valueOf;
        this.f20927d = "IAP Popup Click " + valueOf;
        View.inflate(getContext(), 2131427415, this.f20925b);
        findViewById(2131231091).setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(2131230892);
        imageView.setOnClickListener(this);
        Drawable h = C0907a.m35514h(C0869a.m35684c(context, 2131165458));
        C0907a.m35520b(h, m19788k());
        imageView.setImageDrawable(h);
    }

    @Override // p131c.p431l.p432a.p452c.AbstractDialogC6781a
    /* renamed from: b */
    public boolean mo19793b() {
        return false;
    }

    @Override // p131c.p431l.p432a.p452c.AbstractDialogC6781a
    /* renamed from: c */
    public float mo19792c() {
        return 0.8f;
    }

    @Override // p131c.p431l.p432a.p452c.AbstractDialogC6781a
    /* renamed from: f */
    public int mo19791f() {
        return C6860r.m19547a(30.0f);
    }

    @Override // p131c.p431l.p432a.p452c.AbstractDialogC6781a
    /* renamed from: h */
    public View mo19790h() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f20925b = frameLayout;
        return frameLayout;
    }

    @Override // p131c.p431l.p432a.p452c.AbstractDialogC6781a
    /* renamed from: i */
    public void mo19789i() {
        C6793d.m19779g();
        C6871a.m19508a("IAP Popup", this.f20926c);
    }

    /* renamed from: k */
    public int m19788k() {
        return -1;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131230892) {
            dismiss();
        } else if (id == 2131231091) {
            C6871a.m19508a("IAP Popup", this.f20927d);
            getContext().startActivity(new Intent(getContext(), SubscribeActivity.class));
            dismiss();
        }
    }
}
