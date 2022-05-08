package gogolook.callgogolook2;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import com.mopub.common.Constants;
import gogolook.callgogolook2.app.WhoscallActivity;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14197v4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.p617p.C14687h;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/UnlockActivity.class */
public class UnlockActivity extends WhoscallActivity {
    /* renamed from: a */
    public static void m28892a(Intent intent) {
        m28891a(intent, false);
    }

    /* renamed from: a */
    public static void m28891a(Intent intent, boolean z) {
        Context o = MyApplication.m29013o();
        try {
            if (C14197v4.m2249b(o)) {
                Intent intent2 = new Intent(MyApplication.m29013o(), UnlockActivity.class);
                intent2.putExtra(Constants.INTENT_SCHEME, intent);
                intent2.putExtra("add_with_parent_root", z);
                intent2.addFlags(268435456);
                o.startActivity(intent2);
                if (C14197v4.m2247c(o)) {
                    C14687h.m862a(o, (int) R$string.ls_unlock_remind, 0).m858c();
                }
            } else {
                intent.addFlags(268435456);
                if (z) {
                    C14217x3.m2165b(o, intent);
                } else {
                    o.startActivity(intent);
                }
            }
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getWindow().addFlags(6815744);
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m28683i().m6031d();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        if (z) {
            try {
                Intent intent = getIntent();
                if (intent != null) {
                    Parcelable parcelableExtra = intent.getParcelableExtra(Constants.INTENT_SCHEME);
                    Parcelable parcelableExtra2 = intent.getParcelableExtra("pending_intent");
                    if (parcelableExtra instanceof Intent) {
                        if (getIntent().getBooleanExtra("add_with_parent_root", false)) {
                            C14217x3.m2165b(this, (Intent) parcelableExtra);
                        } else {
                            startActivity((Intent) parcelableExtra);
                        }
                    } else if (parcelableExtra2 instanceof PendingIntent) {
                        ((PendingIntent) parcelableExtra2).send();
                    }
                }
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
            finish();
        }
    }
}
