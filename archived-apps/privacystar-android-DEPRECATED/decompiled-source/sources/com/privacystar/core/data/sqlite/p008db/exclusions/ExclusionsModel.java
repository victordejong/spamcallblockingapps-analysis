package com.privacystar.core.data.sqlite.p008db.exclusions;

import com.privacystar.core.util.Text;
/* renamed from: com.privacystar.core.data.sqlite.db.exclusions.ExclusionsModel */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/exclusions/ExclusionsModel.class */
public class ExclusionsModel {

    /* renamed from: com.privacystar.core.data.sqlite.db.exclusions.ExclusionsModel$Exclusions */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/exclusions/ExclusionsModel$Exclusions.class */
    public static class Exclusions {
        public String make;
        public String model;

        /* renamed from: os */
        public String f274os;

        public Exclusions() {
        }

        public Exclusions(String str, String str2, String str3) {
            this.make = str;
            this.model = str2;
            this.f274os = str3;
        }

        private boolean stringPatternMatches(String str, String str2) {
            return Text.isBlank(str) || str.equalsIgnoreCase(str2);
        }

        public boolean matchesPattern(Exclusions exclusions) {
            return stringPatternMatches(exclusions.make, this.make) && stringPatternMatches(exclusions.model, this.model) && stringPatternMatches(exclusions.f274os, this.f274os);
        }
    }
}
