package com.tmobile.tmoid.agent.utils;

import android.app.AlertDialog;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/utils/DialogBase.class */
public class DialogBase extends AlertDialog {

    /* renamed from: f */
    private View f14697f;

    /* renamed from: g */
    private int f14698g;

    /* renamed from: h */
    private int f14699h;

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        setContentView(this.f14697f);
        getWindow().setLayout(this.f14699h, this.f14698g);
    }
}
