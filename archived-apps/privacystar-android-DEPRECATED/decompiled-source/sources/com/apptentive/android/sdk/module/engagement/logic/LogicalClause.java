package com.apptentive.android.sdk.module.engagement.logic;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.util.IndentPrinter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/logic/LogicalClause.class */
public class LogicalClause implements Clause {
    private final List<Clause> children = new ArrayList();
    private final LogicalOperator operator;
    private final String operatorName;

    /* JADX INFO: Access modifiers changed from: protected */
    public LogicalClause(String str, Object obj) throws JSONException {
        this.operatorName = str.trim();
        this.operator = LogicalOperator.parse(this.operatorName);
        ApptentiveLog.m403v(ApptentiveLogTag.INTERACTIONS, "  + LogicalClause of type \"%s\"", this.operatorName);
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            for (int i = 0; i < jSONArray.length(); i++) {
                this.children.add(ClauseParser.parse(null, (JSONObject) jSONArray.get(i)));
            }
        } else if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (!jSONObject.isNull(next)) {
                    this.children.add(ClauseParser.parse(next, jSONObject.get(next)));
                } else {
                    this.children.add(ClauseParser.parse(next, null));
                }
            }
        } else {
            ApptentiveLog.m399w(ApptentiveLogTag.INTERACTIONS, "Unrecognized LogicalClause: %s", obj.toString());
        }
    }

    private boolean evaluateOperator(FieldManager fieldManager, IndentPrinter indentPrinter) {
        if (this.operator == LogicalOperator.$and) {
            for (Clause clause : this.children) {
                if (!clause.evaluate(fieldManager, indentPrinter)) {
                    return false;
                }
            }
            return true;
        } else if (this.operator == LogicalOperator.$or) {
            for (Clause clause2 : this.children) {
                if (clause2.evaluate(fieldManager, indentPrinter)) {
                    return true;
                }
            }
            return false;
        } else if (this.operator != LogicalOperator.$not) {
            ApptentiveLog.m403v(ApptentiveLogTag.INTERACTIONS, "Unsupported operation: \"%s\" => false", this.operatorName);
            ApptentiveLog.m403v(ApptentiveLogTag.INTERACTIONS, "  - </%s>", this.operator.name());
            return false;
        } else if (this.children.size() == 1) {
            return !this.children.get(0).evaluate(fieldManager, indentPrinter);
        } else {
            throw new IllegalArgumentException("$not condition must have exactly one child, has ." + this.children.size());
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.logic.Clause
    public boolean evaluate(FieldManager fieldManager, IndentPrinter indentPrinter) {
        boolean z = !LogicalOperator.$and.equals(this.operator) || this.children.size() > 1;
        if (z) {
            indentPrinter.print("- %s:", this.operator.name());
            indentPrinter.startBlock();
        }
        try {
            boolean evaluateOperator = evaluateOperator(fieldManager, indentPrinter);
            if (z) {
                indentPrinter.endBlock();
            }
            return evaluateOperator;
        } catch (Throwable th) {
            if (z) {
                indentPrinter.endBlock();
            }
            throw th;
        }
    }
}
