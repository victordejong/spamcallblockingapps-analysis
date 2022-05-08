package com.apptentive.android.sdk.module.messagecenter.view.holder;

import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.apptentive.android.sdk.C0724R;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/holder/StatusHolder.class */
public class StatusHolder extends RecyclerView.ViewHolder {
    public TextView body;
    public ImageView icon;

    public StatusHolder(View view) {
        super(view);
        this.body = (TextView) view.findViewById(C0724R.C0727id.status_body);
        this.icon = (ImageView) view.findViewById(C0724R.C0727id.icon);
    }
}
