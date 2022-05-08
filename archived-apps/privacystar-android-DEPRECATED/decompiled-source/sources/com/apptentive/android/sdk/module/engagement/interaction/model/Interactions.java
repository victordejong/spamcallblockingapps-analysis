package com.apptentive.android.sdk.module.engagement.interaction.model;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/Interactions.class */
public class Interactions extends JSONObject {
    public static final String KEY_NAME = "interactions";

    public Interactions() throws JSONException {
    }

    public Interactions(String str) throws JSONException {
        super(str);
    }

    private boolean isLegacyInteractions() {
        return !isNull("interactions");
    }

    public Interaction getInteraction(String str) {
        try {
            if (!isNull(str)) {
                return Interaction.Factory.parseInteraction(getJSONObject(str).toString());
            }
            return null;
        } catch (JSONException e) {
            ApptentiveLog.m398w(ApptentiveLogTag.INTERACTIONS, e, "Exception parsing interactions array.", new Object[0]);
            return null;
        }
    }

    public List<Interaction> getInteractionList() {
        Interaction parseInteraction;
        ArrayList arrayList = new ArrayList();
        Iterator<String> keys = keys();
        while (keys.hasNext()) {
            JSONObject optJSONObject = optJSONObject(keys.next());
            if (!(optJSONObject == null || (parseInteraction = Interaction.Factory.parseInteraction(optJSONObject.toString())) == null)) {
                arrayList.add(parseInteraction);
            }
        }
        return arrayList;
    }
}
