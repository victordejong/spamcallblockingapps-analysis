package com.apptentive.android.sdk.module.engagement.interaction.model.common;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.module.engagement.interaction.model.common.Action;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/common/Actions.class */
public class Actions extends JSONArray {
    public Actions(String str) throws JSONException {
        super(str);
    }

    public List<Action> getAsList() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < length(); i++) {
            try {
                Action parseAction = Action.Factory.parseAction(getJSONObject(i).toString());
                if (parseAction != null) {
                    arrayList.add(parseAction);
                }
            } catch (JSONException e) {
                ApptentiveLog.m398w(ApptentiveLogTag.INTERACTIONS, e, "Exception parsing interactions array.", new Object[0]);
            }
        }
        return arrayList;
    }
}
