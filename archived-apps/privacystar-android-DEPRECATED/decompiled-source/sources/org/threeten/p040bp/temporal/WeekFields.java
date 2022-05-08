package org.threeten.p040bp.temporal;

import java.io.InvalidObjectException;
import java.io.Serializable;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.threeten.p040bp.DateTimeException;
import org.threeten.p040bp.DayOfWeek;
import org.threeten.p040bp.Year;
import org.threeten.p040bp.chrono.ChronoLocalDate;
import org.threeten.p040bp.chrono.Chronology;
import org.threeten.p040bp.format.ResolverStyle;
import org.threeten.p040bp.jdk8.Jdk8Methods;
/* renamed from: org.threeten.bp.temporal.WeekFields */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/temporal/WeekFields.class */
public final class WeekFields implements Serializable {
    private static final ConcurrentMap<String, WeekFields> CACHE = new ConcurrentHashMap(4, 0.75f, 2);
    public static final WeekFields ISO = new WeekFields(DayOfWeek.MONDAY, 4);
    public static final WeekFields SUNDAY_START = m42of(DayOfWeek.SUNDAY, 1);
    private static final long serialVersionUID = -1177360819670808121L;
    private final DayOfWeek firstDayOfWeek;
    private final int minimalDays;
    private final transient TemporalField dayOfWeek = ComputedDayOfField.ofDayOfWeekField(this);
    private final transient TemporalField weekOfMonth = ComputedDayOfField.ofWeekOfMonthField(this);
    private final transient TemporalField weekOfYear = ComputedDayOfField.ofWeekOfYearField(this);
    private final transient TemporalField weekOfWeekBasedYear = ComputedDayOfField.ofWeekOfWeekBasedYearField(this);
    private final transient TemporalField weekBasedYear = ComputedDayOfField.ofWeekBasedYearField(this);

    /* renamed from: org.threeten.bp.temporal.WeekFields$ComputedDayOfField */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/temporal/WeekFields$ComputedDayOfField.class */
    static class ComputedDayOfField implements TemporalField {
        private final TemporalUnit baseUnit;
        private final String name;
        private final ValueRange range;
        private final TemporalUnit rangeUnit;
        private final WeekFields weekDef;
        private static final ValueRange DAY_OF_WEEK_RANGE = ValueRange.m46of(1, 7);
        private static final ValueRange WEEK_OF_MONTH_RANGE = ValueRange.m44of(0, 1, 4, 6);
        private static final ValueRange WEEK_OF_YEAR_RANGE = ValueRange.m44of(0, 1, 52, 54);
        private static final ValueRange WEEK_OF_WEEK_BASED_YEAR_RANGE = ValueRange.m45of(1, 52, 53);
        private static final ValueRange WEEK_BASED_YEAR_RANGE = ChronoField.YEAR.range();

        private ComputedDayOfField(String str, WeekFields weekFields, TemporalUnit temporalUnit, TemporalUnit temporalUnit2, ValueRange valueRange) {
            this.name = str;
            this.weekDef = weekFields;
            this.baseUnit = temporalUnit;
            this.rangeUnit = temporalUnit2;
            this.range = valueRange;
        }

        private int computeWeek(int i, int i2) {
            return ((i + 7) + (i2 - 1)) / 7;
        }

        private int localizedDayOfWeek(TemporalAccessor temporalAccessor, int i) {
            return Jdk8Methods.floorMod(temporalAccessor.get(ChronoField.DAY_OF_WEEK) - i, 7) + 1;
        }

        private int localizedWBY(TemporalAccessor temporalAccessor) {
            int floorMod = Jdk8Methods.floorMod(temporalAccessor.get(ChronoField.DAY_OF_WEEK) - this.weekDef.getFirstDayOfWeek().getValue(), 7) + 1;
            int i = temporalAccessor.get(ChronoField.YEAR);
            long localizedWeekOfYear = localizedWeekOfYear(temporalAccessor, floorMod);
            if (localizedWeekOfYear == 0) {
                return i - 1;
            }
            if (localizedWeekOfYear < 53) {
                return i;
            }
            return localizedWeekOfYear >= ((long) computeWeek(startOfWeekOffset(temporalAccessor.get(ChronoField.DAY_OF_YEAR), floorMod), (Year.isLeap((long) i) ? 366 : 365) + this.weekDef.getMinimalDaysInFirstWeek())) ? i + 1 : i;
        }

        private int localizedWOWBY(TemporalAccessor temporalAccessor) {
            int floorMod = Jdk8Methods.floorMod(temporalAccessor.get(ChronoField.DAY_OF_WEEK) - this.weekDef.getFirstDayOfWeek().getValue(), 7) + 1;
            long localizedWeekOfYear = localizedWeekOfYear(temporalAccessor, floorMod);
            if (localizedWeekOfYear == 0) {
                return ((int) localizedWeekOfYear(Chronology.from(temporalAccessor).date(temporalAccessor).minus(1L, (TemporalUnit) ChronoUnit.WEEKS), floorMod)) + 1;
            }
            if (localizedWeekOfYear >= 53) {
                int computeWeek = computeWeek(startOfWeekOffset(temporalAccessor.get(ChronoField.DAY_OF_YEAR), floorMod), (Year.isLeap((long) temporalAccessor.get(ChronoField.YEAR)) ? 366 : 365) + this.weekDef.getMinimalDaysInFirstWeek());
                if (localizedWeekOfYear >= computeWeek) {
                    return (int) (localizedWeekOfYear - (computeWeek - 1));
                }
            }
            return (int) localizedWeekOfYear;
        }

        private long localizedWeekOfMonth(TemporalAccessor temporalAccessor, int i) {
            int i2 = temporalAccessor.get(ChronoField.DAY_OF_MONTH);
            return computeWeek(startOfWeekOffset(i2, i), i2);
        }

        private long localizedWeekOfYear(TemporalAccessor temporalAccessor, int i) {
            int i2 = temporalAccessor.get(ChronoField.DAY_OF_YEAR);
            return computeWeek(startOfWeekOffset(i2, i), i2);
        }

        static ComputedDayOfField ofDayOfWeekField(WeekFields weekFields) {
            return new ComputedDayOfField("DayOfWeek", weekFields, ChronoUnit.DAYS, ChronoUnit.WEEKS, DAY_OF_WEEK_RANGE);
        }

        static ComputedDayOfField ofWeekBasedYearField(WeekFields weekFields) {
            return new ComputedDayOfField("WeekBasedYear", weekFields, IsoFields.WEEK_BASED_YEARS, ChronoUnit.FOREVER, WEEK_BASED_YEAR_RANGE);
        }

        static ComputedDayOfField ofWeekOfMonthField(WeekFields weekFields) {
            return new ComputedDayOfField("WeekOfMonth", weekFields, ChronoUnit.WEEKS, ChronoUnit.MONTHS, WEEK_OF_MONTH_RANGE);
        }

        static ComputedDayOfField ofWeekOfWeekBasedYearField(WeekFields weekFields) {
            return new ComputedDayOfField("WeekOfWeekBasedYear", weekFields, ChronoUnit.WEEKS, IsoFields.WEEK_BASED_YEARS, WEEK_OF_WEEK_BASED_YEAR_RANGE);
        }

        static ComputedDayOfField ofWeekOfYearField(WeekFields weekFields) {
            return new ComputedDayOfField("WeekOfYear", weekFields, ChronoUnit.WEEKS, ChronoUnit.YEARS, WEEK_OF_YEAR_RANGE);
        }

        private ValueRange rangeWOWBY(TemporalAccessor temporalAccessor) {
            int floorMod = Jdk8Methods.floorMod(temporalAccessor.get(ChronoField.DAY_OF_WEEK) - this.weekDef.getFirstDayOfWeek().getValue(), 7) + 1;
            long localizedWeekOfYear = localizedWeekOfYear(temporalAccessor, floorMod);
            if (localizedWeekOfYear == 0) {
                return rangeWOWBY(Chronology.from(temporalAccessor).date(temporalAccessor).minus(2L, (TemporalUnit) ChronoUnit.WEEKS));
            }
            int computeWeek = computeWeek(startOfWeekOffset(temporalAccessor.get(ChronoField.DAY_OF_YEAR), floorMod), (Year.isLeap((long) temporalAccessor.get(ChronoField.YEAR)) ? 366 : 365) + this.weekDef.getMinimalDaysInFirstWeek());
            return localizedWeekOfYear >= ((long) computeWeek) ? rangeWOWBY(Chronology.from(temporalAccessor).date(temporalAccessor).plus(2L, (TemporalUnit) ChronoUnit.WEEKS)) : ValueRange.m46of(1L, computeWeek - 1);
        }

        private int startOfWeekOffset(int i, int i2) {
            int floorMod = Jdk8Methods.floorMod(i - i2, 7);
            int i3 = -floorMod;
            if (floorMod + 1 > this.weekDef.getMinimalDaysInFirstWeek()) {
                i3 = 7 - floorMod;
            }
            return i3;
        }

        @Override // org.threeten.p040bp.temporal.TemporalField
        public <R extends Temporal> R adjustInto(R r, long j) {
            R r2;
            int checkValidIntValue = this.range.checkValidIntValue(j, this);
            int i = r.get(this);
            if (checkValidIntValue == i) {
                return r;
            }
            if (this.rangeUnit != ChronoUnit.FOREVER) {
                return (R) r.plus(checkValidIntValue - i, this.baseUnit);
            }
            int i2 = r.get(this.weekDef.weekOfWeekBasedYear);
            Temporal plus = r.plus((long) ((j - i) * 52.1775d), ChronoUnit.WEEKS);
            if (plus.get(this) > checkValidIntValue) {
                r2 = (R) plus.minus(plus.get(this.weekDef.weekOfWeekBasedYear), ChronoUnit.WEEKS);
            } else {
                Temporal temporal = plus;
                if (plus.get(this) < checkValidIntValue) {
                    temporal = plus.plus(2L, ChronoUnit.WEEKS);
                }
                Temporal plus2 = temporal.plus(i2 - temporal.get(this.weekDef.weekOfWeekBasedYear), ChronoUnit.WEEKS);
                r2 = (R) plus2;
                if (plus2.get(this) > checkValidIntValue) {
                    r2 = (R) plus2.minus(1L, ChronoUnit.WEEKS);
                }
            }
            return r2;
        }

        @Override // org.threeten.p040bp.temporal.TemporalField
        public TemporalUnit getBaseUnit() {
            return this.baseUnit;
        }

        @Override // org.threeten.p040bp.temporal.TemporalField
        public String getDisplayName(Locale locale) {
            Jdk8Methods.requireNonNull(locale, "locale");
            return this.rangeUnit == ChronoUnit.YEARS ? "Week" : toString();
        }

        @Override // org.threeten.p040bp.temporal.TemporalField
        public long getFrom(TemporalAccessor temporalAccessor) {
            int floorMod = Jdk8Methods.floorMod(temporalAccessor.get(ChronoField.DAY_OF_WEEK) - this.weekDef.getFirstDayOfWeek().getValue(), 7) + 1;
            if (this.rangeUnit == ChronoUnit.WEEKS) {
                return floorMod;
            }
            if (this.rangeUnit == ChronoUnit.MONTHS) {
                int i = temporalAccessor.get(ChronoField.DAY_OF_MONTH);
                return computeWeek(startOfWeekOffset(i, floorMod), i);
            } else if (this.rangeUnit == ChronoUnit.YEARS) {
                int i2 = temporalAccessor.get(ChronoField.DAY_OF_YEAR);
                return computeWeek(startOfWeekOffset(i2, floorMod), i2);
            } else if (this.rangeUnit == IsoFields.WEEK_BASED_YEARS) {
                return localizedWOWBY(temporalAccessor);
            } else {
                if (this.rangeUnit == ChronoUnit.FOREVER) {
                    return localizedWBY(temporalAccessor);
                }
                throw new IllegalStateException("unreachable");
            }
        }

        @Override // org.threeten.p040bp.temporal.TemporalField
        public TemporalUnit getRangeUnit() {
            return this.rangeUnit;
        }

        @Override // org.threeten.p040bp.temporal.TemporalField
        public boolean isDateBased() {
            return true;
        }

        @Override // org.threeten.p040bp.temporal.TemporalField
        public boolean isSupportedBy(TemporalAccessor temporalAccessor) {
            if (!temporalAccessor.isSupported(ChronoField.DAY_OF_WEEK)) {
                return false;
            }
            if (this.rangeUnit == ChronoUnit.WEEKS) {
                return true;
            }
            if (this.rangeUnit == ChronoUnit.MONTHS) {
                return temporalAccessor.isSupported(ChronoField.DAY_OF_MONTH);
            }
            if (this.rangeUnit == ChronoUnit.YEARS) {
                return temporalAccessor.isSupported(ChronoField.DAY_OF_YEAR);
            }
            if (this.rangeUnit == IsoFields.WEEK_BASED_YEARS || this.rangeUnit == ChronoUnit.FOREVER) {
                return temporalAccessor.isSupported(ChronoField.EPOCH_DAY);
            }
            return false;
        }

        @Override // org.threeten.p040bp.temporal.TemporalField
        public boolean isTimeBased() {
            return false;
        }

        @Override // org.threeten.p040bp.temporal.TemporalField
        public ValueRange range() {
            return this.range;
        }

        @Override // org.threeten.p040bp.temporal.TemporalField
        public ValueRange rangeRefinedBy(TemporalAccessor temporalAccessor) {
            ChronoField chronoField;
            if (this.rangeUnit == ChronoUnit.WEEKS) {
                return this.range;
            }
            if (this.rangeUnit == ChronoUnit.MONTHS) {
                chronoField = ChronoField.DAY_OF_MONTH;
            } else if (this.rangeUnit == ChronoUnit.YEARS) {
                chronoField = ChronoField.DAY_OF_YEAR;
            } else if (this.rangeUnit == IsoFields.WEEK_BASED_YEARS) {
                return rangeWOWBY(temporalAccessor);
            } else {
                if (this.rangeUnit == ChronoUnit.FOREVER) {
                    return temporalAccessor.range(ChronoField.YEAR);
                }
                throw new IllegalStateException("unreachable");
            }
            int startOfWeekOffset = startOfWeekOffset(temporalAccessor.get(chronoField), Jdk8Methods.floorMod(temporalAccessor.get(ChronoField.DAY_OF_WEEK) - this.weekDef.getFirstDayOfWeek().getValue(), 7) + 1);
            ValueRange range = temporalAccessor.range(chronoField);
            return ValueRange.m46of(computeWeek(startOfWeekOffset, (int) range.getMinimum()), computeWeek(startOfWeekOffset, (int) range.getMaximum()));
        }

        @Override // org.threeten.p040bp.temporal.TemporalField
        public TemporalAccessor resolve(Map<TemporalField, Long> map, TemporalAccessor temporalAccessor, ResolverStyle resolverStyle) {
            long j;
            int localizedDayOfWeek;
            int localizedDayOfWeek2;
            long j2;
            ChronoLocalDate chronoLocalDate;
            int localizedDayOfWeek3;
            int localizedDayOfWeek4;
            long j3;
            ChronoLocalDate chronoLocalDate2;
            int localizedDayOfWeek5;
            int localizedDayOfWeek6;
            int value = this.weekDef.getFirstDayOfWeek().getValue();
            if (this.rangeUnit == ChronoUnit.WEEKS) {
                map.put(ChronoField.DAY_OF_WEEK, Long.valueOf(Jdk8Methods.floorMod((value - 1) + (this.range.checkValidIntValue(map.remove(this).longValue(), this) - 1), 7) + 1));
                return null;
            } else if (!map.containsKey(ChronoField.DAY_OF_WEEK)) {
                return null;
            } else {
                if (this.rangeUnit == ChronoUnit.FOREVER) {
                    if (!map.containsKey(this.weekDef.weekOfWeekBasedYear)) {
                        return null;
                    }
                    Chronology from = Chronology.from(temporalAccessor);
                    int floorMod = Jdk8Methods.floorMod(ChronoField.DAY_OF_WEEK.checkValidIntValue(map.get(ChronoField.DAY_OF_WEEK).longValue()) - value, 7) + 1;
                    int checkValidIntValue = range().checkValidIntValue(map.get(this).longValue(), this);
                    if (resolverStyle == ResolverStyle.LENIENT) {
                        chronoLocalDate2 = from.date(checkValidIntValue, 1, this.weekDef.getMinimalDaysInFirstWeek());
                        j3 = ((map.get(this.weekDef.weekOfWeekBasedYear).longValue() - localizedWeekOfYear(chronoLocalDate2, localizedDayOfWeek(chronoLocalDate2, value))) * 7) + (floorMod - localizedDayOfWeek6);
                    } else {
                        chronoLocalDate2 = from.date(checkValidIntValue, 1, this.weekDef.getMinimalDaysInFirstWeek());
                        j3 = ((this.weekDef.weekOfWeekBasedYear.range().checkValidIntValue(map.get(this.weekDef.weekOfWeekBasedYear).longValue(), this.weekDef.weekOfWeekBasedYear) - localizedWeekOfYear(chronoLocalDate2, localizedDayOfWeek(chronoLocalDate2, value))) * 7) + (floorMod - localizedDayOfWeek5);
                    }
                    ChronoLocalDate plus = chronoLocalDate2.plus(j3, (TemporalUnit) ChronoUnit.DAYS);
                    if (resolverStyle != ResolverStyle.STRICT || plus.getLong(this) == map.get(this).longValue()) {
                        map.remove(this);
                        map.remove(this.weekDef.weekOfWeekBasedYear);
                        map.remove(ChronoField.DAY_OF_WEEK);
                        return plus;
                    }
                    throw new DateTimeException("Strict mode rejected date parsed to a different year");
                } else if (!map.containsKey(ChronoField.YEAR)) {
                    return null;
                } else {
                    int floorMod2 = Jdk8Methods.floorMod(ChronoField.DAY_OF_WEEK.checkValidIntValue(map.get(ChronoField.DAY_OF_WEEK).longValue()) - value, 7) + 1;
                    int checkValidIntValue2 = ChronoField.YEAR.checkValidIntValue(map.get(ChronoField.YEAR).longValue());
                    Chronology from2 = Chronology.from(temporalAccessor);
                    if (this.rangeUnit == ChronoUnit.MONTHS) {
                        if (!map.containsKey(ChronoField.MONTH_OF_YEAR)) {
                            return null;
                        }
                        long longValue = map.remove(this).longValue();
                        if (resolverStyle == ResolverStyle.LENIENT) {
                            chronoLocalDate = from2.date(checkValidIntValue2, 1, 1).plus(map.get(ChronoField.MONTH_OF_YEAR).longValue() - 1, (TemporalUnit) ChronoUnit.MONTHS);
                            j2 = ((longValue - localizedWeekOfMonth(chronoLocalDate, localizedDayOfWeek(chronoLocalDate, value))) * 7) + (floorMod2 - localizedDayOfWeek4);
                        } else {
                            chronoLocalDate = from2.date(checkValidIntValue2, ChronoField.MONTH_OF_YEAR.checkValidIntValue(map.get(ChronoField.MONTH_OF_YEAR).longValue()), 8);
                            j2 = ((this.range.checkValidIntValue(longValue, this) - localizedWeekOfMonth(chronoLocalDate, localizedDayOfWeek(chronoLocalDate, value))) * 7) + (floorMod2 - localizedDayOfWeek3);
                        }
                        ChronoLocalDate plus2 = chronoLocalDate.plus(j2, (TemporalUnit) ChronoUnit.DAYS);
                        if (resolverStyle != ResolverStyle.STRICT || plus2.getLong(ChronoField.MONTH_OF_YEAR) == map.get(ChronoField.MONTH_OF_YEAR).longValue()) {
                            map.remove(this);
                            map.remove(ChronoField.YEAR);
                            map.remove(ChronoField.MONTH_OF_YEAR);
                            map.remove(ChronoField.DAY_OF_WEEK);
                            return plus2;
                        }
                        throw new DateTimeException("Strict mode rejected date parsed to a different month");
                    } else if (this.rangeUnit == ChronoUnit.YEARS) {
                        long longValue2 = map.remove(this).longValue();
                        ChronoLocalDate date = from2.date(checkValidIntValue2, 1, 1);
                        if (resolverStyle == ResolverStyle.LENIENT) {
                            j = ((longValue2 - localizedWeekOfYear(date, localizedDayOfWeek(date, value))) * 7) + (floorMod2 - localizedDayOfWeek2);
                        } else {
                            j = ((this.range.checkValidIntValue(longValue2, this) - localizedWeekOfYear(date, localizedDayOfWeek(date, value))) * 7) + (floorMod2 - localizedDayOfWeek);
                        }
                        ChronoLocalDate plus3 = date.plus(j, (TemporalUnit) ChronoUnit.DAYS);
                        if (resolverStyle != ResolverStyle.STRICT || plus3.getLong(ChronoField.YEAR) == map.get(ChronoField.YEAR).longValue()) {
                            map.remove(this);
                            map.remove(ChronoField.YEAR);
                            map.remove(ChronoField.DAY_OF_WEEK);
                            return plus3;
                        }
                        throw new DateTimeException("Strict mode rejected date parsed to a different year");
                    } else {
                        throw new IllegalStateException("unreachable");
                    }
                }
            }
        }

        public String toString() {
            return this.name + "[" + this.weekDef.toString() + "]";
        }
    }

    private WeekFields(DayOfWeek dayOfWeek, int i) {
        Jdk8Methods.requireNonNull(dayOfWeek, "firstDayOfWeek");
        if (i < 1 || i > 7) {
            throw new IllegalArgumentException("Minimal number of days is invalid");
        }
        this.firstDayOfWeek = dayOfWeek;
        this.minimalDays = i;
    }

    /* renamed from: of */
    public static WeekFields m43of(Locale locale) {
        Jdk8Methods.requireNonNull(locale, "locale");
        GregorianCalendar gregorianCalendar = new GregorianCalendar(new Locale(locale.getLanguage(), locale.getCountry()));
        return m42of(DayOfWeek.SUNDAY.plus(gregorianCalendar.getFirstDayOfWeek() - 1), gregorianCalendar.getMinimalDaysInFirstWeek());
    }

    /* renamed from: of */
    public static WeekFields m42of(DayOfWeek dayOfWeek, int i) {
        String str = dayOfWeek.toString() + i;
        WeekFields weekFields = CACHE.get(str);
        WeekFields weekFields2 = weekFields;
        if (weekFields == null) {
            CACHE.putIfAbsent(str, new WeekFields(dayOfWeek, i));
            weekFields2 = CACHE.get(str);
        }
        return weekFields2;
    }

    private Object readResolve() throws InvalidObjectException {
        try {
            return m42of(this.firstDayOfWeek, this.minimalDays);
        } catch (IllegalArgumentException e) {
            throw new InvalidObjectException("Invalid WeekFields" + e.getMessage());
        }
    }

    public TemporalField dayOfWeek() {
        return this.dayOfWeek;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WeekFields)) {
            return false;
        }
        if (hashCode() != obj.hashCode()) {
            z = false;
        }
        return z;
    }

    public DayOfWeek getFirstDayOfWeek() {
        return this.firstDayOfWeek;
    }

    public int getMinimalDaysInFirstWeek() {
        return this.minimalDays;
    }

    public int hashCode() {
        return (this.firstDayOfWeek.ordinal() * 7) + this.minimalDays;
    }

    public String toString() {
        return "WeekFields[" + this.firstDayOfWeek + ',' + this.minimalDays + ']';
    }

    public TemporalField weekBasedYear() {
        return this.weekBasedYear;
    }

    public TemporalField weekOfMonth() {
        return this.weekOfMonth;
    }

    public TemporalField weekOfWeekBasedYear() {
        return this.weekOfWeekBasedYear;
    }

    public TemporalField weekOfYear() {
        return this.weekOfYear;
    }
}
