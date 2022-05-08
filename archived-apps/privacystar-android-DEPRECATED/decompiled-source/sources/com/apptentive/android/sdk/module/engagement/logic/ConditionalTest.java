package com.apptentive.android.sdk.module.engagement.logic;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.util.Util;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/logic/ConditionalTest.class */
public class ConditionalTest {
    public ConditionalOperator operator;
    public Comparable parameter;

    public ConditionalTest(ConditionalOperator conditionalOperator, Object obj) {
        ApptentiveLog.m403v(ApptentiveLogTag.INTERACTIONS, "      + ConditionalTest: %s: %s", conditionalOperator.name(), Util.classToString(obj));
        this.operator = conditionalOperator;
        if (obj == null || (obj instanceof Comparable)) {
            this.parameter = (Comparable) obj;
            return;
        }
        throw new IllegalArgumentException(String.format("Encountered non-Comparable parameter: %s", Util.classToString(obj)));
    }
}
