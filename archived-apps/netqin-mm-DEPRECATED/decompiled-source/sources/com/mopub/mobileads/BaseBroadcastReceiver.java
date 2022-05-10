package com.mopub.mobileads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
import p012b.p072q.p073a.C1134a;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/BaseBroadcastReceiver.class */
public abstract class BaseBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public final long f34059a;

    /* renamed from: b */
    public Context f34060b;

    public BaseBroadcastReceiver(long j) {
        this.f34059a = j;
    }

    public static void broadcastAction(Context context, long j, String str) {
        Preconditions.checkNotNull(context, "context cannot be null");
        Preconditions.checkNotNull(str, "action cannot be null");
        Intent intent = new Intent(str);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        C1134a.m34598a(context.getApplicationContext()).m34597a(intent);
    }

    public abstract IntentFilter getIntentFilter();

    public void register(BroadcastReceiver broadcastReceiver, Context context) {
        this.f34060b = context;
        C1134a.m34598a(context).m34599a(broadcastReceiver, getIntentFilter());
    }

    public boolean shouldConsumeBroadcast(Intent intent) {
        Preconditions.checkNotNull(intent, "intent cannot be null");
        return this.f34059a == intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L);
    }

    public void unregister(BroadcastReceiver broadcastReceiver) {
        Context context = this.f34060b;
        if (context != null && broadcastReceiver != null) {
            C1134a.m34598a(context).m34600a(broadcastReceiver);
            this.f34060b = null;
        }
    }
}
