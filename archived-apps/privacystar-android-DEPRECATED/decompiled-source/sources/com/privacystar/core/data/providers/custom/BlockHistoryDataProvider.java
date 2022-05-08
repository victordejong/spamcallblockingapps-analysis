package com.privacystar.core.data.providers.custom;

import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.call_details.CallEvent;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.model.BlockHistory;
import com.privacystar.core.data.model.helper.BlockHistoryRealm;
import com.privacystar.core.data.providers.DataProvider;
import com.privacystar.core.data.providers.LogCursor;
import io.realm.Realm;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/custom/BlockHistoryDataProvider.class */
public class BlockHistoryDataProvider implements DataProvider<CallDetails> {
    private static final Object LOCK = new Object();
    private List<BlockHistory> histories;
    private List<CallDetails> callDetailCache = new ArrayList();
    private int position = -1;

    public BlockHistoryDataProvider() {
        refreshHistoryCache();
    }

    private CallDetails createDetailsFromHistory(BlockHistory blockHistory) {
        Caller caller = CallerFactory.getInstance().getCaller(blockHistory.getNumber());
        CallEvent callEvent = new CallEvent();
        callEvent.setDate(blockHistory.getTime().getTime());
        callEvent.setBlocked(true);
        return new CallDetails(caller, callEvent);
    }

    private List<BlockHistory> getHistory() {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            List<BlockHistory> history = getHistory(defaultInstance);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            return history;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    private List<BlockHistory> getHistory(Realm realm) {
        if (this.histories == null || this.histories.size() != BlockHistoryRealm.getBlockCount(realm)) {
            refreshHistoryCache(realm);
        }
        return this.histories;
    }

    private void refreshHistoryCache() {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            refreshHistoryCache(defaultInstance);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    private void refreshHistoryCache(Realm realm) {
        this.histories = BlockHistoryRealm.getBlockHistoryCopy(realm);
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public void close() {
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public int currentPosition() {
        return this.position;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.privacystar.core.data.providers.DataProvider
    public CallDetails get(int i) {
        if (i >= size()) {
            return null;
        }
        if (i < this.callDetailCache.size()) {
            return this.callDetailCache.get(i);
        }
        while (i > this.position) {
            getNext();
        }
        return getNext();
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public LogCursor<CallDetails> getCursor() {
        return new LogCursor<>(this);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.privacystar.core.data.providers.DataProvider
    public CallDetails getNext() {
        synchronized (this) {
            synchronized (LOCK) {
                if (hasNext()) {
                    this.position++;
                    if (this.position >= this.callDetailCache.size() || this.position < 0) {
                        List<BlockHistory> history = getHistory();
                        if (history != null && this.position < history.size()) {
                            CallDetails createDetailsFromHistory = createDetailsFromHistory(history.get(this.position));
                            this.callDetailCache.add(createDetailsFromHistory);
                            return createDetailsFromHistory;
                        }
                    } else {
                        return this.callDetailCache.get(this.position);
                    }
                }
                return null;
            }
        }
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public boolean hasNext() {
        boolean z = true;
        if (this.position + 1 >= getHistory().size()) {
            z = false;
        }
        return z;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public boolean hasPrev() {
        return this.position > 0;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public void reset() {
        synchronized (LOCK) {
            this.position = -1;
        }
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public int size() {
        return getHistory().size();
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public void update() {
        synchronized (LOCK) {
            refreshHistoryCache();
            this.position = -1;
            this.callDetailCache.clear();
        }
    }
}
