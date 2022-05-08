package com.privacystar.core.data.providers.custom;

import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.providers.DataProvider;
import com.privacystar.core.data.providers.LogCursor;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/custom/CallerIDDataProvider.class */
public class CallerIDDataProvider implements DataProvider<CallDetails> {
    @Override // com.privacystar.core.data.providers.DataProvider
    public void close() {
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public int currentPosition() {
        return 0;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.privacystar.core.data.providers.DataProvider
    public CallDetails get(int i) {
        return null;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public LogCursor<CallDetails> getCursor() {
        return null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.privacystar.core.data.providers.DataProvider
    public CallDetails getNext() {
        return null;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public boolean hasNext() {
        return false;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public boolean hasPrev() {
        return false;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public void reset() {
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public int size() {
        return 0;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public void update() {
    }
}
