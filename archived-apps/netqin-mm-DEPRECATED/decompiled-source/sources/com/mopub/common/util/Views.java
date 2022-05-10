package com.mopub.common.util;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.logging.MoPubLog;
import p012b.p042i.p054p.C1002u;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Views.class */
public class Views {
    /* renamed from: a */
    public static View m4502a(Context context) {
        if (!(context instanceof Activity)) {
            return null;
        }
        return ((Activity) context).getWindow().getDecorView().findViewById(16908290);
    }

    /* renamed from: a */
    public static View m4501a(View view) {
        if (view == null) {
            return null;
        }
        if (!C1002u.m35197y(view)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Attempting to call View#getRootView() on an unattached View.");
        }
        View rootView = view.getRootView();
        if (rootView == null) {
            return null;
        }
        View findViewById = rootView.findViewById(16908290);
        if (findViewById != null) {
            rootView = findViewById;
        }
        return rootView;
    }

    public static View getTopmostView(Context context, View view) {
        View a = m4502a(context);
        a = m4501a(view);
        if (a == null) {
        }
        return a;
    }

    public static void removeFromParent(View view) {
        if (view != null && view.getParent() != null && (view.getParent() instanceof ViewGroup)) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
    }
}
