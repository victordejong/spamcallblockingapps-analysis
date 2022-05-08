package com.android.contacts.calllog;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.asus.updatesdk.BuildConfig;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/b.class */
public final class b extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private static SimpleDateFormat f662a = new SimpleDateFormat("yyyy_MMdd_HHmmss");

    /* renamed from: b  reason: collision with root package name */
    private boolean f663b = false;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/b$a.class */
    private final class a extends AsyncTask<String, Void, String> {

        /* renamed from: b  reason: collision with root package name */
        private Context f672b;

        public a(Context context) {
            this.f672b = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:129:0x02be  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean a(java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 719
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.calllog.b.a.a(java.lang.String):boolean");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ String doInBackground(String[] strArr) {
            String str = strArr[0];
            String str2 = str;
            if (!a(str)) {
                str2 = "error_result";
            }
            return str2;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String str) {
            String str2 = str;
            if (this.f672b == null) {
                return;
            }
            if (b.this.f663b) {
                Context context = this.f672b;
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("application/calllog-backup");
                Uri fromFile = Uri.fromFile(new File(str2));
                intent.putExtra("android.intent.extra.SUBJECT", "[CALLS BACKUP]" + str2);
                intent.putExtra("android.intent.extra.STREAM", fromFile);
                ImplicitIntentsUtil.startActivityOutsideApp(context, Intent.createChooser(intent, context.getResources().getString(2131756090)));
            } else if (str2.equals("error_result")) {
                AlertDialog.Builder builder = new AlertDialog.Builder(this.f672b);
                builder.setTitle(this.f672b.getResources().getString(2131755183));
                builder.setMessage(this.f672b.getResources().getString(2131755182));
                builder.setPositiveButton(this.f672b.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.b.a.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                    }
                });
                builder.create().show();
            } else {
                AlertDialog.Builder builder2 = new AlertDialog.Builder(this.f672b);
                builder2.setTitle(this.f672b.getResources().getString(2131755279));
                builder2.setMessage(this.f672b.getResources().getString(2131755279));
                builder2.setPositiveButton(this.f672b.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.b.a.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                    }
                });
                builder2.create().show();
            }
        }
    }

    public static b a(boolean z) {
        b bVar = new b();
        Bundle bundle = new Bundle();
        bundle.putBoolean("isSendMode", z);
        bVar.setArguments(bundle);
        return bVar;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f663b = getArguments().getBoolean("isSendMode");
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        View inflate = LayoutInflater.from(getActivity()).inflate(2131427420, (ViewGroup) null);
        final EditText editText = (EditText) inflate.findViewById(2131296765);
        editText.setText("Calllog_" + f662a.format(new Date()));
        TextView textView = (TextView) inflate.findViewById(2131297127);
        if (this.f663b) {
            textView.setText(2131755186);
        } else {
            textView.setText(2131755185);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(getResources().getString(2131755614));
        builder.setView(inflate);
        builder.setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.b.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                String obj = editText.getText().toString();
                if (!TextUtils.isEmpty(obj)) {
                    Log.d("BackupCallLogEnterFilenameDialog", "start backup call log task");
                    new a(b.this.getActivity()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, "sdcard/ASUS/Calllog/Backup/" + obj.replaceAll("/", BuildConfig.FLAVOR) + ".clbu");
                    return;
                }
                Log.d("BackupCallLogEnterFilenameDialog", "not start calllog backup, edit text is null ");
                new AlertDialog.Builder(b.this.getActivity()).setTitle(b.this.getResources().getString(2131755184)).setMessage(2131755278).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.b.1.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface2, int i2) {
                        dialogInterface2.dismiss();
                    }
                }).setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.b.1.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface2, int i2) {
                        dialogInterface2.dismiss();
                    }
                }).show();
            }
        });
        builder.setNegativeButton(getResources().getString(17039369), new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.b.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        final AlertDialog create = builder.create();
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.android.contacts.calllog.b.3
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                if (z) {
                    create.getWindow().setSoftInputMode(5);
                }
            }
        });
        return create;
    }
}
