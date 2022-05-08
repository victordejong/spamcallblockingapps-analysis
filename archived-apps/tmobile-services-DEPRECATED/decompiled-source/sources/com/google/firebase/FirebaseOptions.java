package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.util.Strings;
/* loaded from: classes-dex2jar.jar:com/google/firebase/FirebaseOptions.class */
public final class FirebaseOptions {
    private static final String API_KEY_RESOURCE_NAME = "google_api_key";
    private static final String APP_ID_RESOURCE_NAME = "google_app_id";
    private static final String DATABASE_URL_RESOURCE_NAME = "firebase_database_url";
    private static final String GA_TRACKING_ID_RESOURCE_NAME = "ga_trackingId";
    private static final String GCM_SENDER_ID_RESOURCE_NAME = "gcm_defaultSenderId";
    private static final String PROJECT_ID_RESOURCE_NAME = "project_id";
    private static final String STORAGE_BUCKET_RESOURCE_NAME = "google_storage_bucket";
    private final String apiKey;
    private final String applicationId;
    private final String databaseUrl;
    private final String gaTrackingId;
    private final String gcmSenderId;
    private final String projectId;
    private final String storageBucket;

    /* loaded from: classes-dex2jar.jar:com/google/firebase/FirebaseOptions$Builder.class */
    public static final class Builder {
        private String apiKey;
        private String applicationId;
        private String databaseUrl;
        private String gaTrackingId;
        private String gcmSenderId;
        private String projectId;
        private String storageBucket;

        public Builder() {
        }

        public Builder(@NonNull FirebaseOptions firebaseOptions) {
            this.applicationId = firebaseOptions.applicationId;
            this.apiKey = firebaseOptions.apiKey;
            this.databaseUrl = firebaseOptions.databaseUrl;
            this.gaTrackingId = firebaseOptions.gaTrackingId;
            this.gcmSenderId = firebaseOptions.gcmSenderId;
            this.storageBucket = firebaseOptions.storageBucket;
            this.projectId = firebaseOptions.projectId;
        }

        @NonNull
        public FirebaseOptions build() {
            return new FirebaseOptions(this.applicationId, this.apiKey, this.databaseUrl, this.gaTrackingId, this.gcmSenderId, this.storageBucket, this.projectId);
        }

        @NonNull
        public Builder setApiKey(@NonNull String str) {
            Preconditions.m14526h(str, "ApiKey must be set.");
            this.apiKey = str;
            return this;
        }

        @NonNull
        public Builder setApplicationId(@NonNull String str) {
            Preconditions.m14526h(str, "ApplicationId must be set.");
            this.applicationId = str;
            return this;
        }

        @NonNull
        public Builder setDatabaseUrl(@Nullable String str) {
            this.databaseUrl = str;
            return this;
        }

        @NonNull
        @KeepForSdk
        public Builder setGaTrackingId(@Nullable String str) {
            this.gaTrackingId = str;
            return this;
        }

        @NonNull
        public Builder setGcmSenderId(@Nullable String str) {
            this.gcmSenderId = str;
            return this;
        }

        @NonNull
        public Builder setProjectId(@Nullable String str) {
            this.projectId = str;
            return this;
        }

        @NonNull
        public Builder setStorageBucket(@Nullable String str) {
            this.storageBucket = str;
            return this;
        }
    }

    private FirebaseOptions(@NonNull String str, @NonNull String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        Preconditions.m14519o(!Strings.m14309a(str), "ApplicationId must be set.");
        this.applicationId = str;
        this.apiKey = str2;
        this.databaseUrl = str3;
        this.gaTrackingId = str4;
        this.gcmSenderId = str5;
        this.storageBucket = str6;
        this.projectId = str7;
    }

    @Nullable
    public static FirebaseOptions fromResource(@NonNull Context context) {
        StringResourceValueReader stringResourceValueReader = new StringResourceValueReader(context);
        String a = stringResourceValueReader.m14502a(APP_ID_RESOURCE_NAME);
        if (TextUtils.isEmpty(a)) {
            return null;
        }
        return new FirebaseOptions(a, stringResourceValueReader.m14502a(API_KEY_RESOURCE_NAME), stringResourceValueReader.m14502a(DATABASE_URL_RESOURCE_NAME), stringResourceValueReader.m14502a(GA_TRACKING_ID_RESOURCE_NAME), stringResourceValueReader.m14502a(GCM_SENDER_ID_RESOURCE_NAME), stringResourceValueReader.m14502a(STORAGE_BUCKET_RESOURCE_NAME), stringResourceValueReader.m14502a(PROJECT_ID_RESOURCE_NAME));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FirebaseOptions)) {
            return false;
        }
        FirebaseOptions firebaseOptions = (FirebaseOptions) obj;
        boolean z = false;
        if (Objects.m14537a(this.applicationId, firebaseOptions.applicationId)) {
            z = false;
            if (Objects.m14537a(this.apiKey, firebaseOptions.apiKey)) {
                z = false;
                if (Objects.m14537a(this.databaseUrl, firebaseOptions.databaseUrl)) {
                    z = false;
                    if (Objects.m14537a(this.gaTrackingId, firebaseOptions.gaTrackingId)) {
                        z = false;
                        if (Objects.m14537a(this.gcmSenderId, firebaseOptions.gcmSenderId)) {
                            z = false;
                            if (Objects.m14537a(this.storageBucket, firebaseOptions.storageBucket)) {
                                z = false;
                                if (Objects.m14537a(this.projectId, firebaseOptions.projectId)) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    @NonNull
    public String getApiKey() {
        return this.apiKey;
    }

    @NonNull
    public String getApplicationId() {
        return this.applicationId;
    }

    @Nullable
    public String getDatabaseUrl() {
        return this.databaseUrl;
    }

    @Nullable
    @KeepForSdk
    public String getGaTrackingId() {
        return this.gaTrackingId;
    }

    @Nullable
    public String getGcmSenderId() {
        return this.gcmSenderId;
    }

    @Nullable
    public String getProjectId() {
        return this.projectId;
    }

    @Nullable
    public String getStorageBucket() {
        return this.storageBucket;
    }

    public int hashCode() {
        return Objects.m14536b(this.applicationId, this.apiKey, this.databaseUrl, this.gaTrackingId, this.gcmSenderId, this.storageBucket, this.projectId);
    }

    public String toString() {
        Objects.ToStringHelper c = Objects.m14535c(this);
        c.m14534a("applicationId", this.applicationId);
        c.m14534a("apiKey", this.apiKey);
        c.m14534a("databaseUrl", this.databaseUrl);
        c.m14534a("gcmSenderId", this.gcmSenderId);
        c.m14534a("storageBucket", this.storageBucket);
        c.m14534a("projectId", this.projectId);
        return c.toString();
    }
}
