package com.privacystar.core.data.offender;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/offender/PhoneRecord.class */
public class PhoneRecord {
    public boolean isHotlist;
    public long phoneNumber;
    public PhoneRecordType recordType;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/offender/PhoneRecord$PhoneRecordType.class */
    public enum PhoneRecordType {
        Unknown(0),
        DebtCollector(1),
        Telemarketer(2),
        Scammer(3),
        WhiteListing(4);
        

        /* renamed from: id */
        private int f264id;

        PhoneRecordType(int i) {
            this.f264id = i;
        }

        public static PhoneRecordType getById(int i) {
            switch (i) {
                case 1:
                    return DebtCollector;
                case 2:
                    return Telemarketer;
                case 3:
                    return Scammer;
                case 4:
                    return WhiteListing;
                default:
                    return Unknown;
            }
        }

        public int getId() {
            return this.f264id;
        }
    }
}
