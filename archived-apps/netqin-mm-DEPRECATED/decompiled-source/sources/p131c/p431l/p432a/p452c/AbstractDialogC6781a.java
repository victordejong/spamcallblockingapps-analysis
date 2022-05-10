package p131c.p431l.p432a.p452c;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.Window;
import p131c.p394h.p395a.C6488h;
import p131c.p431l.p432a.p468n.C6860r;
/* renamed from: c.l.a.c.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/c/a.class */
public abstract class AbstractDialogC6781a extends Dialog implements DialogInterface.OnDismissListener {

    /* renamed from: a */
    public View f20904a;

    public AbstractDialogC6781a(Context context) {
        super(context, C6488h.Custom_Dialog);
        View h = mo19790h();
        this.f20904a = h;
        setContentView(h);
        m19822a(this.f20904a);
        m19818j();
        setOnDismissListener(this);
    }

    /* renamed from: a */
    public int m19823a() {
        return 16973826;
    }

    /* renamed from: a */
    public void m19822a(View view) {
    }

    /* renamed from: b */
    public abstract boolean mo19793b();

    /* renamed from: c */
    public abstract float mo19792c();

    /* renamed from: d */
    public int m19821d() {
        return 1;
    }

    /* renamed from: e */
    public int m19820e() {
        return 17;
    }

    /* renamed from: f */
    public abstract int mo19791f();

    /* renamed from: g */
    public boolean m19819g() {
        return false;
    }

    /* renamed from: h */
    public abstract View mo19790h();

    /* renamed from: i */
    public abstract void mo19789i();

    /* renamed from: j */
    public final void m19818j() {
        Window window = getWindow();
        if (window != null) {
            window.setLayout(C6860r.m19536b() - (mo19791f() << 1), m19819g() ? -1 : -2);
            window.setGravity(m19820e());
            window.setFormat(m19821d());
            window.setWindowAnimations(m19823a());
            window.setDimAmount(mo19792c());
            setCanceledOnTouchOutside(mo19793b());
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
    }

    @Override // android.app.Dialog
    public final void show() {
        super.show();
        mo19789i();
    }
}
