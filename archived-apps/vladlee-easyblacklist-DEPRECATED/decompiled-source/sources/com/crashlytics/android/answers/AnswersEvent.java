package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersEvent;
import java.util.Map;
import p000a.p001a.p002a.p003a.C0137d;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/AnswersEvent.class */
public abstract class AnswersEvent<T extends AnswersEvent> {
    public static final int MAX_NUM_ATTRIBUTES = 20;
    public static final int MAX_STRING_LENGTH = 100;
    final AnswersEventValidator validator = new AnswersEventValidator(20, 100, C0137d.m10154d());
    final AnswersAttributes customAttributes = new AnswersAttributes(this.validator);

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Object> getCustomAttributes() {
        return this.customAttributes.attributes;
    }

    public T putCustomAttribute(String str, Number number) {
        this.customAttributes.put(str, number);
        return this;
    }

    public T putCustomAttribute(String str, String str2) {
        this.customAttributes.put(str, str2);
        return this;
    }
}
