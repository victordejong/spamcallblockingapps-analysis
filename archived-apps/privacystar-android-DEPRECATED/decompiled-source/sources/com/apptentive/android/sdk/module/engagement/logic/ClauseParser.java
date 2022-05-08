package com.apptentive.android.sdk.module.engagement.logic;

import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.util.Util;
import java.math.BigDecimal;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/logic/ClauseParser.class */
public class ClauseParser {
    private static final String KEY_COMPLEX_TYPE = "_type";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apptentive.android.sdk.module.engagement.logic.ClauseParser$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/logic/ClauseParser$1.class */
    public static /* synthetic */ class C08171 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$engagement$logic$LogicalOperator */
        static final /* synthetic */ int[] f73x27c4c5da = new int[LogicalOperator.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f73x27c4c5da[LogicalOperator.$or.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f73x27c4c5da[LogicalOperator.$and.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f73x27c4c5da[LogicalOperator.$not.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public static Clause parse(String str) throws JSONException {
        ApptentiveLog.m403v(ApptentiveLogTag.INTERACTIONS, "+ Parsing Interaction Criteria.", new Object[0]);
        if (str == null) {
            ApptentiveLog.m411e(ApptentiveLogTag.INTERACTIONS, "+ Interaction Criteria is null.", new Object[0]);
            return null;
        }
        Clause parse = parse(null, new JSONObject(str));
        ApptentiveLog.m403v(ApptentiveLogTag.INTERACTIONS, "+ Finished parsing Interaction Criteria.", new Object[0]);
        return parse;
    }

    public static Clause parse(String str, Object obj) throws JSONException {
        String str2 = str;
        if (str == null) {
            str2 = LogicalOperator.$and.name();
        }
        String trim = str2.trim();
        switch (C08171.f73x27c4c5da[LogicalOperator.parse(trim).ordinal()]) {
            case 1:
                return new LogicalClause(trim, obj);
            case 2:
                return new LogicalClause(trim, obj);
            case 3:
                return new LogicalClause(trim, obj);
            default:
                return new ConditionalClause(trim, obj);
        }
    }

    public static Object parseValue(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Double) {
            return new BigDecimal(((Double) obj).doubleValue());
        }
        if (obj instanceof Long) {
            return new BigDecimal(((Long) obj).longValue());
        }
        if (obj instanceof Integer) {
            return new BigDecimal(((Integer) obj).intValue());
        }
        if (obj instanceof Float) {
            return new BigDecimal(((Float) obj).floatValue());
        }
        if (obj instanceof Short) {
            return new BigDecimal((int) ((Short) obj).shortValue());
        }
        if (obj instanceof String) {
            return ((String) obj).trim();
        }
        if (!(obj instanceof Apptentive.Version) && !(obj instanceof Apptentive.DateTime) && (obj instanceof JSONObject)) {
            JSONObject jSONObject = (JSONObject) obj;
            String optString = jSONObject.optString("_type");
            if (optString != null) {
                try {
                    if (Apptentive.Version.TYPE.equals(optString)) {
                        return new Apptentive.Version(jSONObject);
                    }
                    if (Apptentive.DateTime.TYPE.equals(optString)) {
                        return new Apptentive.DateTime(jSONObject);
                    }
                    throw new RuntimeException(String.format("Error parsing complex parameter with unrecognized name: \"%s\"", optString));
                } catch (JSONException e) {
                    throw new RuntimeException(String.format("Error parsing complex parameter: %s", Util.classToString(obj)), e);
                }
            } else {
                throw new RuntimeException(String.format("Error: Complex type parameter missing \"%s\".", "_type"));
            }
        }
        return obj;
    }
}
