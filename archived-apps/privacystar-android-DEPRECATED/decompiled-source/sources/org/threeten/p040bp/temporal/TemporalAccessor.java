package org.threeten.p040bp.temporal;
/* renamed from: org.threeten.bp.temporal.TemporalAccessor */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/temporal/TemporalAccessor.class */
public interface TemporalAccessor {
    int get(TemporalField temporalField);

    long getLong(TemporalField temporalField);

    boolean isSupported(TemporalField temporalField);

    <R> R query(TemporalQuery<R> temporalQuery);

    ValueRange range(TemporalField temporalField);
}
