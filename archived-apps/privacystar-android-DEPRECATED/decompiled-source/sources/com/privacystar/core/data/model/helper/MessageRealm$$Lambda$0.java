package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.Message;
import io.realm.Realm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/MessageRealm$$Lambda$0.class */
public final /* synthetic */ class MessageRealm$$Lambda$0 implements Realm.Transaction {
    static final Realm.Transaction $instance = new MessageRealm$$Lambda$0();

    private MessageRealm$$Lambda$0() {
    }

    @Override // io.realm.Realm.Transaction
    public void execute(Realm realm) {
        realm.delete(Message.class);
    }
}
