package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaot;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzve;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdActivity.class */
public final class AdActivity extends Activity {
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";
    public static final String SIMPLE_CLASS_NAME = "AdActivity";

    /* renamed from: a */
    private zzaot f5810a;

    /* renamed from: a */
    private final void m6105a() {
        zzaot zzaotVar = this.f5810a;
        if (zzaotVar != null) {
            try {
                zzaotVar.zzdf();
            } catch (RemoteException e) {
                zzayu.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i, int i2, Intent intent) {
        try {
            this.f5810a.onActivityResult(i, i2, intent);
        } catch (Exception e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        boolean z = true;
        try {
            if (this.f5810a != null) {
                z = this.f5810a.zztm();
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            z = true;
        }
        if (z) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            this.f5810a.zzad(ObjectWrapper.wrap(configuration));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f5810a = zzve.zzov().zzb(this);
        zzaot zzaotVar = this.f5810a;
        if (zzaotVar == null) {
            e = null;
        } else {
            try {
                zzaotVar.onCreate(bundle);
                return;
            } catch (RemoteException e) {
                e = e;
            }
        }
        zzayu.zze("#007 Could not call remote method.", e);
        finish();
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        try {
            if (this.f5810a != null) {
                this.f5810a.onDestroy();
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected final void onPause() {
        try {
            if (this.f5810a != null) {
                this.f5810a.onPause();
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected final void onRestart() {
        super.onRestart();
        try {
            if (this.f5810a != null) {
                this.f5810a.onRestart();
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onResume() {
        super.onResume();
        try {
            if (this.f5810a != null) {
                this.f5810a.onResume();
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(Bundle bundle) {
        try {
            if (this.f5810a != null) {
                this.f5810a.onSaveInstanceState(bundle);
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected final void onStart() {
        super.onStart();
        try {
            if (this.f5810a != null) {
                this.f5810a.onStart();
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onStop() {
        try {
            if (this.f5810a != null) {
                this.f5810a.onStop();
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        m6105a();
    }

    @Override // android.app.Activity
    public final void setContentView(View view) {
        super.setContentView(view);
        m6105a();
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        m6105a();
    }
}
