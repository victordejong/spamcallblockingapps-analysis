package com.integralads.avid.library.mopub.activity;

import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.Window;
import com.integralads.avid.library.mopub.weakreference.AvidActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/activity/AvidActivityStack.class */
public class AvidActivityStack {

    /* renamed from: b */
    public static AvidActivityStack f33039b = new AvidActivityStack();

    /* renamed from: a */
    public final ArrayList<AvidActivity> f33040a = new ArrayList<>();

    public static AvidActivityStack getInstance() {
        return f33039b;
    }

    /* renamed from: a */
    public final View m5399a(AvidActivity avidActivity) {
        Activity activity = avidActivity.get();
        if (activity == null) {
            return null;
        }
        Window window = activity.getWindow();
        View view = null;
        if (window != null) {
            if (!activity.hasWindowFocus()) {
                view = null;
            } else {
                View decorView = window.getDecorView();
                view = null;
                if (decorView != null) {
                    view = null;
                    if (decorView.isShown()) {
                        view = decorView;
                    }
                }
            }
        }
        return view;
    }

    /* renamed from: a */
    public AvidActivity m5400a(Activity activity) {
        Iterator<AvidActivity> it = this.f33040a.iterator();
        while (it.hasNext()) {
            AvidActivity next = it.next();
            if (next.contains(activity)) {
                return next;
            }
        }
        return null;
    }

    public void addActivity(Activity activity) {
        if (m5400a(activity) == null) {
            this.f33040a.add(new AvidActivity(activity));
        }
    }

    /* renamed from: b */
    public boolean m5398b(AvidActivity avidActivity) {
        Activity activity = avidActivity.get();
        if (activity == null) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 17 ? activity.isDestroyed() : activity.isFinishing();
    }

    public void cleanup() {
        this.f33040a.clear();
    }

    public List<View> getRootViews() {
        ArrayList arrayList = new ArrayList();
        Iterator<AvidActivity> it = this.f33040a.iterator();
        View view = null;
        while (it.hasNext()) {
            AvidActivity next = it.next();
            if (m5398b(next)) {
                it.remove();
            } else {
                View a = m5399a(next);
                if (a != null) {
                    view = a;
                }
            }
        }
        if (view != null) {
            arrayList.add(view);
        }
        return arrayList;
    }
}
