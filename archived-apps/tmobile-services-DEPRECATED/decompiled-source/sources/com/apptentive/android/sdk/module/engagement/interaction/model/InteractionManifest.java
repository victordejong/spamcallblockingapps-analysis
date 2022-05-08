package com.apptentive.android.sdk.module.engagement.interaction.model;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/InteractionManifest.class */
public class InteractionManifest extends JSONObject {
    public InteractionManifest(String str) throws JSONException {
        super(str);
    }

    public Interactions getInteractions() {
        try {
            if (isNull("interactions")) {
                return null;
            }
            Object obj = get("interactions");
            if (!(obj instanceof JSONArray)) {
                return null;
            }
            Interactions interactions = new Interactions();
            JSONArray jSONArray = (JSONArray) obj;
            for (int i = 0; i < jSONArray.length(); i++) {
                Interaction parseInteraction = Interaction.Factory.parseInteraction(jSONArray.getString(i));
                if (parseInteraction != null) {
                    interactions.put(parseInteraction.getId(), parseInteraction);
                }
            }
            return interactions;
        } catch (JSONException e) {
            ApptentiveLog.m15634w(ApptentiveLogTag.INTERACTIONS, e, "Unable to load Interactions from InteractionManifest.", new Object[0]);
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public Targets getTargets() {
        try {
            if (!isNull("targets")) {
                return new Targets(get("targets").toString());
            }
            return null;
        } catch (JSONException e) {
            ApptentiveLog.m15634w(ApptentiveLogTag.INTERACTIONS, e, "Unable to load Targets from InteractionManifest.", new Object[0]);
            ErrorMetrics.logException(e);
            return null;
        }
    }
}
