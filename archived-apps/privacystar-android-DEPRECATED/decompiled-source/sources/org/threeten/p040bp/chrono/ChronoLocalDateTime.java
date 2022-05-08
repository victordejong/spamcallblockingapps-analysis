package org.threeten.p040bp.chrono;

import com.privacystar.core.util.DateUtil;
import java.util.Comparator;
import org.threeten.p040bp.DateTimeException;
import org.threeten.p040bp.Instant;
import org.threeten.p040bp.LocalDate;
import org.threeten.p040bp.LocalTime;
import org.threeten.p040bp.ZoneId;
import org.threeten.p040bp.ZoneOffset;
import org.threeten.p040bp.chrono.ChronoLocalDate;
import org.threeten.p040bp.format.DateTimeFormatter;
import org.threeten.p040bp.jdk8.DefaultInterfaceTemporal;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.ChronoField;
import org.threeten.p040bp.temporal.ChronoUnit;
import org.threeten.p040bp.temporal.Temporal;
import org.threeten.p040bp.temporal.TemporalAccessor;
import org.threeten.p040bp.temporal.TemporalAdjuster;
import org.threeten.p040bp.temporal.TemporalAmount;
import org.threeten.p040bp.temporal.TemporalField;
import org.threeten.p040bp.temporal.TemporalQueries;
import org.threeten.p040bp.temporal.TemporalQuery;
import org.threeten.p040bp.temporal.TemporalUnit;
/* renamed from: org.threeten.bp.chrono.ChronoLocalDateTime */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/chrono/ChronoLocalDateTime.class */
public abstract class ChronoLocalDateTime<D extends ChronoLocalDate> extends DefaultInterfaceTemporal implements Temporal, TemporalAdjuster, Comparable<ChronoLocalDateTime<?>> {
    private static final Comparator<ChronoLocalDateTime<?>> DATE_TIME_COMPARATOR = new Comparator<ChronoLocalDateTime<?>>() { // from class: org.threeten.bp.chrono.ChronoLocalDateTime.1
        public int compare(ChronoLocalDateTime<?> chronoLocalDateTime, ChronoLocalDateTime<?> chronoLocalDateTime2) {
            int compareLongs = Jdk8Methods.compareLongs(chronoLocalDateTime.toLocalDate().toEpochDay(), chronoLocalDateTime2.toLocalDate().toEpochDay());
            int i = compareLongs;
            if (compareLongs == 0) {
                i = Jdk8Methods.compareLongs(chronoLocalDateTime.toLocalTime().toNanoOfDay(), chronoLocalDateTime2.toLocalTime().toNanoOfDay());
            }
            return i;
        }
    };

    public static ChronoLocalDateTime<?> from(TemporalAccessor temporalAccessor) {
        Jdk8Methods.requireNonNull(temporalAccessor, "temporal");
        if (temporalAccessor instanceof ChronoLocalDateTime) {
            return (ChronoLocalDateTime) temporalAccessor;
        }
        Chronology chronology = (Chronology) temporalAccessor.query(TemporalQueries.chronology());
        if (chronology != null) {
            return chronology.localDateTime(temporalAccessor);
        }
        throw new DateTimeException("No Chronology found to create ChronoLocalDateTime: " + temporalAccessor.getClass());
    }

    public static Comparator<ChronoLocalDateTime<?>> timeLineOrder() {
        return DATE_TIME_COMPARATOR;
    }

    public Temporal adjustInto(Temporal temporal) {
        return temporal.with(ChronoField.EPOCH_DAY, toLocalDate().toEpochDay()).with(ChronoField.NANO_OF_DAY, toLocalTime().toNanoOfDay());
    }

    public abstract ChronoZonedDateTime<D> atZone(ZoneId zoneId);

    public int compareTo(ChronoLocalDateTime<?> chronoLocalDateTime) {
        int compareTo = toLocalDate().compareTo(chronoLocalDateTime.toLocalDate());
        int i = compareTo;
        if (compareTo == 0) {
            int compareTo2 = toLocalTime().compareTo(chronoLocalDateTime.toLocalTime());
            i = compareTo2;
            if (compareTo2 == 0) {
                i = getChronology().compareTo(chronoLocalDateTime.getChronology());
            }
        }
        return i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChronoLocalDateTime)) {
            return false;
        }
        if (compareTo((ChronoLocalDateTime) obj) != 0) {
            z = false;
        }
        return z;
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Jdk8Methods.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.format(this);
    }

    public Chronology getChronology() {
        return toLocalDate().getChronology();
    }

    public int hashCode() {
        return toLocalDate().hashCode() ^ toLocalTime().hashCode();
    }

    public boolean isAfter(ChronoLocalDateTime<?> chronoLocalDateTime) {
        int i = (toLocalDate().toEpochDay() > chronoLocalDateTime.toLocalDate().toEpochDay() ? 1 : (toLocalDate().toEpochDay() == chronoLocalDateTime.toLocalDate().toEpochDay() ? 0 : -1));
        return i > 0 || (i == 0 && toLocalTime().toNanoOfDay() > chronoLocalDateTime.toLocalTime().toNanoOfDay());
    }

    public boolean isBefore(ChronoLocalDateTime<?> chronoLocalDateTime) {
        int i = (toLocalDate().toEpochDay() > chronoLocalDateTime.toLocalDate().toEpochDay() ? 1 : (toLocalDate().toEpochDay() == chronoLocalDateTime.toLocalDate().toEpochDay() ? 0 : -1));
        return i < 0 || (i == 0 && toLocalTime().toNanoOfDay() < chronoLocalDateTime.toLocalTime().toNanoOfDay());
    }

    public boolean isEqual(ChronoLocalDateTime<?> chronoLocalDateTime) {
        return toLocalTime().toNanoOfDay() == chronoLocalDateTime.toLocalTime().toNanoOfDay() && toLocalDate().toEpochDay() == chronoLocalDateTime.toLocalDate().toEpochDay();
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public ChronoLocalDateTime<D> minus(long j, TemporalUnit temporalUnit) {
        return toLocalDate().getChronology().ensureChronoLocalDateTime(super.minus(j, temporalUnit));
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public ChronoLocalDateTime<D> minus(TemporalAmount temporalAmount) {
        return toLocalDate().getChronology().ensureChronoLocalDateTime(super.minus(temporalAmount));
    }

    public abstract ChronoLocalDateTime<D> plus(long j, TemporalUnit temporalUnit);

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public ChronoLocalDateTime<D> plus(TemporalAmount temporalAmount) {
        return toLocalDate().getChronology().ensureChronoLocalDateTime(super.plus(temporalAmount));
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public <R> R query(TemporalQuery<R> temporalQuery) {
        if (temporalQuery == TemporalQueries.chronology()) {
            return (R) getChronology();
        }
        if (temporalQuery == TemporalQueries.precision()) {
            return (R) ChronoUnit.NANOS;
        }
        if (temporalQuery == TemporalQueries.localDate()) {
            return (R) LocalDate.ofEpochDay(toLocalDate().toEpochDay());
        }
        if (temporalQuery == TemporalQueries.localTime()) {
            return (R) toLocalTime();
        }
        if (temporalQuery == TemporalQueries.zone() || temporalQuery == TemporalQueries.zoneId() || temporalQuery == TemporalQueries.offset()) {
            return null;
        }
        return (R) super.query(temporalQuery);
    }

    public long toEpochSecond(ZoneOffset zoneOffset) {
        Jdk8Methods.requireNonNull(zoneOffset, "offset");
        return ((toLocalDate().toEpochDay() * DateUtil.DAY_IN_SECONDS) + toLocalTime().toSecondOfDay()) - zoneOffset.getTotalSeconds();
    }

    public Instant toInstant(ZoneOffset zoneOffset) {
        return Instant.ofEpochSecond(toEpochSecond(zoneOffset), toLocalTime().getNano());
    }

    public abstract D toLocalDate();

    public abstract LocalTime toLocalTime();

    public String toString() {
        return toLocalDate().toString() + 'T' + toLocalTime().toString();
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public ChronoLocalDateTime<D> with(TemporalAdjuster temporalAdjuster) {
        return toLocalDate().getChronology().ensureChronoLocalDateTime(super.with(temporalAdjuster));
    }

    public abstract ChronoLocalDateTime<D> with(TemporalField temporalField, long j);
}
