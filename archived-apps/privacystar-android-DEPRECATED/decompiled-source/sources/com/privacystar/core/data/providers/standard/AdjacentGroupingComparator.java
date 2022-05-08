package com.privacystar.core.data.providers.standard;

import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.providers.Grouper;
import com.privacystar.core.util.Text;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/standard/AdjacentGroupingComparator.class */
public class AdjacentGroupingComparator extends Grouper<CallDetails> {
    public int compare(CallDetails callDetails, CallDetails callDetails2) {
        if (callDetails == null || callDetails2 == null) {
            return -1;
        }
        if (Text.equalsIgnoreCase(callDetails.getCaller().getNumber(), callDetails2.getCaller().getNumber())) {
            return 0;
        }
        return (!callDetails.getCaller().isUnknownNumber() || !callDetails2.getCaller().isUnknownNumber()) ? 1 : 0;
    }

    public void merge(CallDetails callDetails, CallDetails callDetails2) {
        callDetails.getCallEvents().addAll(callDetails2.getCallEvents());
        callDetails.setUnknownGrouped(true);
    }
}
