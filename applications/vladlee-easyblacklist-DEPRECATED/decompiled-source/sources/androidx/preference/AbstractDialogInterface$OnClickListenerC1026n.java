package androidx.preference;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.app.DialogInterfaceC0308m;
import androidx.fragment.app.DialogInterface$OnCancelListenerC0887c;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.DialogPreference;
/* renamed from: androidx.preference.n */
/* loaded from: classes-dex2jar.jar:androidx/preference/n.class */
public abstract class AbstractDialogInterface$OnClickListenerC1026n extends DialogInterface$OnCancelListenerC0887c implements DialogInterface.OnClickListener {

    /* renamed from: ae */
    private DialogPreference f4344ae;

    /* renamed from: af */
    private CharSequence f4345af;

    /* renamed from: ag */
    private CharSequence f4346ag;

    /* renamed from: ah */
    private CharSequence f4347ah;

    /* renamed from: ai */
    private CharSequence f4348ai;

    /* renamed from: aj */
    private int f4349aj;

    /* renamed from: ak */
    private BitmapDrawable f4350ak;

    /* renamed from: al */
    private int f4351al;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo7397a(DialogInterfaceC0308m.C0309a aVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public void mo7396b(View view) {
        View findViewById = view.findViewById(16908299);
        if (findViewById != null) {
            CharSequence charSequence = this.f4348ai;
            int i = 8;
            if (!TextUtils.isEmpty(charSequence)) {
                if (findViewById instanceof TextView) {
                    ((TextView) findViewById).setText(charSequence);
                }
                i = 0;
            }
            if (findViewById.getVisibility() != i) {
                findViewById.setVisibility(i);
            }
        }
    }

    /* renamed from: d */
    public abstract void mo7395d(boolean z);

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f4351al = i;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0887c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        BitmapDrawable bitmapDrawable;
        super.onCreate(bundle);
        Fragment targetFragment = getTargetFragment();
        if (targetFragment instanceof DialogPreference.AbstractC0986a) {
            DialogPreference.AbstractC0986a aVar = (DialogPreference.AbstractC0986a) targetFragment;
            String string = getArguments().getString("key");
            if (bundle == null) {
                this.f4344ae = (DialogPreference) aVar.mo7391a(string);
                this.f4345af = this.f4344ae.m7517a();
                this.f4346ag = this.f4344ae.m7514d();
                this.f4347ah = this.f4344ae.m7513e();
                this.f4348ai = this.f4344ae.m7516b();
                this.f4349aj = this.f4344ae.m7512f();
                Drawable c = this.f4344ae.m7515c();
                if (c == null || (c instanceof BitmapDrawable)) {
                    bitmapDrawable = (BitmapDrawable) c;
                } else {
                    Bitmap createBitmap = Bitmap.createBitmap(c.getIntrinsicWidth(), c.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(createBitmap);
                    c.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                    c.draw(canvas);
                    bitmapDrawable = new BitmapDrawable(getResources(), createBitmap);
                }
                this.f4350ak = bitmapDrawable;
                return;
            }
            this.f4345af = bundle.getCharSequence("PreferenceDialogFragment.title");
            this.f4346ag = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
            this.f4347ah = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
            this.f4348ai = bundle.getCharSequence("PreferenceDialogFragment.message");
            this.f4349aj = bundle.getInt("PreferenceDialogFragment.layout", 0);
            Bitmap bitmap = (Bitmap) bundle.getParcelable("PreferenceDialogFragment.icon");
            if (bitmap != null) {
                this.f4350ak = new BitmapDrawable(getResources(), bitmap);
                return;
            }
            return;
        }
        throw new IllegalStateException("Target fragment must implement TargetFragment interface");
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0887c
    public Dialog onCreateDialog(Bundle bundle) {
        FragmentActivity activity = getActivity();
        this.f4351al = -2;
        DialogInterfaceC0308m.C0309a b = new DialogInterfaceC0308m.C0309a(activity).m9797a(this.f4345af).m9801a(this.f4350ak).m9796a(this.f4346ag, this).m9787b(this.f4347ah, this);
        int i = this.f4349aj;
        View view = null;
        if (i != 0) {
            view = LayoutInflater.from(activity).inflate(i, (ViewGroup) null);
        }
        if (view != null) {
            mo7396b(view);
            b.m9789b(view);
        } else {
            b.m9788b(this.f4348ai);
        }
        mo7397a(b);
        DialogInterfaceC0308m b2 = b.m9792b();
        if (mo7394x()) {
            b2.getWindow().setSoftInputMode(5);
        }
        return b2;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0887c, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        mo7395d(this.f4351al == -1);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0887c, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.f4345af);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.f4346ag);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.f4347ah);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.f4348ai);
        bundle.putInt("PreferenceDialogFragment.layout", this.f4349aj);
        BitmapDrawable bitmapDrawable = this.f4350ak;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }

    /* renamed from: x */
    protected boolean mo7394x() {
        return false;
    }

    /* renamed from: y */
    public final DialogPreference m7393y() {
        if (this.f4344ae == null) {
            this.f4344ae = (DialogPreference) ((DialogPreference.AbstractC0986a) getTargetFragment()).mo7391a(getArguments().getString("key"));
        }
        return this.f4344ae;
    }
}
