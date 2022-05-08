package com.privacystar.core.data.providers.standard;

import android.database.Cursor;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.LogItemFields;
import com.privacystar.core.util.InformationUtil;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/standard/CallLogDataProvider.class */
public class CallLogDataProvider extends NativeLogDataProvider {
    public static final String CALL_TYPE_INCOMING = "incoming";
    public static final String CALL_TYPE_MISSED = "missed";
    public static final String CALL_TYPE_OUTGOING = "outgoing";
    private String[] options;

    public CallLogDataProvider() {
        this.options = new String[]{CALL_TYPE_INCOMING, CALL_TYPE_OUTGOING, CALL_TYPE_MISSED};
        setup();
    }

    public CallLogDataProvider(String... strArr) {
        this.options = strArr;
        setup();
    }

    @Override // com.privacystar.core.data.providers.standard.NativeLogDataProvider
    String getCallColumn() {
        return "number";
    }

    @Override // com.privacystar.core.data.providers.CursorDataProvider
    public Cursor getDataProvider() {
        return InformationUtil.getCallLog(PSApplication.context(), this.options);
    }

    @Override // com.privacystar.core.data.providers.standard.NativeLogDataProvider
    String getDateColumn() {
        return LogItemFields.DATE;
    }

    @Override // com.privacystar.core.data.providers.standard.NativeLogDataProvider
    String getIdColumn() {
        return "_id";
    }

    @Override // com.privacystar.core.data.providers.standard.NativeLogDataProvider
    String getTypeColumn() {
        return "type";
    }

    @Override // com.privacystar.core.data.providers.standard.NativeLogDataProvider
    boolean isCall() {
        return true;
    }
}
