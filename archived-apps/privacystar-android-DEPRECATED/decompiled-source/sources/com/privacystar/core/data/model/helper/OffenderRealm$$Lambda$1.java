package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.Offender;
import io.realm.Realm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/OffenderRealm$$Lambda$1.class */
public final /* synthetic */ class OffenderRealm$$Lambda$1 implements Realm.Transaction {
    static final Realm.Transaction $instance = new OffenderRealm$$Lambda$1();

    private OffenderRealm$$Lambda$1() {
    }

    @Override // io.realm.Realm.Transaction
    public void execute(Realm realm) {
        realm.delete(Offender.class);
    }
}
