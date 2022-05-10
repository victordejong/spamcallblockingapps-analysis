package com.integralads.avid.library.mopub.session.internal;

import android.view.View;
import com.integralads.avid.library.mopub.weakreference.AvidView;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/ObstructionsWhiteList.class */
public class ObstructionsWhiteList {

    /* renamed from: a */
    public final ArrayList<AvidView> f33073a = new ArrayList<>();

    public void add(View view) {
        this.f33073a.add(new AvidView(view));
    }

    public boolean contains(View view) {
        Iterator<AvidView> it = this.f33073a.iterator();
        while (it.hasNext()) {
            if (it.next().contains(view)) {
                return true;
            }
        }
        return false;
    }

    public ArrayList<AvidView> getWhiteList() {
        return this.f33073a;
    }
}
