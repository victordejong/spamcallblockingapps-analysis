package com.google.firebase.appindexing;

import android.os.Bundle;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.icing.zzgb;
import com.google.firebase.appindexing.builders.IndexableBuilder;
import com.google.firebase.appindexing.internal.Thing;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/Indexable.class */
public interface Indexable {
    public static final int MAX_BYTE_SIZE = 30000;
    public static final int MAX_INDEXABLES_TO_BE_UPDATED_IN_ONE_CALL = 1000;
    public static final int MAX_NESTING_DEPTH = 5;
    public static final int MAX_NUMBER_OF_FIELDS = 20;
    public static final int MAX_REPEATED_SIZE = 100;
    public static final int MAX_STRING_LENGTH = 20000;
    public static final int MAX_URL_LENGTH = 256;

    /* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/Indexable$Builder.class */
    public static class Builder extends IndexableBuilder<Builder> {
        public Builder() {
            this("Thing");
        }

        public Builder(@NonNull String str) {
            super(str);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/Indexable$Metadata.class */
    public interface Metadata {

        /* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/Indexable$Metadata$Builder.class */
        public static final class Builder {
            private boolean zzcd = zzgb.zza.zzdf().zzdd();
            private int score = zzgb.zza.zzdf().getScore();
            private String zzce = zzgb.zza.zzdf().zzde();
            private final Bundle zzaw = new Bundle();

            public final Builder setScope(int i) {
                boolean z = i > 0 && i <= 3;
                StringBuilder sb = new StringBuilder(69);
                sb.append("The scope of this indexable is not valid, scope value is ");
                sb.append(i);
                sb.append(".");
                Preconditions.checkArgument(z, sb.toString());
                IndexableBuilder.zza(this.zzaw, "scope", i);
                return this;
            }

            public final Builder setScore(int i) {
                boolean z = i >= 0;
                StringBuilder sb = new StringBuilder(53);
                sb.append("Negative score values are invalid. Value: ");
                sb.append(i);
                Preconditions.checkArgument(z, sb.toString());
                this.score = i;
                return this;
            }

            public final Builder setWorksOffline(boolean z) {
                this.zzcd = z;
                return this;
            }

            public final Thing.zza zzi() {
                return new Thing.zza(this.zzcd, this.score, this.zzce, this.zzaw);
            }
        }
    }
}
