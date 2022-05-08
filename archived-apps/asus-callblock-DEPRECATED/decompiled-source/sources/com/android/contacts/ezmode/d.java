package com.android.contacts.ezmode;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.android.contacts.a.b;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.dialpad.AdditionalButtonFragment;
import com.android.contacts.dialpad.ResultListFragment;
import com.android.contacts.dialpad.TwelveKeyDialerFragment;
import com.android.contacts.q;
import com.android.contacts.util.Constants;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ezmode/d.class */
public class d extends Fragment implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1255a = d.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    public boolean f1256b;
    private View g;
    private boolean j;
    private String k;
    private boolean f = true;
    private LinearLayout h = null;
    public TwelveKeyDialerFragment c = null;
    public ResultListFragment d = null;
    public AdditionalButtonFragment e = null;
    private EditText i = null;
    private String l = null;
    private boolean m = false;

    private void a() {
        Log.d(f1255a, "showDialPad");
        if (!this.f1256b) {
            FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
            beginTransaction.hide(this.d);
            beginTransaction.show(this.e);
            beginTransaction.show(this.c);
            beginTransaction.commit();
            this.f1256b = true;
            getActivity().getActionBar().setTitle(2131755638);
            b.a();
            b.a(2, getActivity(), "Ez_Dialer", true);
        }
    }

    private void a(String str, String str2) {
        if (this.c == null) {
            this.c = (TwelveKeyDialerFragment) getChildFragmentManager().findFragmentById(2131296811);
        }
        try {
            this.j = true;
            if (this.c != null) {
                this.c.q = this.j;
            }
            String formatNumber = PhoneNumberUtils.formatNumber(PhoneNumberUtils.extractNetworkPortion(str), str2, this.k);
            if (!TextUtils.isEmpty(formatNumber)) {
                Editable text = this.i.getText();
                text.replace(0, text.length(), formatNumber);
                if (this.c != null) {
                    this.l = text.toString();
                    this.c.b(this.l);
                }
            }
            this.j = false;
            if (this.c != null) {
                this.c.q = this.j;
            }
        } catch (Throwable th) {
            this.j = false;
            if (this.c != null) {
                this.c.q = this.j;
            }
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    private boolean a(Intent intent) {
        boolean z;
        Uri data;
        Cursor query;
        String action = intent.getAction();
        if (("android.intent.action.DIAL".equals(action) || "android.intent.action.VIEW".equals(action)) && (data = intent.getData()) != null) {
            if (Constants.SCHEME_TEL.equals(data.getScheme())) {
                a(PhoneNumberUtils.convertKeypadLettersToDigits(PhoneNumberUtils.replaceUnicodeDigits(data.getSchemeSpecificPart())), null);
                z = true;
            } else {
                String type = intent.getType();
                if (("vnd.android.cursor.item/person".equals(type) || "vnd.android.cursor.item/phone".equals(type)) && (query = getActivity().getContentResolver().query(intent.getData(), new String[]{"number", "number_key"}, null, null, null)) != null) {
                    try {
                        if (query.moveToFirst()) {
                            a(query.getString(0), query.getString(1));
                            query.close();
                            z = true;
                        } else {
                            query.close();
                        }
                    } catch (Throwable th) {
                        query.close();
                        throw th;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.f) {
            Log.d(f1255a, "onActivityCreated");
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (this.f) {
            Log.d(f1255a, "onAttach");
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296816:
                a();
                return;
            default:
                return;
        }
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.f) {
            Log.d(f1255a, "onCreate");
        }
        if (bundle != null) {
            this.l = bundle.getString("digitNumber", null);
            this.m = bundle.getBoolean("needShowDialPad", false);
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.f) {
            Log.d(f1255a, "onCreateView");
        }
        this.k = q.a(getActivity());
        if (this.g == null) {
            this.g = layoutInflater.inflate(2131427551, viewGroup, false);
        }
        if (this.h == null) {
            this.h = (LinearLayout) this.g.findViewById(2131296816);
            this.h.setOnClickListener(this);
        }
        if (this.d == null) {
            this.d = (ResultListFragment) getChildFragmentManager().findFragmentById(2131296821);
        }
        if (this.c == null) {
            this.c = (TwelveKeyDialerFragment) getChildFragmentManager().findFragmentById(2131296811);
        }
        if (this.i == null) {
            this.i = (EditText) this.g.findViewById(2131296746);
        }
        if (this.e == null) {
            this.e = (AdditionalButtonFragment) getChildFragmentManager().findFragmentById(2131296802);
        }
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        beginTransaction.hide(this.c);
        beginTransaction.hide(this.e);
        beginTransaction.show(this.d);
        beginTransaction.commit();
        this.h.setVisibility(0);
        this.f1256b = false;
        return this.g;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this.f) {
            Log.d(f1255a, "onDestroy");
        }
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.f) {
            Log.d(f1255a, "onDestroyView");
        }
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (this.f) {
            Log.d(f1255a, "onDetach");
        }
        try {
            Field declaredField = Fragment.class.getDeclaredField("mChildFragmentManager");
            declaredField.setAccessible(true);
            declaredField.set(this, null);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (NoSuchFieldException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.f) {
            Log.d(f1255a, "onPause");
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f) {
            Log.d(f1255a, "onResume");
        }
        Activity activity = getActivity();
        if (activity instanceof MainDialtactsActivity) {
            if (!this.m) {
                this.m = a(activity.getIntent());
            }
            if (this.m) {
                a();
            }
            activity.getIntent().setData(null);
        }
        this.d.i();
        this.d.f();
        this.d.e();
        this.c.h();
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        if (this.f) {
            Log.d(f1255a, "onSaveInstanceState()");
        }
        super.onSaveInstanceState(bundle);
        if (this.l != null) {
            bundle.putString("digitNumber", this.l);
            bundle.putBoolean("needShowDialPad", this.m);
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        if (this.f) {
            Log.d(f1255a, "onStart");
        }
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        if (this.f) {
            Log.d(f1255a, "onStop");
        }
    }
}
