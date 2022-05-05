package androidx.fragment.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
/* renamed from: androidx.fragment.app.c */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/c.class */
public class DialogInterface$OnCancelListenerC0887c extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public static final int STYLE_NORMAL = 0;
    public static final int STYLE_NO_FRAME = 2;
    public static final int STYLE_NO_INPUT = 3;
    public static final int STYLE_NO_TITLE = 1;

    /* renamed from: ae */
    private Handler f3752ae;

    /* renamed from: f */
    Dialog f3758f;

    /* renamed from: g */
    boolean f3759g;

    /* renamed from: h */
    boolean f3760h;

    /* renamed from: i */
    boolean f3761i;

    /* renamed from: af */
    private Runnable f3753af = new RunnableC0888d(this);

    /* renamed from: a */
    int f3751a = 0;

    /* renamed from: b */
    int f3754b = 0;

    /* renamed from: c */
    boolean f3755c = true;

    /* renamed from: d */
    boolean f3756d = true;

    /* renamed from: e */
    int f3757e = -1;

    /* renamed from: a */
    private void m7783a(boolean z, boolean z2) {
        if (!this.f3760h) {
            this.f3760h = true;
            this.f3761i = false;
            Dialog dialog = this.f3758f;
            if (dialog != null) {
                dialog.setOnDismissListener(null);
                this.f3758f.dismiss();
                if (!z2) {
                    if (Looper.myLooper() == this.f3752ae.getLooper()) {
                        onDismiss(this.f3758f);
                    } else {
                        this.f3752ae.post(this.f3753af);
                    }
                }
            }
            this.f3759g = true;
            if (this.f3757e >= 0) {
                requireFragmentManager().mo7724a(this.f3757e);
                this.f3757e = -1;
                return;
            }
            AbstractC0867ab a = requireFragmentManager().mo7727a();
            a.mo7830a(this);
            if (z) {
                a.mo7822c();
            } else {
                a.mo7825b();
            }
        }
    }

    public void dismiss() {
        m7783a(false, false);
    }

    public void dismissAllowingStateLoss() {
        m7783a(true, false);
    }

    public Dialog getDialog() {
        return this.f3758f;
    }

    public boolean getShowsDialog() {
        return this.f3756d;
    }

    public int getTheme() {
        return this.f3754b;
    }

    public boolean isCancelable() {
        return this.f3755c;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        Bundle bundle2;
        super.onActivityCreated(bundle);
        if (this.f3756d) {
            View view = getView();
            if (view != null) {
                if (view.getParent() == null) {
                    this.f3758f.setContentView(view);
                } else {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
            }
            FragmentActivity activity = getActivity();
            if (activity != null) {
                this.f3758f.setOwnerActivity(activity);
            }
            this.f3758f.setCancelable(this.f3755c);
            this.f3758f.setOnCancelListener(this);
            this.f3758f.setOnDismissListener(this);
            if (bundle != null && (bundle2 = bundle.getBundle("android:savedDialogState")) != null) {
                this.f3758f.onRestoreInstanceState(bundle2);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (!this.f3761i) {
            this.f3760h = false;
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f3752ae = new Handler();
        this.f3756d = this.f3551F == 0;
        if (bundle != null) {
            this.f3751a = bundle.getInt("android:style", 0);
            this.f3754b = bundle.getInt("android:theme", 0);
            this.f3755c = bundle.getBoolean("android:cancelable", true);
            this.f3756d = bundle.getBoolean("android:showsDialog", this.f3756d);
            this.f3757e = bundle.getInt("android:backStackId", -1);
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        return new Dialog(requireContext(), getTheme());
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.f3758f;
        if (dialog != null) {
            this.f3759g = true;
            dialog.setOnDismissListener(null);
            this.f3758f.dismiss();
            if (!this.f3760h) {
                onDismiss(this.f3758f);
            }
            this.f3758f = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (!this.f3761i && !this.f3760h) {
            this.f3760h = true;
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.f3759g) {
            m7783a(true, true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        Context i;
        if (!this.f3756d) {
            return super.onGetLayoutInflater(bundle);
        }
        this.f3758f = onCreateDialog(bundle);
        Dialog dialog = this.f3758f;
        if (dialog != null) {
            setupDialog(dialog, this.f3751a);
            i = this.f3758f.getContext();
        } else {
            i = this.f3547B.m7740i();
        }
        return (LayoutInflater) i.getSystemService("layout_inflater");
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        Bundle onSaveInstanceState;
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.f3758f;
        if (!(dialog == null || (onSaveInstanceState = dialog.onSaveInstanceState()) == null)) {
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i = this.f3751a;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.f3754b;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.f3755c;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.f3756d;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.f3757e;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = this.f3758f;
        if (dialog != null) {
            this.f3759g = false;
            dialog.show();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        Dialog dialog = this.f3758f;
        if (dialog != null) {
            dialog.hide();
        }
    }

    public final Dialog requireDialog() {
        Dialog dialog = getDialog();
        if (dialog != null) {
            return dialog;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }

    public void setCancelable(boolean z) {
        this.f3755c = z;
        Dialog dialog = this.f3758f;
        if (dialog != null) {
            dialog.setCancelable(z);
        }
    }

    public void setShowsDialog(boolean z) {
        this.f3756d = z;
    }

    public void setStyle(int i, int i2) {
        this.f3751a = i;
        int i3 = this.f3751a;
        if (i3 == 2 || i3 == 3) {
            this.f3754b = 16973913;
        }
        if (i2 != 0) {
            this.f3754b = i2;
        }
    }

    public void setupDialog(Dialog dialog, int i) {
        if (!(i == 1 || i == 2)) {
            if (i == 3) {
                dialog.getWindow().addFlags(24);
            } else {
                return;
            }
        }
        dialog.requestWindowFeature(1);
    }

    public int show(AbstractC0867ab abVar, String str) {
        this.f3760h = false;
        this.f3761i = true;
        abVar.m7828a(this, str);
        this.f3759g = false;
        this.f3757e = abVar.mo7825b();
        return this.f3757e;
    }

    public void show(AbstractC0897m mVar, String str) {
        this.f3760h = false;
        this.f3761i = true;
        AbstractC0867ab a = mVar.mo7727a();
        a.m7828a(this, str);
        a.mo7825b();
    }

    public void showNow(AbstractC0897m mVar, String str) {
        this.f3760h = false;
        this.f3761i = true;
        AbstractC0867ab a = mVar.mo7727a();
        a.m7828a(this, str);
        a.mo7820d();
    }
}
