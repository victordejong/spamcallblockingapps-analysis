package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/b$a.class */
public class b$a {

    /* renamed from: a */
    private final AlertController.C0055f f209a;

    /* renamed from: b */
    private final int f210b;

    public b$a(Context context) {
        this(context, b.c(context, 0));
    }

    public b$a(Context context, int i) {
        this.f209a = new AlertController.C0055f(new ContextThemeWrapper(context, b.c(context, i)));
        this.f210b = i;
    }

    /* renamed from: a */
    public b m6890a() {
        b bVar = new b(this.f209a.f169a, this.f210b);
        this.f209a.m6916a(bVar.f);
        bVar.setCancelable(this.f209a.f186r);
        if (this.f209a.f186r) {
            bVar.setCanceledOnTouchOutside(true);
        }
        bVar.setOnCancelListener(this.f209a.f187s);
        bVar.setOnDismissListener(this.f209a.f188t);
        DialogInterface.OnKeyListener onKeyListener = this.f209a.f189u;
        if (onKeyListener != null) {
            bVar.setOnKeyListener(onKeyListener);
        }
        return bVar;
    }

    /* renamed from: b */
    public Context m6889b() {
        return this.f209a.f169a;
    }

    /* renamed from: c */
    public b$a m6888c(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0055f c0055f = this.f209a;
        c0055f.f191w = listAdapter;
        c0055f.f192x = onClickListener;
        return this;
    }

    /* renamed from: d */
    public b$a m6887d(boolean z) {
        this.f209a.f186r = z;
        return this;
    }

    /* renamed from: e */
    public b$a m6886e(View view) {
        this.f209a.f175g = view;
        return this;
    }

    /* renamed from: f */
    public b$a m6885f(Drawable drawable) {
        this.f209a.f172d = drawable;
        return this;
    }

    /* renamed from: g */
    public b$a m6884g(int i) {
        AlertController.C0055f c0055f = this.f209a;
        c0055f.f176h = c0055f.f169a.getText(i);
        return this;
    }

    /* renamed from: h */
    public b$a m6883h(CharSequence charSequence) {
        this.f209a.f176h = charSequence;
        return this;
    }

    /* renamed from: i */
    public b$a m6882i(int i, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0055f c0055f = this.f209a;
        c0055f.f180l = c0055f.f169a.getText(i);
        this.f209a.f182n = onClickListener;
        return this;
    }

    /* renamed from: j */
    public b$a m6881j(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0055f c0055f = this.f209a;
        c0055f.f180l = charSequence;
        c0055f.f182n = onClickListener;
        return this;
    }

    /* renamed from: k */
    public b$a m6880k(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0055f c0055f = this.f209a;
        c0055f.f183o = charSequence;
        c0055f.f185q = onClickListener;
        return this;
    }

    /* renamed from: l */
    public b$a m6879l(DialogInterface.OnKeyListener onKeyListener) {
        this.f209a.f189u = onKeyListener;
        return this;
    }

    /* renamed from: m */
    public b$a m6878m(int i, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0055f c0055f = this.f209a;
        c0055f.f177i = c0055f.f169a.getText(i);
        this.f209a.f179k = onClickListener;
        return this;
    }

    /* renamed from: n */
    public b$a m6877n(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0055f c0055f = this.f209a;
        c0055f.f177i = charSequence;
        c0055f.f179k = onClickListener;
        return this;
    }

    /* renamed from: o */
    public b$a m6876o(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0055f c0055f = this.f209a;
        c0055f.f191w = listAdapter;
        c0055f.f192x = onClickListener;
        c0055f.f162I = i;
        c0055f.f161H = true;
        return this;
    }

    /* renamed from: p */
    public b$a m6875p(int i) {
        AlertController.C0055f c0055f = this.f209a;
        c0055f.f174f = c0055f.f169a.getText(i);
        return this;
    }

    /* renamed from: q */
    public b$a m6874q(CharSequence charSequence) {
        this.f209a.f174f = charSequence;
        return this;
    }

    /* renamed from: r */
    public b$a m6873r(View view) {
        AlertController.C0055f c0055f = this.f209a;
        c0055f.f194z = view;
        c0055f.f193y = 0;
        c0055f.f158E = false;
        return this;
    }

    /* renamed from: s */
    public b m6872s() {
        b m6890a = m6890a();
        m6890a.show();
        return m6890a;
    }
}
