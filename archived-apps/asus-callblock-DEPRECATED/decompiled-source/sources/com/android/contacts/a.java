package com.android.contacts;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.ContentValues;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/a.class */
public final class a extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private String f498a = null;

    /* renamed from: b  reason: collision with root package name */
    private AbstractC0019a f499b;

    /* renamed from: com.android.contacts.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/a$a.class */
    public interface AbstractC0019a {
        void a();

        void b();
    }

    public static a a(String str) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putString("argUnkownNumber", str);
        aVar.setArguments(bundle);
        return aVar;
    }

    public static a a(String str, AbstractC0019a aVar) {
        a aVar2 = new a();
        Bundle bundle = new Bundle();
        bundle.putString("argUnkownNumber", str);
        aVar2.setArguments(bundle);
        aVar2.f499b = aVar;
        return aVar2;
    }

    static /* synthetic */ void a(a aVar, Intent intent) {
        if (CallUtil.isUriNumber(aVar.f498a)) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            ContentValues contentValues = new ContentValues();
            contentValues.put("mimetype", "vnd.android.cursor.item/sip_address");
            contentValues.put(CoverUtils.CoverData.COVER_URI, aVar.f498a);
            arrayList.add(contentValues);
            intent.putParcelableArrayListExtra("data", arrayList);
            return;
        }
        intent.putExtra("phone", aVar.f498a);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f498a = getArguments().getString("argUnkownNumber");
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        String string = getResources().getString(2131755952);
        String string2 = getResources().getString(2131755039);
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(getResources().getString(2131756048));
        builder.setItems(new String[]{string, string2}, new DialogInterface.OnClickListener() { // from class: com.android.contacts.a.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                switch (i) {
                    case 0:
                        Intent intent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
                        a.a(a.this, intent);
                        try {
                            if (a.this.f499b != null) {
                                a.this.f499b.a();
                            }
                            ImplicitIntentsUtil.startActivityInAppIfPossible(a.this.getActivity(), intent);
                            return;
                        } catch (IllegalStateException e) {
                            Log.d("AddToContactsDialog", "IllegalState  startActivity(intent)");
                            return;
                        }
                    case 1:
                        Intent intent2 = new Intent("android.intent.action.INSERT_OR_EDIT");
                        intent2.setType("vnd.android.cursor.item/contact");
                        intent2.putExtra("isShowCreateNewContactButton", "doNotShowCreateNewContactButton");
                        a.a(a.this, intent2);
                        try {
                            if (a.this.f499b != null) {
                                a.this.f499b.b();
                            }
                            ImplicitIntentsUtil.startActivityInApp(a.this.getActivity(), intent2);
                            return;
                        } catch (IllegalStateException e2) {
                            Log.d("AddToContactsDialog", "IllegalState  startActivity(intent2)");
                            return;
                        }
                    default:
                        return;
                }
            }
        });
        return builder.create();
    }
}
