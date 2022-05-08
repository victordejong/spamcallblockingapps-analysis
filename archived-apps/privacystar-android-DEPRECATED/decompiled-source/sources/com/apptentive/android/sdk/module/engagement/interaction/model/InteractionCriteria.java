package com.apptentive.android.sdk.module.engagement.interaction.model;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.module.engagement.logic.Clause;
import com.apptentive.android.sdk.module.engagement.logic.ClauseParser;
import com.apptentive.android.sdk.module.engagement.logic.FieldManager;
import com.apptentive.android.sdk.util.IndentBufferedPrinter;
import com.apptentive.android.sdk.util.IndentPrinter;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/InteractionCriteria.class */
public class InteractionCriteria {
    private String json;

    public InteractionCriteria(String str) throws JSONException {
        this.json = str;
    }

    public boolean isMet(FieldManager fieldManager) {
        return isMet(fieldManager, true);
    }

    public boolean isMet(FieldManager fieldManager, boolean z) {
        boolean z2;
        try {
            Clause parse = ClauseParser.parse(this.json);
            if (parse != null) {
                IndentPrinter indentBufferedPrinter = z ? new IndentBufferedPrinter() : IndentPrinter.NULL;
                boolean evaluate = parse.evaluate(fieldManager, indentBufferedPrinter);
                z2 = evaluate;
                if (z) {
                    ApptentiveLog.m407i(ApptentiveLogTag.INTERACTIONS, "Criteria evaluated => %b", Boolean.valueOf(evaluate));
                    ApptentiveLog.m415d(ApptentiveLogTag.INTERACTIONS, "Criteria evaluation details:\n%s", indentBufferedPrinter);
                    z2 = evaluate;
                }
            } else {
                if (z) {
                    ApptentiveLog.m407i(ApptentiveLogTag.INTERACTIONS, "Criteria could not be evaluated: no clause found", new Object[0]);
                }
                z2 = false;
            }
            return z2;
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.INTERACTIONS, e, "Exception while evaluating interaction criteria", new Object[0]);
            return false;
        }
    }
}
