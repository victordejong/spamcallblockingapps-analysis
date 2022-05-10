package com.integralads.avid.library.mopub.walking;

import android.view.View;
import android.view.ViewParent;
import com.integralads.avid.library.mopub.registration.AvidAdSessionRegistry;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession;
import com.integralads.avid.library.mopub.utils.AvidViewUtil;
import com.integralads.avid.library.mopub.weakreference.AvidView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/walking/AvidAdViewCache.class */
public class AvidAdViewCache {

    /* renamed from: a */
    public final AvidAdSessionRegistry f33099a;

    /* renamed from: b */
    public final HashMap<View, String> f33100b = new HashMap<>();

    /* renamed from: c */
    public final HashMap<View, ArrayList<String>> f33101c = new HashMap<>();

    /* renamed from: d */
    public final HashSet<View> f33102d = new HashSet<>();

    /* renamed from: e */
    public final HashSet<String> f33103e = new HashSet<>();

    /* renamed from: f */
    public final HashSet<String> f33104f = new HashSet<>();

    /* renamed from: g */
    public boolean f33105g;

    public AvidAdViewCache(AvidAdSessionRegistry avidAdSessionRegistry) {
        this.f33099a = avidAdSessionRegistry;
    }

    /* renamed from: a */
    public final void m5360a(View view, InternalAvidAdSession internalAvidAdSession) {
        ArrayList<String> arrayList = this.f33101c.get(view);
        ArrayList<String> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList<>();
            this.f33101c.put(view, arrayList2);
        }
        arrayList2.add(internalAvidAdSession.getAvidAdSessionId());
    }

    /* renamed from: a */
    public final void m5359a(InternalAvidAdSession internalAvidAdSession) {
        Iterator<AvidView> it = internalAvidAdSession.getObstructionsWhiteList().getWhiteList().iterator();
        while (it.hasNext()) {
            AvidView next = it.next();
            if (!next.isEmpty()) {
                m5360a((View) next.get(), internalAvidAdSession);
            }
        }
    }

    /* renamed from: a */
    public final boolean m5361a(View view) {
        if (!view.hasWindowFocus()) {
            return false;
        }
        HashSet hashSet = new HashSet();
        while (view != null) {
            if (!AvidViewUtil.isViewVisible(view)) {
                return false;
            }
            hashSet.add(view);
            ViewParent parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        this.f33102d.addAll(hashSet);
        return true;
    }

    public void cleanup() {
        this.f33100b.clear();
        this.f33101c.clear();
        this.f33102d.clear();
        this.f33103e.clear();
        this.f33104f.clear();
        this.f33105g = false;
    }

    public ArrayList<String> getFriendlySessionIds(View view) {
        if (this.f33101c.size() == 0) {
            return null;
        }
        ArrayList<String> arrayList = this.f33101c.get(view);
        if (arrayList != null) {
            this.f33101c.remove(view);
            Collections.sort(arrayList);
        }
        return arrayList;
    }

    public HashSet<String> getHiddenSessionIds() {
        return this.f33104f;
    }

    public String getSessionId(View view) {
        if (this.f33100b.size() == 0) {
            return null;
        }
        String str = this.f33100b.get(view);
        if (str != null) {
            this.f33100b.remove(view);
        }
        return str;
    }

    public ViewType getViewType(View view) {
        if (this.f33102d.contains(view)) {
            return ViewType.ROOT_VIEW;
        }
        return this.f33105g ? ViewType.OBSTRUCTION_VIEW : ViewType.UNDERLYING_VIEW;
    }

    public HashSet<String> getVisibleSessionIds() {
        return this.f33103e;
    }

    public void onAdViewProcessed() {
        this.f33105g = true;
    }

    public void prepare() {
        for (InternalAvidAdSession internalAvidAdSession : this.f33099a.getInternalAvidAdSessions()) {
            View view = internalAvidAdSession.getView();
            if (internalAvidAdSession.isActive() && view != null) {
                if (m5361a(view)) {
                    this.f33103e.add(internalAvidAdSession.getAvidAdSessionId());
                    this.f33100b.put(view, internalAvidAdSession.getAvidAdSessionId());
                    m5359a(internalAvidAdSession);
                } else {
                    this.f33104f.add(internalAvidAdSession.getAvidAdSessionId());
                }
            }
        }
    }
}
