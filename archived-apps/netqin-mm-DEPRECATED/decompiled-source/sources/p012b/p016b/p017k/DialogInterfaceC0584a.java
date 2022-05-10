package p012b.p016b.p017k;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.app.AlertController;
import p012b.p016b.C0574a;
/* renamed from: b.b.k.a */
/* loaded from: classes-dex2jar.jar:b/b/k/a.class */
public class DialogInterfaceC0584a extends DialogC0588d implements DialogInterface {

    /* renamed from: c */
    public final AlertController f2922c = new AlertController(getContext(), this, getWindow());

    /* renamed from: b.b.k.a$a */
    /* loaded from: classes-dex2jar.jar:b/b/k/a$a.class */
    public static class C0585a {

        /* renamed from: a */
        public final AlertController.C0076f f2923a;

        /* renamed from: b */
        public final int f2924b;

        public C0585a(Context context) {
            this(context, DialogInterfaceC0584a.m36899b(context, 0));
        }

        public C0585a(Context context, int i) {
            this.f2923a = new AlertController.C0076f(new ContextThemeWrapper(context, DialogInterfaceC0584a.m36899b(context, i)));
            this.f2924b = i;
        }

        /* renamed from: a */
        public C0585a m36897a(int i) {
            AlertController.C0076f fVar = this.f2923a;
            fVar.f237h = fVar.f230a.getText(i);
            return this;
        }

        /* renamed from: a */
        public C0585a m36896a(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0076f fVar = this.f2923a;
            fVar.f238i = fVar.f230a.getText(i);
            this.f2923a.f240k = onClickListener;
            return this;
        }

        /* renamed from: a */
        public C0585a m36895a(DialogInterface.OnKeyListener onKeyListener) {
            this.f2923a.f250u = onKeyListener;
            return this;
        }

        /* renamed from: a */
        public C0585a m36894a(Drawable drawable) {
            this.f2923a.f233d = drawable;
            return this;
        }

        /* renamed from: a */
        public C0585a m36893a(View view) {
            this.f2923a.f236g = view;
            return this;
        }

        /* renamed from: a */
        public C0585a m36892a(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0076f fVar = this.f2923a;
            fVar.f252w = listAdapter;
            fVar.f253x = onClickListener;
            fVar.f223I = i;
            fVar.f222H = true;
            return this;
        }

        /* renamed from: a */
        public C0585a m36891a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0076f fVar = this.f2923a;
            fVar.f252w = listAdapter;
            fVar.f253x = onClickListener;
            return this;
        }

        /* renamed from: a */
        public C0585a m36890a(CharSequence charSequence) {
            this.f2923a.f235f = charSequence;
            return this;
        }

        /* renamed from: a */
        public C0585a m36889a(boolean z) {
            this.f2923a.f247r = z;
            return this;
        }

        /* renamed from: a */
        public DialogInterfaceC0584a m36898a() {
            DialogInterfaceC0584a aVar = new DialogInterfaceC0584a(this.f2923a.f230a, this.f2924b);
            this.f2923a.m39184a(aVar.f2922c);
            aVar.setCancelable(this.f2923a.f247r);
            if (this.f2923a.f247r) {
                aVar.setCanceledOnTouchOutside(true);
            }
            aVar.setOnCancelListener(this.f2923a.f248s);
            aVar.setOnDismissListener(this.f2923a.f249t);
            DialogInterface.OnKeyListener onKeyListener = this.f2923a.f250u;
            if (onKeyListener != null) {
                aVar.setOnKeyListener(onKeyListener);
            }
            return aVar;
        }

        /* renamed from: b */
        public Context m36888b() {
            return this.f2923a.f230a;
        }

        /* renamed from: c */
        public DialogInterfaceC0584a m36887c() {
            DialogInterfaceC0584a a = m36898a();
            a.show();
            return a;
        }
    }

    public DialogInterfaceC0584a(Context context, int i) {
        super(context, m36899b(context, i));
    }

    /* renamed from: b */
    public static int m36899b(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C0574a.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: b */
    public ListView m36900b() {
        return this.f2922c.m39211a();
    }

    @Override // p012b.p016b.p017k.DialogC0588d, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f2922c.m39197b();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f2922c.m39209a(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.f2922c.m39195b(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // p012b.p016b.p017k.DialogC0588d, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f2922c.m39192b(charSequence);
    }
}
