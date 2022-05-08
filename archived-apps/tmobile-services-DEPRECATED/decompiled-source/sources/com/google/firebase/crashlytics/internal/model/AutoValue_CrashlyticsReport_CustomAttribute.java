package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_CustomAttribute.class */
final class AutoValue_CrashlyticsReport_CustomAttribute extends CrashlyticsReport.CustomAttribute {
    private final String key;
    private final String value;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_CustomAttribute$Builder.class */
    public static final class Builder extends CrashlyticsReport.CustomAttribute.Builder {
        private String key;
        private String value;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.CustomAttribute.Builder
        public CrashlyticsReport.CustomAttribute build() {
            String str = "";
            if (this.key == null) {
                str = " key";
            }
            String str2 = str;
            if (this.value == null) {
                str2 = str + " value";
            }
            if (str2.isEmpty()) {
                return new AutoValue_CrashlyticsReport_CustomAttribute(this.key, this.value);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.CustomAttribute.Builder
        public CrashlyticsReport.CustomAttribute.Builder setKey(String str) {
            if (str != null) {
                this.key = str;
                return this;
            }
            throw new NullPointerException("Null key");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.CustomAttribute.Builder
        public CrashlyticsReport.CustomAttribute.Builder setValue(String str) {
            if (str != null) {
                this.value = str;
                return this;
            }
            throw new NullPointerException("Null value");
        }
    }

    private AutoValue_CrashlyticsReport_CustomAttribute(String str, String str2) {
        this.key = str;
        this.value = str2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.CustomAttribute)) {
            return false;
        }
        CrashlyticsReport.CustomAttribute customAttribute = (CrashlyticsReport.CustomAttribute) obj;
        if (!this.key.equals(customAttribute.getKey()) || !this.value.equals(customAttribute.getValue())) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.CustomAttribute
    @NonNull
    public String getKey() {
        return this.key;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.CustomAttribute
    @NonNull
    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        return ((this.key.hashCode() ^ 1000003) * 1000003) ^ this.value.hashCode();
    }

    public String toString() {
        return "CustomAttribute{key=" + this.key + ", value=" + this.value + "}";
    }
}
