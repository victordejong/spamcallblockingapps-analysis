package com.google.logging.type;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/logging/type/LogSeverity.class */
public enum LogSeverity implements C6381y.AbstractC6384c {
    DEFAULT(0),
    DEBUG(100),
    INFO(200),
    NOTICE(NOTICE_VALUE),
    WARNING(WARNING_VALUE),
    ERROR(500),
    CRITICAL(CRITICAL_VALUE),
    ALERT(ALERT_VALUE),
    EMERGENCY(EMERGENCY_VALUE),
    UNRECOGNIZED(-1);
    
    public static final int ALERT_VALUE = 700;
    public static final int CRITICAL_VALUE = 600;
    public static final int DEBUG_VALUE = 100;
    public static final int DEFAULT_VALUE = 0;
    public static final int EMERGENCY_VALUE = 800;
    public static final int ERROR_VALUE = 500;
    public static final int INFO_VALUE = 200;
    public static final int NOTICE_VALUE = 300;
    public static final int WARNING_VALUE = 400;
    public static final C6381y.AbstractC6385d<LogSeverity> internalValueMap = new C6381y.AbstractC6385d<LogSeverity>() { // from class: com.google.logging.type.LogSeverity.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public LogSeverity mo6797a(int i) {
            return LogSeverity.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.logging.type.LogSeverity$b */
    /* loaded from: classes2-dex2jar.jar:com/google/logging/type/LogSeverity$b.class */
    public static final class C7915b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f31094a = new C7915b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return LogSeverity.forNumber(i) != null;
        }
    }

    LogSeverity(int i) {
        this.value = i;
    }

    public static LogSeverity forNumber(int i) {
        if (i == 0) {
            return DEFAULT;
        }
        if (i == 100) {
            return DEBUG;
        }
        if (i == 200) {
            return INFO;
        }
        if (i == 300) {
            return NOTICE;
        }
        if (i == 400) {
            return WARNING;
        }
        if (i == 500) {
            return ERROR;
        }
        if (i == 600) {
            return CRITICAL;
        }
        if (i == 700) {
            return ALERT;
        }
        if (i != 800) {
            return null;
        }
        return EMERGENCY;
    }

    public static C6381y.AbstractC6385d<LogSeverity> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7915b.f31094a;
    }

    @Deprecated
    public static LogSeverity valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
