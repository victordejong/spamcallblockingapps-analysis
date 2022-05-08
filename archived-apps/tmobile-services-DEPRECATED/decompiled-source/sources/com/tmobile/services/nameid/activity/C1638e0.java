package com.tmobile.services.nameid.activity;

import io.realm.RealmChangeListener;
import io.realm.RealmResults;
/* renamed from: com.tmobile.services.nameid.activity.e0 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/e0.class */
public final /* synthetic */ class C1638e0 implements RealmChangeListener {

    /* renamed from: a */
    public final /* synthetic */ CallDetailsPresenter f13177a;

    public /* synthetic */ C1638e0(CallDetailsPresenter callDetailsPresenter) {
        this.f13177a = callDetailsPresenter;
    }

    @Override // io.realm.RealmChangeListener
    /* renamed from: a */
    public final void mo2506a(Object obj) {
        this.f13177a.m7022D((RealmResults) obj);
    }
}
