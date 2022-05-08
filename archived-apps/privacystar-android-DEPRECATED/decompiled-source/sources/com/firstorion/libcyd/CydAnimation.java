package com.firstorion.libcyd;

import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/CydAnimation.class */
public final class CydAnimation extends PositionedElement {
    private static final String ANIMATION_DATA_JSON_FIELD = "animationData";
    private static final String BACKGROUND_COLOR_JSON_FIELD = "backgroundColor";
    static final String JSON_TYPE_NAME = "animation";
    final JSONObject animationData;
    final int backgroundColor;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CydAnimation(JSONObject jSONObject) throws JSONException {
        super(jSONObject);
        this.animationData = jSONObject.getJSONObject(ANIMATION_DATA_JSON_FIELD);
        if (this.animationData == null) {
            throw new NullPointerException(ANIMATION_DATA_JSON_FIELD);
        }
        this.backgroundColor = ColorHelper.tryParseColor(jSONObject.optString(BACKGROUND_COLOR_JSON_FIELD), 0);
    }
}
