package com.privacystar.core.p011ui.debug;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.p001v4.app.FragmentManager;
import com.privacystar.core.p011ui.PSActivity;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.debug.DebugAction */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/DebugAction.class */
public abstract class DebugAction implements Comparable<DebugAction> {
    private PSActivity activity;

    public int compareTo(@NonNull DebugAction debugAction) {
        return getTitle().compareTo(debugAction.getTitle());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PSActivity getActivity() {
        return this.activity;
    }

    protected Context getContext() {
        return this.activity;
    }

    public String getDescription() {
        return "";
    }

    public FragmentManager getFragmentManager() {
        return this.activity.getSupportFragmentManager();
    }

    public abstract String getTitle();

    public void onPerformAction(Context context) {
        Timber.m28v("Performing debug action: %s", getTitle());
    }

    public void setActivity(PSActivity pSActivity) {
        this.activity = pSActivity;
    }

    public void setup() {
    }

    public void tearDown() {
    }
}
