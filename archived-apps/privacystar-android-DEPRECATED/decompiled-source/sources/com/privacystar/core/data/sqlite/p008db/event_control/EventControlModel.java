package com.privacystar.core.data.sqlite.p008db.event_control;
/* renamed from: com.privacystar.core.data.sqlite.db.event_control.EventControlModel */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/event_control/EventControlModel.class */
public class EventControlModel {

    /* renamed from: com.privacystar.core.data.sqlite.db.event_control.EventControlModel$EventControl */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/event_control/EventControlModel$EventControl.class */
    public static class EventControl {
        public int actionCode;
        public int eventCode;
        public String label;
        public String matchValue;
        public int priority;

        public EventControl() {
        }

        public EventControl(int i, String str, String str2, int i2, int i3) {
            this.priority = i;
            this.label = str;
            this.matchValue = str2;
            this.eventCode = i2;
            this.actionCode = i3;
        }
    }
}
