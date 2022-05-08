package com.android.contacts.editor;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.AccountsListAdapter;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/g.class */
public final class g extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private int f1228a;

    /* renamed from: b  reason: collision with root package name */
    private AccountsListAdapter.AccountListFilter f1229b;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/g$a.class */
    public interface a {
        void onAccountChosen(AccountWithDataSet accountWithDataSet, Bundle bundle);

        void onAccountSelectorCancelled();
    }

    public static <F extends Fragment & a> void a(FragmentManager fragmentManager, F f, int i, AccountsListAdapter.AccountListFilter accountListFilter, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putInt("title_res_id", i);
        bundle2.putSerializable("list_filter", accountListFilter);
        Bundle bundle3 = bundle;
        if (bundle == null) {
            bundle3 = Bundle.EMPTY;
        }
        bundle2.putBundle("extra_args", bundle3);
        g gVar = new g();
        gVar.setArguments(bundle2);
        gVar.setTargetFragment(f, 0);
        gVar.show(fragmentManager, (String) null);
    }

    static /* synthetic */ void a(g gVar, AccountWithDataSet accountWithDataSet) {
        Fragment targetFragment = gVar.getTargetFragment();
        if (targetFragment != null && (targetFragment instanceof a)) {
            ((a) targetFragment).onAccountChosen(accountWithDataSet, gVar.getArguments().getBundle("extra_args"));
        }
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        Fragment targetFragment = getTargetFragment();
        if (targetFragment != null && (targetFragment instanceof a)) {
            ((a) targetFragment).onAccountSelectorCancelled();
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        Bundle arguments = getArguments();
        if (bundle == null) {
            this.f1228a = arguments.getInt("title_res_id");
            this.f1229b = (AccountsListAdapter.AccountListFilter) arguments.getSerializable("list_filter");
        } else {
            this.f1228a = bundle.getInt("title_res_id");
            this.f1229b = (AccountsListAdapter.AccountListFilter) bundle.getSerializable("list_filter");
        }
        final AccountsListAdapter accountsListAdapter = new AccountsListAdapter(builder.getContext(), this.f1229b);
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.android.contacts.editor.g.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                g.a(g.this, accountsListAdapter.getItem(i));
            }
        };
        builder.setTitle(this.f1228a);
        builder.setSingleChoiceItems(accountsListAdapter, 0, onClickListener);
        return builder.create();
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("title_res_id", this.f1228a);
        bundle.putSerializable("list_filter", this.f1229b);
    }
}
