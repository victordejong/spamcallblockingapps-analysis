package com.apptentive.android.sdk.storage;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/EventData.class */
public class EventData implements Saveable {
    private static final long serialVersionUID = 1;
    private Map<String, EventRecord> events = new HashMap();
    private Map<String, EventRecord> interactions = new HashMap();
    private transient DataChangedListener listener;

    public void clear() {
        synchronized (this) {
            this.events.clear();
            this.interactions.clear();
            notifyDataChanged();
        }
    }

    public Long getEventCountForVersionCode(String str, Integer num) {
        synchronized (this) {
            EventRecord eventRecord = this.events.get(str);
            if (eventRecord == null) {
                return 0L;
            }
            return eventRecord.getCountForVersionCode(num);
        }
    }

    public Long getEventCountForVersionName(String str, String str2) {
        synchronized (this) {
            EventRecord eventRecord = this.events.get(str);
            if (eventRecord == null) {
                return 0L;
            }
            return eventRecord.getCountForVersionName(str2);
        }
    }

    public Long getEventCountTotal(String str) {
        synchronized (this) {
            EventRecord eventRecord = this.events.get(str);
            if (eventRecord == null) {
                return 0L;
            }
            return Long.valueOf(eventRecord.getTotal());
        }
    }

    public Long getInteractionCountForVersionCode(String str, Integer num) {
        synchronized (this) {
            EventRecord eventRecord = this.interactions.get(str);
            if (eventRecord == null) {
                return 0L;
            }
            return eventRecord.getCountForVersionCode(num);
        }
    }

    public Long getInteractionCountForVersionName(String str, String str2) {
        synchronized (this) {
            EventRecord eventRecord = this.interactions.get(str);
            if (eventRecord == null) {
                return 0L;
            }
            return eventRecord.getCountForVersionName(str2);
        }
    }

    public Long getInteractionCountTotal(String str) {
        synchronized (this) {
            EventRecord eventRecord = this.interactions.get(str);
            if (eventRecord == null) {
                return 0L;
            }
            return Long.valueOf(eventRecord.getTotal());
        }
    }

    public Double getTimeOfLastEventInvocation(String str) {
        synchronized (this) {
            EventRecord eventRecord = this.events.get(str);
            if (eventRecord == null) {
                return null;
            }
            return Double.valueOf(eventRecord.getLast());
        }
    }

    public Double getTimeOfLastInteractionInvocation(String str) {
        synchronized (this) {
            EventRecord eventRecord = this.interactions.get(str);
            if (eventRecord == null) {
                return null;
            }
            return Double.valueOf(eventRecord.getLast());
        }
    }

    @Override // com.apptentive.android.sdk.storage.Saveable
    public void notifyDataChanged() {
        if (this.listener != null) {
            this.listener.onDataChanged();
        }
    }

    @Override // com.apptentive.android.sdk.storage.Saveable
    public void setDataChangedListener(DataChangedListener dataChangedListener) {
        this.listener = dataChangedListener;
    }

    public void setEvents(Map<String, EventRecord> map) {
        synchronized (this) {
            this.events = map;
            notifyDataChanged();
        }
    }

    public void setInteractions(Map<String, EventRecord> map) {
        synchronized (this) {
            this.interactions = map;
            notifyDataChanged();
        }
    }

    public void storeEventForCurrentAppVersion(double d, int i, String str, String str2) {
        synchronized (this) {
            EventRecord eventRecord = this.events.get(str2);
            EventRecord eventRecord2 = eventRecord;
            if (eventRecord == null) {
                eventRecord2 = new EventRecord();
                this.events.put(str2, eventRecord2);
            }
            eventRecord2.update(d, str, Integer.valueOf(i));
            notifyDataChanged();
        }
    }

    public void storeInteractionForCurrentAppVersion(double d, int i, String str, String str2) {
        synchronized (this) {
            EventRecord eventRecord = this.interactions.get(str2);
            EventRecord eventRecord2 = eventRecord;
            if (eventRecord == null) {
                eventRecord2 = new EventRecord();
                this.interactions.put(str2, eventRecord2);
            }
            eventRecord2.update(d, str, Integer.valueOf(i));
            notifyDataChanged();
        }
    }

    public String toString() {
        String sb;
        synchronized (this) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Events: ");
            for (String str : this.events.keySet()) {
                sb2.append("\n\t");
                sb2.append(str);
                sb2.append(": ");
                sb2.append(this.events.get(str).toString());
            }
            sb2.append("\nInteractions: ");
            for (String str2 : this.interactions.keySet()) {
                sb2.append("\n\t");
                sb2.append(str2);
                sb2.append(": ");
                sb2.append(this.interactions.get(str2).toString());
            }
            sb = sb2.toString();
        }
        return sb;
    }
}
