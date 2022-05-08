package p081h.p154f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.AccessToken;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2416h0;
/* renamed from: h.f.d */
/* loaded from: classes-dex2jar.jar:h/f/d.class */
public abstract class AbstractC6118d {

    /* renamed from: d */
    public static final String f15221d = "d";

    /* renamed from: c */
    public boolean f15224c = false;

    /* renamed from: a */
    public final BroadcastReceiver f15222a = new C6120b();

    /* renamed from: b */
    public final LocalBroadcastManager f15223b = LocalBroadcastManager.getInstance(C6135n.m23746e());

    /* renamed from: h.f.d$b */
    /* loaded from: classes-dex2jar.jar:h/f/d$b.class */
    public class C6120b extends BroadcastReceiver {
        public C6120b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED".equals(intent.getAction())) {
                C2408g0.m34821c(AbstractC6118d.f15221d, "AccessTokenChanged");
                AbstractC6118d.this.mo23796a((AccessToken) intent.getParcelableExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"), (AccessToken) intent.getParcelableExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"));
            }
        }
    }

    public AbstractC6118d() {
        C2416h0.m34784c();
        m23794c();
    }

    /* renamed from: a */
    public final void m23797a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        this.f15223b.registerReceiver(this.f15222a, intentFilter);
    }

    /* renamed from: a */
    public abstract void mo23796a(AccessToken accessToken, AccessToken accessToken2);

    /* renamed from: b */
    public boolean m23795b() {
        return this.f15224c;
    }

    /* renamed from: c */
    public void m23794c() {
        if (!this.f15224c) {
            m23797a();
            this.f15224c = true;
        }
    }

    /* renamed from: d */
    public void m23793d() {
        if (this.f15224c) {
            this.f15223b.unregisterReceiver(this.f15222a);
            this.f15224c = false;
        }
    }
}
