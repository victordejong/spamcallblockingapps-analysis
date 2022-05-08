package com.privacystar.core.data.sqlite.p008db.offenders;
/* renamed from: com.privacystar.core.data.sqlite.db.offenders.OffendersModel */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/offenders/OffendersModel.class */
public class OffendersModel {

    /* renamed from: com.privacystar.core.data.sqlite.db.offenders.OffendersModel$Offender */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/offenders/OffendersModel$Offender.class */
    public static class Offender {
        public int bitValue;
        public String phoneNumber;

        public Offender() {
        }

        public Offender(String str, int i) {
            this.phoneNumber = str;
            this.bitValue = i;
        }
    }
}
