package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.call.caller.CallerHelper;
import io.realm.Realm;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/OffenderRealm$$Lambda$0.class */
final /* synthetic */ class OffenderRealm$$Lambda$0 implements Realm.Transaction {
    static final Realm.Transaction $instance = new OffenderRealm$$Lambda$0();

    private OffenderRealm$$Lambda$0() {
    }

    @Override // io.realm.Realm.Transaction
    public void execute(Realm realm) {
        CallerHelper.updateAllCallerOffenderCache(realm);
    }
}
