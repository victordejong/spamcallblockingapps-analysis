package com.google.protobuf;

import java.util.Collections;
import java.util.List;
import p131c.p161d.p367h.AbstractC6354n0;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/UninitializedMessageException.class */
public class UninitializedMessageException extends RuntimeException {
    public static final long serialVersionUID = -7466929953374883507L;
    public final List<String> missingFields;

    public UninitializedMessageException(AbstractC6354n0 n0Var) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.missingFields = null;
    }

    public UninitializedMessageException(List<String> list) {
        super(buildDescription(list));
        this.missingFields = list;
    }

    public static String buildDescription(List<String> list) {
        StringBuilder sb = new StringBuilder("Message missing required fields: ");
        boolean z = true;
        for (String str : list) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(str);
        }
        return sb.toString();
    }

    public InvalidProtocolBufferException asInvalidProtocolBufferException() {
        return new InvalidProtocolBufferException(getMessage());
    }

    public List<String> getMissingFields() {
        return Collections.unmodifiableList(this.missingFields);
    }
}
