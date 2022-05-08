package com.firstorion.libcyd;

import android.content.Context;
import android.util.Log;
import com.privacystar.core.service.firebase.FirebaseConstants;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/CYDApplicationBuilder.class */
public final class CYDApplicationBuilder {
    private final Context context;
    private final CYDApplicationParams cydApplicationParams;

    public CYDApplicationBuilder(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        this.context = context;
        this.cydApplicationParams = CYDApplicationParams.load(context);
    }

    public void initializeCallerYD() {
        if (!this.cydApplicationParams.isValid()) {
            throw new IllegalStateException("You must set at least the token type and the appId.");
        }
        this.cydApplicationParams.save(this.context);
        CYDApplication.initialize(this.context);
        Beacon.sendInitBeacons(this.context);
        if (this.cydApplicationParams.useCallerYDFirebaseServer) {
            try {
                FirebaseHelper.useCallerYDFirebaseServer(this.context);
            } catch (Throwable th) {
                Log.e("libcyd.app", "Failed to initialize firebase", th);
            }
        }
    }

    public CYDApplicationBuilder withAppId(String str) {
        this.cydApplicationParams.appId = str;
        return this;
    }

    public CYDApplicationBuilder withAppVersion(String str) {
        this.cydApplicationParams.newAppVersion = str;
        return this;
    }

    public CYDApplicationBuilder withCallerYDPhoneStateReceiver() {
        this.cydApplicationParams.useInternalPhoneStateReceiever = true;
        return this;
    }

    public CYDApplicationBuilder withFirstOrionFirebase() {
        this.cydApplicationParams.useCallerYDFirebaseServer = true;
        this.cydApplicationParams.tokenType = FirebaseConstants.LIBCYD_TOKEN_TYPE;
        return this;
    }

    public CYDApplicationBuilder withTokenType(String str) {
        this.cydApplicationParams.tokenType = str;
        return this;
    }
}
