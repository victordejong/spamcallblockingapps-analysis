package com.android.contacts.ezmode;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;
import com.android.contacts.ContactSaveService;
import com.android.contacts.a.b;
import com.android.contacts.editor.d;
import com.android.contacts.ezmode.g;
import com.android.contacts.k;
import com.android.contacts.p;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ezmode/EzAddContactActivity.class */
public class EzAddContactActivity extends p implements View.OnClickListener, g.b {

    /* renamed from: a  reason: collision with root package name */
    EditText f1232a;

    /* renamed from: b  reason: collision with root package name */
    EditText f1233b;
    private ImageView f;
    private View g;
    private View h;
    private g k;
    private String l;
    private final String e = EzAddContactActivity.class.getSimpleName();
    private final String i = "ezSaveCompleted";
    private Bundle j = new Bundle();
    boolean c = false;
    boolean d = false;
    private k m = null;
    private ContentObserver n = new ContentObserver(new Handler()) { // from class: com.android.contacts.ezmode.EzAddContactActivity.3
        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            Log.d(EzAddContactActivity.this.e, "selfChange = " + z);
            EzAddContactActivity.this.getContentResolver().unregisterContentObserver(EzAddContactActivity.this.n);
            EzAddContactActivity.this.finish();
        }
    };

    private void d() {
        int i;
        if (this.j.size() == 0) {
            this.f.setScaleType(ImageView.ScaleType.FIT_XY);
            i = 4;
        } else {
            this.f.setScaleType(ImageView.ScaleType.CENTER_CROP);
            i = 14;
        }
        this.k = new g(this, this.f, i, true);
    }

    @Override // com.android.contacts.ezmode.g.b
    public final void a() {
        this.m.a(this.f, (Uri) null, this.f.getWidth());
        this.j.clear();
        d();
    }

    @Override // com.android.contacts.ezmode.g.b
    public final void a(Bitmap bitmap, String str) {
        if (bitmap == null || bitmap.getHeight() < 0 || bitmap.getWidth() < 0) {
            Log.w(this.e, "Invalid bitmap");
            return;
        }
        this.j.putString("-1", str);
        this.f.setImageBitmap(bitmap);
        d();
    }

    @Override // com.android.contacts.ezmode.g.b
    public final void a(String str) {
        this.l = str;
    }

    public final void b() {
        if (this.d && this.c) {
            this.h.setEnabled(true);
        } else {
            this.h.setEnabled(false);
        }
    }

    @Override // com.android.contacts.ezmode.g.b
    public final String c() {
        return this.l;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.k == null || this.k.handlePhotoActivityResult(i, i2, intent)) {
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296801:
                ((d.a) this.k.getListener()).a(1);
                return;
            case 2131296804:
                finish();
                return;
            case 2131296822:
                if (!TextUtils.isEmpty(this.f1232a.getText())) {
                    this.f1233b.setEnabled(false);
                    this.f1232a.setEnabled(false);
                    this.h.setEnabled(false);
                    startService(ContactSaveService.a(this, null, this.f1233b.getText() == null ? null : this.f1233b.getText().toString(), this.f1232a.getText().toString(), -1L, -1L, -1L, -1L, -1L, true, 0, getClass(), "ezSaveCompleted", this.j, false));
                    b.a();
                    b.a(2, (Activity) this, "Ez_Contact_Add", true);
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.l = bundle.getString("currentPhotoFile");
        }
        boolean a2 = h.a(getApplicationContext());
        if (PhoneCapabilityTester.isUsingTwoPanes(this) || !a2) {
            Intent intent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
            intent.putExtras(getIntent().getExtras());
            ImplicitIntentsUtil.startActivityInAppIfPossible(this, intent);
            finish();
            return;
        }
        setContentView(2131427546);
        ActionBar actionBar = getActionBar();
        actionBar.setDisplayHomeAsUpEnabled(true);
        actionBar.setTitle(2131755832);
        this.f1232a = (EditText) findViewById(2131296800);
        this.f1233b = (EditText) findViewById(2131296799);
        this.f = (ImageView) findViewById(2131296801);
        this.g = findViewById(2131296804);
        this.h = findViewById(2131296822);
        this.g.setOnClickListener(this);
        this.h.setOnClickListener(this);
        this.h.setEnabled(false);
        this.f.setOnClickListener(this);
        this.m = k.a(this);
        this.f1232a.addTextChangedListener(new TextWatcher() { // from class: com.android.contacts.ezmode.EzAddContactActivity.1
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                EzAddContactActivity ezAddContactActivity = EzAddContactActivity.this;
                if (ezAddContactActivity.f1232a.getText().length() == 0) {
                    ezAddContactActivity.d = false;
                } else {
                    ezAddContactActivity.d = true;
                }
                EzAddContactActivity.this.b();
            }
        });
        this.f1233b.addTextChangedListener(new TextWatcher() { // from class: com.android.contacts.ezmode.EzAddContactActivity.2
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                EzAddContactActivity ezAddContactActivity = EzAddContactActivity.this;
                if (ezAddContactActivity.f1233b.getText().length() == 0) {
                    ezAddContactActivity.c = false;
                } else {
                    ezAddContactActivity.c = true;
                }
                EzAddContactActivity.this.b();
            }
        });
        if (getIntent() != null && !TextUtils.isEmpty(getIntent().getStringExtra("phone"))) {
            this.f1232a.setText(getIntent().getStringExtra("phone"));
        }
        d();
        if (PhoneCapabilityTester.IsAsusDevice()) {
            getContentResolver().registerContentObserver(Settings.System.getUriFor("asus_easy_launcher"), true, this.n);
        }
        this.m.a(this.f, (Uri) null, this.f.getWidth());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, android.app.Activity
    public void onDestroy() {
        getContentResolver().unregisterContentObserver(this.n);
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if ("ezSaveCompleted".equals(intent.getAction())) {
            Uri data = intent.getData();
            if (data == null) {
                Toast.makeText(this, 2131755443, 1).show();
            } else {
                Uri uri = intent.getParcelableExtra("INDEX_PHONE_URI") == null ? null : (Uri) intent.getParcelableExtra("INDEX_PHONE_URI");
                String stringExtra = intent.getStringExtra("INDEX_CONTACT_DETAIL_TITLE");
                Intent intent2 = new Intent("android.intent.action.EZ_CONTACT_DETAIL", data);
                intent2.putExtra("INDEX_PHONE_URI", uri);
                intent2.putExtra("INDEX_CONTACT_DETAIL_TITLE", stringExtra);
                ImplicitIntentsUtil.startActivityInApp(this, intent2);
            }
            finish();
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                z = true;
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("currentPhotoFile", this.l);
    }
}
