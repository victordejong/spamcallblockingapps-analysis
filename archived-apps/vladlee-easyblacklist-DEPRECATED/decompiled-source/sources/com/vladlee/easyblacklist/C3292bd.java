package com.vladlee.easyblacklist;

import android.content.Context;
import android.telephony.PhoneStateListener;
/* renamed from: com.vladlee.easyblacklist.bd */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bd.class */
public final class C3292bd extends PhoneStateListener {

    /* renamed from: a */
    private Context f19358a;

    public C3292bd(Context context) {
        this.f19358a = context;
    }

    @Override // android.telephony.PhoneStateListener
    public final void onCallStateChanged(int i, String str) {
        if (i == 0) {
            return;
        }
        if (i != 1) {
            if (i != 2) {
            }
        } else {
            BlockService.m362a(str);
        }
    }
}
