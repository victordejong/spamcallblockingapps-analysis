package com.asus.privatecontacts.pin;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.widget.FrameLayout;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.privatecontacts.PrivateContactsActivity;
import com.asus.privatecontacts.pin.c;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/pin/PrivatePinDialogActivity.class */
public class PrivatePinDialogActivity extends Activity implements c.a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3030a = PrivatePinDialogActivity.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private boolean f3031b = false;
    private CameraPreview c;
    private FrameLayout d;
    private Intent e;

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/pin/PrivatePinDialogActivity$a.class */
    final class a extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        CameraPreview f3032a;

        public a(CameraPreview cameraPreview) {
            this.f3032a = cameraPreview;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
            return this.f3032a != null ? Boolean.valueOf(this.f3032a.a()) : false;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            this.f3032a.setAndStartPreview();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/pin/PrivatePinDialogActivity$b.class */
    final class b extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        CameraPreview f3034a;

        public b(CameraPreview cameraPreview) {
            this.f3034a = cameraPreview;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
            return Boolean.valueOf(this.f3034a.b());
        }
    }

    @Override // com.asus.privatecontacts.pin.c.a
    public final void a(String str) {
        String f = com.asus.privatecontacts.provider.c.f(this);
        if (f == null || !f.equals(str)) {
            com.asus.privatecontacts.provider.c.g(this);
            if (com.asus.privatecontacts.provider.c.i(this) >= 3) {
                try {
                    new b(this.c).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                } catch (Exception e) {
                    Log.d(f3030a, "Failed to run TakePictureAsyncTask execution !");
                    e.printStackTrace();
                }
                com.asus.privatecontacts.provider.c.h(this);
            }
            c.a(1).show(getFragmentManager(), "input_private_pin");
            return;
        }
        com.asus.privatecontacts.provider.c.h(this);
        Uri j = com.asus.privatecontacts.provider.c.j(this);
        if (j != null) {
            com.asus.privatecontacts.pin.b.a(j, this.e).show(getFragmentManager(), "private_photo_dialog");
            return;
        }
        if (this.f3031b) {
            setResult(-1, new Intent());
        } else {
            ImplicitIntentsUtil.startActivityInApp(this, new Intent(this, PrivateContactsActivity.class));
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427633);
        boolean isCarMode = PhoneCapabilityTester.isCarMode(getApplicationContext());
        if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
            if (isCarMode) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
        }
        this.d = (FrameLayout) findViewById(2131297182);
        if (bundle != null) {
            this.f3031b = bundle.getBoolean("extra_pin_request", false);
            this.e = (Intent) bundle.getParcelable("extra_callback_intent");
            return;
        }
        Intent intent = getIntent();
        if (intent != null) {
            this.f3031b = intent.getBooleanExtra("extra_pin_request", false);
            this.e = (Intent) intent.getParcelableExtra("extra_callback_intent");
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.d != null) {
            this.d.removeAllViews();
            this.c = null;
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (com.asus.privatecontacts.provider.c.e(this)) {
            if (this.d != null) {
                this.c = new CameraPreview(this);
                this.d.addView(this.c);
                try {
                    new a(this.c).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            getFragmentManager().beginTransaction();
            if (getFragmentManager().findFragmentByTag("input_private_pin") == null) {
                c.a(0).show(getFragmentManager(), "input_private_pin");
                return;
            }
            return;
        }
        ImplicitIntentsUtil.startActivityInApp(this, new Intent(this, PrivatePinSettingActivity.class));
        finish();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("extra_pin_request", this.f3031b);
        bundle.putParcelable("extra_callback_intent", this.e);
    }
}
