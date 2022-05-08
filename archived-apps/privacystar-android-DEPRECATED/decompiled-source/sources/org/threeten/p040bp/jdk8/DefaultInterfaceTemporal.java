package org.threeten.p040bp.jdk8;

import org.threeten.p040bp.temporal.Temporal;
import org.threeten.p040bp.temporal.TemporalAdjuster;
import org.threeten.p040bp.temporal.TemporalAmount;
import org.threeten.p040bp.temporal.TemporalUnit;
/* renamed from: org.threeten.bp.jdk8.DefaultInterfaceTemporal */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/jdk8/DefaultInterfaceTemporal.class */
public abstract class DefaultInterfaceTemporal extends DefaultInterfaceTemporalAccessor implements Temporal {
    public Temporal minus(long j, TemporalUnit temporalUnit) {
        return j == Long.MIN_VALUE ? plus(Long.MAX_VALUE, temporalUnit).plus(1L, temporalUnit) : plus(-j, temporalUnit);
    }

    public Temporal minus(TemporalAmount temporalAmount) {
        return temporalAmount.subtractFrom(this);
    }

    public Temporal plus(TemporalAmount temporalAmount) {
        return temporalAmount.addTo(this);
    }

    public Temporal with(TemporalAdjuster temporalAdjuster) {
        return temporalAdjuster.adjustInto(this);
    }
}
