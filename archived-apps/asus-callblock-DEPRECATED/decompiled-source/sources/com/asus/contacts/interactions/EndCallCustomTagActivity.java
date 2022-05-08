package com.asus.contacts.interactions;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.activities.BlockAndTagNumberActivity;
import com.android.contacts.f.b;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.a.a;
import com.asus.a.c;
import com.asus.blocklist.g;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/interactions/EndCallCustomTagActivity.class */
public class EndCallCustomTagActivity extends Activity implements View.OnClickListener, View.OnFocusChangeListener, ViewTreeObserver.OnGlobalLayoutListener, AdapterView.OnItemClickListener {

    /* renamed from: b  reason: collision with root package name */
    private String f2685b;
    private EditText c;
    private TextView d;
    private View e;
    private View f;
    private TextView h;
    private ListView j;
    private ProgressBar k;

    /* renamed from: a  reason: collision with root package name */
    private String f2684a = EndCallCustomTagActivity.class.getSimpleName();
    private long g = -1;
    private int i = -1;
    private boolean l = false;
    private boolean m = true;
    private boolean n = false;
    private long o = 0;
    private boolean p = false;
    private CountDownTimer q = new CountDownTimer() { // from class: com.asus.contacts.interactions.EndCallCustomTagActivity.1
        @Override // android.os.CountDownTimer
        public final void onFinish() {
            if (!EndCallCustomTagActivity.this.l) {
                Log.d(EndCallCustomTagActivity.this.f2684a, "timer count down finish.");
                EndCallCustomTagActivity.this.p = true;
                EndCallCustomTagActivity.this.j.setVisibility(8);
                EndCallCustomTagActivity.this.k.setVisibility(4);
            }
        }

        @Override // android.os.CountDownTimer
        public final void onTick(long j) {
            Log.d(EndCallCustomTagActivity.this.f2684a, "timer count down:" + j);
        }
    };

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/interactions/EndCallCustomTagActivity$a.class */
    private final class a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        String[] f2689a;

        /* renamed from: b  reason: collision with root package name */
        Context f2690b;

        a(Context context) {
            this.f2690b = context;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(String[] strArr) {
            boolean z;
            a.c[] i;
            boolean z2 = false;
            String[] strArr2 = strArr;
            Log.d(EndCallCustomTagActivity.this.f2684a, "in queryRecommandTagTask:" + strArr2[0]);
            if (EndCallCustomTagActivity.this.p || (i = com.asus.a.a.i(EndCallCustomTagActivity.this, strArr2[0])) == null || i.length <= 0) {
                z = false;
            } else {
                this.f2689a = new String[i.length];
                for (int i2 = 0; i2 < i.length; i2++) {
                    if (i[i2] != null && !TextUtils.isEmpty(i[i2].d)) {
                        Log.d(EndCallCustomTagActivity.this.f2684a, "tagName:" + i[i2].d);
                        this.f2689a[i2] = i[i2].d;
                    }
                }
                if (this.f2689a.length != 0) {
                    z2 = true;
                }
                z = Boolean.valueOf(z2);
            }
            return z;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            EndCallCustomTagActivity.this.l = bool2.booleanValue();
            if (!bool2.booleanValue()) {
                Log.d(EndCallCustomTagActivity.this.f2684a, "noResult");
                EndCallCustomTagActivity.this.j.setVisibility(8);
                EndCallCustomTagActivity.this.k.setVisibility(4);
            } else if (!EndCallCustomTagActivity.this.p) {
                Log.d(EndCallCustomTagActivity.this.f2684a, "hasResult");
                super.onPostExecute(bool2);
                try {
                    EndCallCustomTagActivity.this.q.cancel();
                    EndCallCustomTagActivity.this.j.setVisibility(0);
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < this.f2689a.length; i++) {
                        HashMap hashMap = new HashMap();
                        if (!TextUtils.isEmpty(this.f2689a[i])) {
                            hashMap.put("text", this.f2689a[i]);
                            arrayList.add(hashMap);
                        }
                    }
                    if (arrayList.size() != 0) {
                        EndCallCustomTagActivity.this.j.setAdapter((ListAdapter) new SimpleAdapter(this.f2690b, arrayList, 2131427441, new String[]{"text"}, new int[]{2131296519}));
                        return;
                    }
                    EndCallCustomTagActivity.this.j.setVisibility(8);
                    EndCallCustomTagActivity.this.k.setVisibility(4);
                } catch (Exception e) {
                    Log.e(EndCallCustomTagActivity.this.f2684a, "exception at queryRecommandTagTask" + e.toString());
                    e.printStackTrace();
                }
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    private void a(String str) {
        if ((com.asus.a.a.b(this, this.f2685b, "other", str) ? (char) 1 : (char) 65535) == 1) {
            Toast.makeText(this, String.format(getString(2131755241), this.f2685b), 0).show();
            Log.d(this.f2684a, "Tag number succeeded");
            c.b(this, this.f2685b);
        } else {
            Toast.makeText(this, String.format(getString(2131755240), this.f2685b), 0).show();
            Log.d(this.f2684a, "Tag number failed");
        }
        String str2 = null;
        switch (this.i) {
            case 0:
                str2 = "TYPE_ENDCALL";
                break;
            case 1:
                str2 = "TYPE_CONFIRM";
                break;
            case 2:
                str2 = "TYPE_CALLLOG";
                break;
            case 3:
                str2 = "TYPE_DETAIL";
                break;
        }
        if (str2 != null) {
            SharedPreferences m = c.m(this);
            if (m != null) {
                m.edit().putInt("mark_from:" + str2, m.getInt("mark_from:" + str2, 0) + 1).commit();
            }
            if (str2.equals("TYPE_ENDCALL") || str2.equals("TYPE_CONFIRM")) {
                PreferenceManager.getDefaultSharedPreferences(this).edit().putString("callguard_number_to_refresh", this.f2685b + "," + System.currentTimeMillis()).apply();
            }
        }
        Intent intent = new Intent();
        intent.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_TAGGED_RESULT, true);
        intent.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_NUMBER, this.f2685b);
        intent.putExtra("ASUS_CALLER_BLOCK_THREAD_ID", this.o);
        setResult(-1, intent);
    }

    public final void a() {
        Log.d(this.f2684a, "doPositiveBlockNumber");
        String c = c.c(this.f2685b);
        if (g.h(this)) {
            com.asus.blocklist.backwardcompatible.a.c(this, c);
        } else {
            g.e(this, c);
        }
        a(this.c.getText().toString());
        finish();
    }

    public final void b() {
        Log.d(this.f2684a, "doNegativeBlockNumber");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131297375:
                Log.i(this.f2684a, "Cancel tag " + this.f2685b);
                setResult(0, new Intent());
                finish();
                return;
            case 2131297376:
                Log.i(this.f2684a, "Tag " + this.f2685b + " to tag " + ((Object) this.c.getText()));
                if (this.n) {
                    Log.i(this.f2684a, "Need to block!");
                    b.a(false, true, 1).show(getFragmentManager(), "block_notice_dialog");
                    return;
                }
                a(this.c.getText().toString());
                finish();
                return;
            default:
                return;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
            setRequestedOrientation(1);
        } else {
            setRequestedOrientation(-1);
        }
        requestWindowFeature(1);
        Intent intent = getIntent();
        if (intent != null) {
            this.f2685b = intent.getStringExtra("number");
            this.i = intent.getIntExtra("markFrom", -1);
            this.n = intent.getBooleanExtra("EXTRA_IS_BLOCK_CHECKED", false);
            this.o = intent.getLongExtra("ASUS_CALLER_BLOCK_THREAD_ID", 0L);
        }
        if (TextUtils.isEmpty(this.f2685b)) {
            Log.i(this.f2684a, "No phone number. finish!");
            finish();
            return;
        }
        setContentView(2131427538);
        this.f = findViewById(2131297241);
        this.c = (EditText) findViewById(2131297377);
        this.d = (TextView) findViewById(2131297376);
        this.e = findViewById(2131297375);
        this.h = (TextView) findViewById(2131297151);
        this.h.setText(this.f2685b);
        this.e.setOnClickListener(this);
        this.d.setOnClickListener(this);
        this.c.setOnFocusChangeListener(this);
        this.c.addTextChangedListener(new TextWatcher() { // from class: com.asus.contacts.interactions.EndCallCustomTagActivity.2
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                if (editable.length() > 0) {
                    EndCallCustomTagActivity.this.d.setTextColor(EndCallCustomTagActivity.this.getResources().getColor(17170443));
                    EndCallCustomTagActivity.this.d.setEnabled(true);
                    EndCallCustomTagActivity.this.d.setBackgroundResource(2131165265);
                    return;
                }
                EndCallCustomTagActivity.this.d.setTextColor(EndCallCustomTagActivity.this.getResources().getColor(2131034174));
                EndCallCustomTagActivity.this.d.setEnabled(false);
                EndCallCustomTagActivity.this.d.setBackgroundResource(2131165420);
                int dimensionPixelOffset = EndCallCustomTagActivity.this.getResources().getDimensionPixelOffset(2131100091);
                EndCallCustomTagActivity.this.d.setPadding(0, dimensionPixelOffset, 0, dimensionPixelOffset);
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        this.j = (ListView) findViewById(2131296522);
        this.j.setOnItemClickListener(this);
        this.k = (ProgressBar) findViewById(2131297199);
        this.j.setEmptyView(this.k);
        this.f.getViewTreeObserver().addOnGlobalLayoutListener(this);
        new a(this).execute(this.f2685b);
        this.q.start();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        Log.d(this.f2684a, "hasFocus:" + z);
        if (z) {
            if (this.l) {
                Log.d(this.f2684a, "onFocusChange: mHasResult == true");
            } else {
                Log.d(this.f2684a, "onFocusChange: mHasResult == false");
            }
        } else if (this.l) {
            this.j.postDelayed(new Runnable() { // from class: com.asus.contacts.interactions.EndCallCustomTagActivity.3
                @Override // java.lang.Runnable
                public final void run() {
                    EndCallCustomTagActivity.this.j.setVisibility(0);
                }
            }, 500L);
            return;
        }
        this.j.setVisibility(8);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        Rect rect = new Rect();
        this.f.getWindowVisibleDisplayFrame(rect);
        int i = rect.bottom - rect.top;
        if (this.g == -1) {
            this.g = i;
        }
        this.f.getRootView().getHeight();
        this.f.getHeight();
        if (i == this.g) {
            Log.d(this.f2684a, "onGlobalLayout: heightDiff == mOriginDiff");
            if (!this.m) {
                this.c.clearFocus();
                this.m = true;
            }
        } else if (this.c.isFocused()) {
            this.m = false;
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.c.setText(((TextView) view.findViewById(2131296519)).getText().toString());
    }
}
