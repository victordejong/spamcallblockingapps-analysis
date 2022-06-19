package com.hiya.stingray.util;

import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.provider.Settings;
import kotlin.TypeCastException;
import kotlin.w.c.k;
import r.a.a;
/* renamed from: com.hiya.stingray.util.h */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/h.class */
public final class C1820h {
    /* renamed from: a */
    public static final String m893a(Context context) {
        k.g(context, "context");
        try {
            Object systemService = context.getSystemService("clipboard");
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.content.ClipboardManager");
            }
            ClipData primaryClip = ((ClipboardManager) systemService).getPrimaryClip();
            String str = null;
            if (primaryClip != null) {
                k.c(primaryClip, "clipData");
                str = null;
                if (primaryClip.getItemCount() > 0) {
                    try {
                        str = primaryClip.getItemAt(0).coerceToText(context).toString();
                    } catch (Exception e) {
                        a.c(e, "Failed to get clipboard data. Might be containing data other than text.", new Object[0]);
                        str = null;
                    }
                }
            }
            return str;
        } catch (Exception e2) {
            a.f(e2, "Failed to get clipboard data.", new Object[0]);
            return null;
        }
    }

    /* renamed from: b */
    public static final String m892b(Context context) {
        k.g(context, "context");
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    /* renamed from: c */
    public static final void m891c(Context context, Class<? extends BroadcastReceiver> cls, boolean z) {
        k.g(context, "context");
        k.g(cls, "receiverClass");
        context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls), z ? 1 : 2, 1);
    }
}
