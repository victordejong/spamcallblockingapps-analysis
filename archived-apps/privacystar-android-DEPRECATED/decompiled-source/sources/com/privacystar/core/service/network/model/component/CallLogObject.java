package com.privacystar.core.service.network.model.component;

import com.google.android.gms.measurement.AppMeasurement;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.data.providers.standard.CallLogDataProvider;
import java.io.Serializable;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/component/CallLogObject.class */
public class CallLogObject implements Serializable {
    @SerializedName("calltype")
    @Expose
    private CallType callType;
    @SerializedName("duration")
    @Expose
    private Long duration;
    @SerializedName("callcomplaintflag")
    @Expose
    private Boolean initiatedComplaint;
    @SerializedName(AppMeasurement.Param.TIMESTAMP)
    @Expose
    private Long timestamp;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/component/CallLogObject$CallType.class */
    public enum CallType {
        MISSED(CallLogDataProvider.CALL_TYPE_MISSED),
        INCOMING(CallLogDataProvider.CALL_TYPE_INCOMING),
        OUTGOING(CallLogDataProvider.CALL_TYPE_OUTGOING),
        VOICEMAIL("voicemail"),
        REJECTED("rejected"),
        BLOCKED("blocked"),
        ANSWERED_EXTERNALLY("answeredExternally"),
        UNKNOWN("unknown");
        
        private String value;

        CallType(String str) {
            this.value = str;
        }

        public static CallType fromLabel(String str) {
            CallType callType;
            Timber.m28v("CallType fromLabel: [%s]", str);
            CallType[] values = values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    callType = null;
                    break;
                }
                CallType callType2 = values[i];
                if (callType2.value.equalsIgnoreCase(str)) {
                    callType = callType2;
                    break;
                }
                i++;
            }
            CallType callType3 = callType;
            if (callType == null) {
                callType3 = UNKNOWN;
            }
            Timber.m28v("CallType return: [%s]", callType3);
            return callType3;
        }

        public String getLabel() {
            return this.value;
        }

        @Override // java.lang.Enum
        public String toString() {
            return getLabel();
        }
    }

    public CallType getCallType() {
        return this.callType;
    }

    public Long getDuration() {
        return this.duration;
    }

    public Boolean getInitiatedComplaint() {
        return this.initiatedComplaint;
    }

    public Long getTimestamp() {
        return this.timestamp;
    }

    public void setCallType(CallType callType) {
        this.callType = callType;
    }

    public void setCallType(String str) {
        this.callType = CallType.fromLabel(str);
    }

    public void setDuration(Long l) {
        this.duration = l;
    }

    public void setInitiatedComplaint(Boolean bool) {
        this.initiatedComplaint = bool;
    }

    public void setTimestamp(Long l) {
        this.timestamp = l;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public CallLogObject withCalltype(CallType callType) {
        this.callType = callType;
        return this;
    }

    public CallLogObject withCalltype(String str) {
        this.callType = CallType.fromLabel(str);
        return this;
    }

    public CallLogObject withDuration(Long l) {
        this.duration = l;
        return this;
    }

    public CallLogObject withInitiatedComplaint(Boolean bool) {
        this.initiatedComplaint = bool;
        return this;
    }

    public CallLogObject withTimestamp(Long l) {
        this.timestamp = l;
        return this;
    }
}
