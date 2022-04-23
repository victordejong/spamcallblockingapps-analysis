package androidx.appcompat.app;

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
import androidx.appcompat.C0247a;
import androidx.appcompat.app.AlertController;
/* renamed from: androidx.appcompat.app.m */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/m.class */
public final class DialogInterfaceC0308m extends DialogC0279aa implements DialogInterface {

    /* renamed from: a */
    final AlertController f1329a = new AlertController(getContext(), this, getWindow());

    /* renamed from: androidx.appcompat.app.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/m$a.class */
    public static final class C0309a {

        /* renamed from: a */
        private final AlertController.C0261a f1330a;

        /* renamed from: b */
        private final int f1331b;

        public C0309a(Context context) {
            this(context, DialogInterfaceC0308m.m9806a(context, 0));
        }

        private C0309a(Context context, int i) {
            this.f1330a = new AlertController.C0261a(new ContextThemeWrapper(context, DialogInterfaceC0308m.m9806a(context, i)));
            this.f1331b = i;
        }

        /* renamed from: a */
        public final Context m9805a() {
            return this.f1330a.f1081a;
        }

        /* renamed from: a */
        public final C0309a m9804a(int i) {
            AlertController.C0261a aVar = this.f1330a;
            aVar.f1086f = aVar.f1081a.getText(i);
            return this;
        }

        /* renamed from: a */
        public final C0309a m9803a(DialogInterface.OnClickListener onClickListener) {
            AlertController.C0261a aVar = this.f1330a;
            aVar.f1089i = aVar.f1081a.getText(2131624222);
            this.f1330a.f1091k = onClickListener;
            return this;
        }

        /* renamed from: a */
        public final C0309a m9802a(DialogInterface.OnKeyListener onKeyListener) {
            this.f1330a.f1101u = onKeyListener;
            return this;
        }

        /* renamed from: a */
        public final C0309a m9801a(Drawable drawable) {
            this.f1330a.f1084d = drawable;
            return this;
        }

        /* renamed from: a */
        public final C0309a m9800a(View view) {
            this.f1330a.f1087g = view;
            return this;
        }

        /* renamed from: a */
        public final C0309a m9799a(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0261a aVar = this.f1330a;
            aVar.f1103w = listAdapter;
            aVar.f1104x = onClickListener;
            aVar.f1074I = i;
            aVar.f1073H = true;
            return this;
        }

        /* renamed from: a */
        public final C0309a m9798a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0261a aVar = this.f1330a;
            aVar.f1103w = listAdapter;
            aVar.f1104x = onClickListener;
            return this;
        }

        /* renamed from: a */
        public final C0309a m9797a(CharSequence charSequence) {
            this.f1330a.f1086f = charSequence;
            return this;
        }

        /* renamed from: a */
        public final C0309a m9796a(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0261a aVar = this.f1330a;
            aVar.f1089i = charSequence;
            aVar.f1091k = onClickListener;
            return this;
        }

        /* renamed from: a */
        public final C0309a m9795a(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0261a aVar = this.f1330a;
            aVar.f1102v = charSequenceArr;
            aVar.f1104x = onClickListener;
            aVar.f1074I = i;
            aVar.f1073H = true;
            return this;
        }

        /* renamed from: a */
        public final C0309a m9794a(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0261a aVar = this.f1330a;
            aVar.f1102v = charSequenceArr;
            aVar.f1104x = onClickListener;
            return this;
        }

        /* renamed from: a */
        public final C0309a m9793a(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.C0261a aVar = this.f1330a;
            aVar.f1102v = charSequenceArr;
            aVar.f1075J = onMultiChoiceClickListener;
            aVar.f1071F = zArr;
            aVar.f1072G = true;
            return this;
        }

        /* renamed from: b */
        public final C0309a m9791b(int i) {
            AlertController.C0261a aVar = this.f1330a;
            aVar.f1088h = aVar.f1081a.getText(i);
            return this;
        }

        /* renamed from: b */
        public final C0309a m9790b(DialogInterface.OnClickListener onClickListener) {
            AlertController.C0261a aVar = this.f1330a;
            aVar.f1092l = aVar.f1081a.getText(2131624114);
            this.f1330a.f1094n = onClickListener;
            return this;
        }

        /* renamed from: b */
        public final C0309a m9789b(View view) {
            AlertController.C0261a aVar = this.f1330a;
            aVar.f1106z = view;
            aVar.f1105y = 0;
            aVar.f1070E = false;
            return this;
        }

        /* renamed from: b */
        public final C0309a m9788b(CharSequence charSequence) {
            this.f1330a.f1088h = charSequence;
            return this;
        }

        /* renamed from: b */
        public final C0309a m9787b(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0261a aVar = this.f1330a;
            aVar.f1092l = charSequence;
            aVar.f1094n = onClickListener;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:67:0x01f8  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0208  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x0211  */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.appcompat.app.DialogInterfaceC0308m m9792b() {
            /*
                Method dump skipped, instructions count: 686
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.DialogInterfaceC0308m.C0309a.m9792b():androidx.appcompat.app.m");
        }
    }

    protected DialogInterfaceC0308m(Context context, int i) {
        super(context, m9806a(context, i));
    }

    /* renamed from: a */
    static int m9806a(Context context, int i) {
        if (((i >>> 24) & 255) > 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C0247a.C0248a.f574o, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: a */
    public final ListView m9807a() {
        return this.f1329a.f1039b;
    }

    @Override // androidx.appcompat.app.DialogC0279aa, android.app.Dialog
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1329a.m9944a();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        AlertController alertController = this.f1329a;
        if (alertController.f1046i != null && alertController.f1046i.m8194a(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        AlertController alertController = this.f1329a;
        if (alertController.f1046i != null && alertController.f1046i.m8194a(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // androidx.appcompat.app.DialogC0279aa, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f1329a.m9935a(charSequence);
    }
}
