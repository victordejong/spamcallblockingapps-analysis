package com.privacystar.core.util;

import com.privacystar.core.data.offender.OffenderLookupUtil;
import io.realm.Realm;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/ParsedPhoneNumber.class */
public class ParsedPhoneNumber {
    private static final int CONTACT = 1;
    private static final int NOT_CONTACT = -1;
    private static final int TYPE_UNCHECKED = -1;
    private static final int UNCHECKED = 0;
    private int isContact;
    private final String parsed;
    private int type;
    private final String unparsed;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/ParsedPhoneNumber$ContactStatus.class */
    private @interface ContactStatus {
    }

    public ParsedPhoneNumber(String str) {
        this.type = -1;
        this.isContact = 0;
        this.unparsed = str;
        this.parsed = InformationUtil.normalizeNumber(str);
    }

    public ParsedPhoneNumber(String str, String str2, boolean z) {
        int i = -1;
        this.type = -1;
        this.isContact = 0;
        this.unparsed = str;
        this.parsed = str2;
        this.isContact = z ? 1 : i;
    }

    public String getNumber() {
        return this.parsed;
    }

    public int getOffenderType() {
        if (this.type == -1) {
            Realm defaultInstance = Realm.getDefaultInstance();
            try {
                this.type = OffenderLookupUtil.getIntCallerType(defaultInstance, getNumber());
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
            } finally {
                try {
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.type;
    }

    public String getUnparsedNumber() {
        return this.unparsed;
    }

    public boolean isContact() {
        boolean z = true;
        if (this.isContact == 0) {
            this.isContact = ContactUtil.isNumberInContacts(getNumber()) ? 1 : -1;
        }
        if (this.isContact == -1) {
            z = false;
        }
        return z;
    }

    public String toString() {
        return getNumber();
    }
}
