package p193e.p194a.p682e.p683a;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.TextView;
import java.util.Objects;
import w3.c.a.a.a.h;
/* renamed from: e.a.e.a.i2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/i2.class */
public class View$OnClickListenerC12750i2 implements View.OnClickListener, DialogInterface.OnShowListener, DialogInterface.OnCancelListener {

    /* renamed from: a */
    public final Context f37122a;

    /* renamed from: b */
    public String f37123b = null;

    /* renamed from: c */
    public String f37124c;

    /* renamed from: d */
    public final int f37125d;

    /* renamed from: e */
    public boolean f37126e;

    /* renamed from: f */
    public Dialog f37127f;

    /* renamed from: g */
    public View f37128g;

    /* renamed from: h */
    public int f37129h;

    /* renamed from: i */
    public int f37130i;

    /* renamed from: j */
    public int f37131j;

    /* renamed from: k */
    public int f37132k;

    /* renamed from: l */
    public int f37133l;

    public View$OnClickListenerC12750i2(Context context, int i, int i2, boolean z) {
        this.f37122a = context;
        this.f37125d = i2;
        this.f37126e = z;
        this.f37132k = i;
    }

    /* renamed from: a */
    public void m22713a() {
        Dialog dialog = this.f37127f;
        if (dialog != null) {
            dialog.dismiss();
            this.f37127f = null;
            this.f37128g = null;
        }
    }

    /* renamed from: b */
    public final void m22712b(int i, String str) {
        TextView textView = (TextView) this.f37128g.findViewById(i);
        if (textView != null) {
            textView.setText(str);
            textView.setVisibility(h.m(str) ? 0 : 8);
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        if (dialogInterface == null || !dialogInterface.equals(this.f37127f)) {
            return;
        }
        Objects.requireNonNull(((C12756j2) this).f37146m);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131363341) {
            Objects.requireNonNull(((C12756j2) this).f37146m);
        } else if (id == 2131363337) {
            Objects.requireNonNull(((C12756j2) this).f37146m);
        } else if (id == 2131363336) {
            Objects.requireNonNull(((C12756j2) this).f37146m);
        }
        m22713a();
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
    }
}
