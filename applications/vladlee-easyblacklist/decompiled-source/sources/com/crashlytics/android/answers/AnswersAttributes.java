package com.crashlytics.android.answers;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/AnswersAttributes.class */
class AnswersAttributes {
    final Map<String, Object> attributes = new ConcurrentHashMap();
    final AnswersEventValidator validator;

    public AnswersAttributes(AnswersEventValidator answersEventValidator) {
        this.validator = answersEventValidator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void put(String str, Number number) {
        if (!this.validator.isNull(str, "key") && !this.validator.isNull(number, AppMeasurementSdk.ConditionalUserProperty.VALUE)) {
            putAttribute(this.validator.limitStringLength(str), number);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void put(String str, String str2) {
        if (!this.validator.isNull(str, "key") && !this.validator.isNull(str2, AppMeasurementSdk.ConditionalUserProperty.VALUE)) {
            putAttribute(this.validator.limitStringLength(str), this.validator.limitStringLength(str2));
        }
    }

    void putAttribute(String str, Object obj) {
        if (!this.validator.isFullMap(this.attributes, str)) {
            this.attributes.put(str, obj);
        }
    }

    public String toString() {
        return new JSONObject(this.attributes).toString();
    }
}
