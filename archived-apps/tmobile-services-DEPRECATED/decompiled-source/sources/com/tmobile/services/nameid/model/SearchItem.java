package com.tmobile.services.nameid.model;

import android.content.Context;
import com.tmobile.services.C1517R;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/SearchItem.class */
public class SearchItem {
    @Nullable
    private CallerDetailsData callerDetailsData;
    @Nullable
    private Contact contact;

    private boolean hasCategory() {
        CallerDetailsData callerDetailsData = this.callerDetailsData;
        return (callerDetailsData == null || callerDetailsData.getCategory() == -1) ? false : true;
    }

    private boolean isPrivate() {
        CallerDetailsData callerDetailsData = this.callerDetailsData;
        return callerDetailsData != null && callerDetailsData.isPrivate();
    }

    @Nullable
    public CallerDetailsData getCallerDetailsData() {
        return this.callerDetailsData;
    }

    @Nullable
    public Contact getContact() {
        return this.contact;
    }

    public String getPrimaryDisplayInfo(Context context) {
        String str;
        if (isScammer()) {
            Contact contact = this.contact;
            str = contact != null ? contact.getName() : context.getString(C1517R.string.category_name_scam_likely);
        } else if (!hasCategory() || this.callerDetailsData == null) {
            Contact contact2 = this.contact;
            if (contact2 != null) {
                str = contact2.getName();
            } else {
                CallerDetailsData callerDetailsData = this.callerDetailsData;
                str = callerDetailsData != null ? callerDetailsData.getDisplayName() : "";
            }
        } else {
            Contact contact3 = this.contact;
            str = (!(contact3 != null && contact3.getName() != null && !this.contact.getName().isEmpty()) || isScammer()) ? this.callerDetailsData.getDisplayCategory(context) : this.contact.getName();
        }
        return str;
    }

    public String getSecondaryDisplayInfo(Context context) {
        CallerDetailsData callerDetailsData;
        String str = "";
        if (isPrivate() && (callerDetailsData = this.callerDetailsData) != null) {
            str = callerDetailsData.getDisplayNumber("");
        } else if (this.contact != null) {
            str = isScammer() ? context.getString(C1517R.string.category_name_scam_likely) : this.contact.getDisplayNumber("");
        } else {
            CallerDetailsData callerDetailsData2 = this.callerDetailsData;
            if (callerDetailsData2 != null) {
                str = callerDetailsData2.getDisplayNumber("");
            }
        }
        return str;
    }

    public boolean hasContact() {
        return this.contact != null;
    }

    public boolean isScammer() {
        CallerDetailsData callerDetailsData = this.callerDetailsData;
        return callerDetailsData != null && callerDetailsData.isScammer();
    }

    public void setCallerDetailsData(@Nullable CallerDetailsData callerDetailsData) {
        this.callerDetailsData = callerDetailsData;
    }

    public void setContact(@Nullable Contact contact) {
        this.contact = contact;
    }

    public boolean shouldHighlight() {
        boolean z;
        Contact contact = this.contact;
        boolean z2 = (contact == null || contact.getName() == null || this.contact.getName().isEmpty()) ? false : true;
        if (hasCategory()) {
            z = true;
            if (z2) {
                if (isScammer()) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }
}
