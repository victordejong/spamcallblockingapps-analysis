package org.threeten.p040bp;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import org.apache.commons.cli.HelpFormatter;
import org.threeten.p040bp.chrono.Chronology;
import org.threeten.p040bp.chrono.IsoChronology;
import org.threeten.p040bp.format.DateTimeFormatter;
import org.threeten.p040bp.format.DateTimeFormatterBuilder;
import org.threeten.p040bp.format.SignStyle;
import org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor;
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
import org.threeten.p040bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.p040bp.temporal.ValueRange;
/* renamed from: org.threeten.bp.YearMonth */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/YearMonth.class */
public final class YearMonth extends DefaultInterfaceTemporalAccessor implements Temporal, TemporalAdjuster, Comparable<YearMonth>, Serializable {
    public static final TemporalQuery<YearMonth> FROM = new TemporalQuery<YearMonth>() { // from class: org.threeten.bp.YearMonth.1
        @Override // org.threeten.p040bp.temporal.TemporalQuery
        public YearMonth queryFrom(TemporalAccessor temporalAccessor) {
            return YearMonth.from(temporalAccessor);
        }
    };
    private static final DateTimeFormatter PARSER = new DateTimeFormatterBuilder().appendValue(ChronoField.YEAR, 4, 10, SignStyle.EXCEEDS_PAD).appendLiteral('-').appendValue(ChronoField.MONTH_OF_YEAR, 2).toFormatter();
    private static final long serialVersionUID = 4183400860270640070L;
    private final int month;
    private final int year;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.YearMonth$2 */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/YearMonth$2.class */
    public static /* synthetic */ class C25092 {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField;
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoUnit = new int[ChronoUnit.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008d -> B:57:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0091 -> B:51:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0095 -> B:45:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0099 -> B:39:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009d -> B:55:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a1 -> B:14:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a5 -> B:43:0x0060). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00a9 -> B:37:0x006b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00ad -> B:53:0x0076). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b1 -> B:47:0x0081). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.MONTHS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.YEARS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.DECADES.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.CENTURIES.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.MILLENNIA.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.ERAS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            $SwitchMap$org$threeten$bp$temporal$ChronoField = new int[ChronoField.values().length];
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.MONTH_OF_YEAR.ordinal()] = 1;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.PROLEPTIC_MONTH.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.YEAR_OF_ERA.ordinal()] = 3;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.YEAR.ordinal()] = 4;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ERA.ordinal()] = 5;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    private YearMonth(int i, int i2) {
        this.year = i;
        this.month = i2;
    }

    public static YearMonth from(TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof YearMonth) {
            return (YearMonth) temporalAccessor;
        }
        TemporalAccessor temporalAccessor2 = temporalAccessor;
        TemporalAccessor temporalAccessor3 = temporalAccessor;
        try {
            if (!IsoChronology.INSTANCE.equals(Chronology.from(temporalAccessor))) {
                temporalAccessor2 = LocalDate.from(temporalAccessor);
            }
            temporalAccessor3 = temporalAccessor2;
            return m69of(temporalAccessor2.get(ChronoField.YEAR), temporalAccessor2.get(ChronoField.MONTH_OF_YEAR));
        } catch (DateTimeException e) {
            throw new DateTimeException("Unable to obtain YearMonth from TemporalAccessor: " + temporalAccessor3 + ", type " + temporalAccessor3.getClass().getName());
        }
    }

    private long getProlepticMonth() {
        return (this.year * 12) + (this.month - 1);
    }

    public static YearMonth now() {
        return now(Clock.systemDefaultZone());
    }

    public static YearMonth now(Clock clock) {
        LocalDate now = LocalDate.now(clock);
        return m68of(now.getYear(), now.getMonth());
    }

    public static YearMonth now(ZoneId zoneId) {
        return now(Clock.system(zoneId));
    }

    /* renamed from: of */
    public static YearMonth m69of(int i, int i2) {
        ChronoField.YEAR.checkValidValue(i);
        ChronoField.MONTH_OF_YEAR.checkValidValue(i2);
        return new YearMonth(i, i2);
    }

    /* renamed from: of */
    public static YearMonth m68of(int i, Month month) {
        Jdk8Methods.requireNonNull(month, "month");
        return m69of(i, month.getValue());
    }

    public static YearMonth parse(CharSequence charSequence) {
        return parse(charSequence, PARSER);
    }

    public static YearMonth parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Jdk8Methods.requireNonNull(dateTimeFormatter, "formatter");
        return (YearMonth) dateTimeFormatter.parse(charSequence, FROM);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static YearMonth readExternal(DataInput dataInput) throws IOException {
        return m69of(dataInput.readInt(), dataInput.readByte());
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private YearMonth with(int i, int i2) {
        return (this.year == i && this.month == i2) ? this : new YearMonth(i, i2);
    }

    private Object writeReplace() {
        return new Ser((byte) 68, this);
    }

    @Override // org.threeten.p040bp.temporal.TemporalAdjuster
    public Temporal adjustInto(Temporal temporal) {
        if (Chronology.from(temporal).equals(IsoChronology.INSTANCE)) {
            return temporal.with(ChronoField.PROLEPTIC_MONTH, getProlepticMonth());
        }
        throw new DateTimeException("Adjustment only supported on ISO date-time");
    }

    public LocalDate atDay(int i) {
        return LocalDate.m91of(this.year, this.month, i);
    }

    public LocalDate atEndOfMonth() {
        return LocalDate.m91of(this.year, this.month, lengthOfMonth());
    }

    public int compareTo(YearMonth yearMonth) {
        int i = this.year - yearMonth.year;
        int i2 = i;
        if (i == 0) {
            i2 = this.month - yearMonth.month;
        }
        return i2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof YearMonth)) {
            return false;
        }
        YearMonth yearMonth = (YearMonth) obj;
        if (!(this.year == yearMonth.year && this.month == yearMonth.month)) {
            z = false;
        }
        return z;
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Jdk8Methods.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.format(this);
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public int get(TemporalField temporalField) {
        return range(temporalField).checkValidIntValue(getLong(temporalField), temporalField);
    }

    @Override // org.threeten.p040bp.temporal.TemporalAccessor
    public long getLong(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.getFrom(this);
        }
        int i = 1;
        switch (C25092.$SwitchMap$org$threeten$bp$temporal$ChronoField[((ChronoField) temporalField).ordinal()]) {
            case 1:
                return this.month;
            case 2:
                return getProlepticMonth();
            case 3:
                return this.year < 1 ? 1 - this.year : this.year;
            case 4:
                return this.year;
            case 5:
                if (this.year < 1) {
                    i = 0;
                }
                return i;
            default:
                throw new UnsupportedTemporalTypeException("Unsupported field: " + temporalField);
        }
    }

    public Month getMonth() {
        return Month.m79of(this.month);
    }

    public int getMonthValue() {
        return this.month;
    }

    public int getYear() {
        return this.year;
    }

    public int hashCode() {
        return this.year ^ (this.month << 27);
    }

    public boolean isAfter(YearMonth yearMonth) {
        return compareTo(yearMonth) > 0;
    }

    public boolean isBefore(YearMonth yearMonth) {
        return compareTo(yearMonth) < 0;
    }

    public boolean isLeapYear() {
        return IsoChronology.INSTANCE.isLeapYear(this.year);
    }

    @Override // org.threeten.p040bp.temporal.TemporalAccessor
    public boolean isSupported(TemporalField temporalField) {
        boolean z = true;
        if (temporalField instanceof ChronoField) {
            boolean z2 = true;
            if (temporalField != ChronoField.YEAR) {
                z2 = true;
                if (temporalField != ChronoField.MONTH_OF_YEAR) {
                    z2 = true;
                    if (temporalField != ChronoField.PROLEPTIC_MONTH) {
                        z2 = true;
                        if (temporalField != ChronoField.YEAR_OF_ERA) {
                            z2 = temporalField == ChronoField.ERA;
                        }
                    }
                }
            }
            return z2;
        }
        if (temporalField == null || !temporalField.isSupportedBy(this)) {
            z = false;
        }
        return z;
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public boolean isSupported(TemporalUnit temporalUnit) {
        boolean z = true;
        if (temporalUnit instanceof ChronoUnit) {
            boolean z2 = true;
            if (temporalUnit != ChronoUnit.MONTHS) {
                z2 = true;
                if (temporalUnit != ChronoUnit.YEARS) {
                    z2 = true;
                    if (temporalUnit != ChronoUnit.DECADES) {
                        z2 = true;
                        if (temporalUnit != ChronoUnit.CENTURIES) {
                            z2 = true;
                            if (temporalUnit != ChronoUnit.MILLENNIA) {
                                z2 = temporalUnit == ChronoUnit.ERAS;
                            }
                        }
                    }
                }
            }
            return z2;
        }
        if (temporalUnit == null || !temporalUnit.isSupportedBy(this)) {
            z = false;
        }
        return z;
    }

    public boolean isValidDay(int i) {
        boolean z = true;
        if (i < 1 || i > lengthOfMonth()) {
            z = false;
        }
        return z;
    }

    public int lengthOfMonth() {
        return getMonth().length(isLeapYear());
    }

    public int lengthOfYear() {
        return isLeapYear() ? 366 : 365;
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public YearMonth minus(long j, TemporalUnit temporalUnit) {
        return j == Long.MIN_VALUE ? plus(Long.MAX_VALUE, temporalUnit).plus(1L, temporalUnit) : plus(-j, temporalUnit);
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public YearMonth minus(TemporalAmount temporalAmount) {
        return (YearMonth) temporalAmount.subtractFrom(this);
    }

    public YearMonth minusMonths(long j) {
        return j == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j);
    }

    public YearMonth minusYears(long j) {
        return j == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j);
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public YearMonth plus(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (YearMonth) temporalUnit.addTo(this, j);
        }
        switch (C25092.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return plusMonths(j);
            case 2:
                return plusYears(j);
            case 3:
                return plusYears(Jdk8Methods.safeMultiply(j, 10));
            case 4:
                return plusYears(Jdk8Methods.safeMultiply(j, 100));
            case 5:
                return plusYears(Jdk8Methods.safeMultiply(j, 1000));
            case 6:
                return with((TemporalField) ChronoField.ERA, Jdk8Methods.safeAdd(getLong(ChronoField.ERA), j));
            default:
                throw new UnsupportedTemporalTypeException("Unsupported unit: " + temporalUnit);
        }
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public YearMonth plus(TemporalAmount temporalAmount) {
        return (YearMonth) temporalAmount.addTo(this);
    }

    public YearMonth plusMonths(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.year * 12) + (this.month - 1) + j;
        return with(ChronoField.YEAR.checkValidIntValue(Jdk8Methods.floorDiv(j2, 12L)), Jdk8Methods.floorMod(j2, 12) + 1);
    }

    public YearMonth plusYears(long j) {
        return j == 0 ? this : with(ChronoField.YEAR.checkValidIntValue(this.year + j), this.month);
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public <R> R query(TemporalQuery<R> temporalQuery) {
        if (temporalQuery == TemporalQueries.chronology()) {
            return (R) IsoChronology.INSTANCE;
        }
        if (temporalQuery == TemporalQueries.precision()) {
            return (R) ChronoUnit.MONTHS;
        }
        if (temporalQuery == TemporalQueries.localDate() || temporalQuery == TemporalQueries.localTime() || temporalQuery == TemporalQueries.zone() || temporalQuery == TemporalQueries.zoneId() || temporalQuery == TemporalQueries.offset()) {
            return null;
        }
        return (R) super.query(temporalQuery);
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public ValueRange range(TemporalField temporalField) {
        if (temporalField != ChronoField.YEAR_OF_ERA) {
            return super.range(temporalField);
        }
        return ValueRange.m46of(1L, getYear() <= 0 ? 1000000000L : 999999999L);
    }

    public String toString() {
        int abs = Math.abs(this.year);
        StringBuilder sb = new StringBuilder(9);
        if (abs >= 1000) {
            sb.append(this.year);
        } else if (this.year < 0) {
            sb.append(this.year - 10000);
            sb.deleteCharAt(1);
        } else {
            sb.append(this.year + 10000);
            sb.deleteCharAt(0);
        }
        sb.append(this.month < 10 ? "-0" : HelpFormatter.DEFAULT_OPT_PREFIX);
        sb.append(this.month);
        return sb.toString();
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public long until(Temporal temporal, TemporalUnit temporalUnit) {
        YearMonth from = from(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, from);
        }
        long prolepticMonth = from.getProlepticMonth() - getProlepticMonth();
        switch (C25092.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return prolepticMonth;
            case 2:
                return prolepticMonth / 12;
            case 3:
                return prolepticMonth / 120;
            case 4:
                return prolepticMonth / 1200;
            case 5:
                return prolepticMonth / 12000;
            case 6:
                return from.getLong(ChronoField.ERA) - getLong(ChronoField.ERA);
            default:
                throw new UnsupportedTemporalTypeException("Unsupported unit: " + temporalUnit);
        }
    }

    @Override // org.threeten.p040bp.temporal.Temporal
    public YearMonth with(TemporalAdjuster temporalAdjuster) {
        return (YearMonth) temporalAdjuster.adjustInto(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // org.threeten.p040bp.temporal.Temporal
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.threeten.p040bp.YearMonth with(org.threeten.p040bp.temporal.TemporalField r7, long r8) {
        /*
            r6 = this;
            r0 = r7
            boolean r0 = r0 instanceof org.threeten.p040bp.temporal.ChronoField
            if (r0 == 0) goto L_0x00b8
            r0 = r7
            org.threeten.bp.temporal.ChronoField r0 = (org.threeten.p040bp.temporal.ChronoField) r0
            r10 = r0
            r0 = r10
            r1 = r8
            long r0 = r0.checkValidValue(r1)
            int[] r0 = org.threeten.p040bp.YearMonth.C25092.$SwitchMap$org$threeten$bp$temporal$ChronoField
            r1 = r10
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L_0x00b1;
                case 2: goto L_0x00a3;
                case 3: goto L_0x008b;
                case 4: goto L_0x0084;
                case 5: goto L_0x0066;
                default: goto L_0x0040;
            }
        L_0x0040:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "Unsupported field: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            org.threeten.bp.temporal.UnsupportedTemporalTypeException r0 = new org.threeten.bp.temporal.UnsupportedTemporalTypeException
            r1 = r0
            r2 = r10
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x0066:
            r0 = r6
            org.threeten.bp.temporal.ChronoField r1 = org.threeten.p040bp.temporal.ChronoField.ERA
            long r0 = r0.getLong(r1)
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0077
            r0 = r6
            r7 = r0
            goto L_0x0082
        L_0x0077:
            r0 = r6
            r1 = 1
            r2 = r6
            int r2 = r2.year
            int r1 = r1 - r2
            org.threeten.bp.YearMonth r0 = r0.withYear(r1)
            r7 = r0
        L_0x0082:
            r0 = r7
            return r0
        L_0x0084:
            r0 = r6
            r1 = r8
            int r1 = (int) r1
            org.threeten.bp.YearMonth r0 = r0.withYear(r1)
            return r0
        L_0x008b:
            r0 = r8
            r11 = r0
            r0 = r6
            int r0 = r0.year
            r1 = 1
            if (r0 >= r1) goto L_0x009b
            r0 = 1
            r1 = r8
            long r0 = r0 - r1
            r11 = r0
        L_0x009b:
            r0 = r6
            r1 = r11
            int r1 = (int) r1
            org.threeten.bp.YearMonth r0 = r0.withYear(r1)
            return r0
        L_0x00a3:
            r0 = r6
            r1 = r8
            r2 = r6
            org.threeten.bp.temporal.ChronoField r3 = org.threeten.p040bp.temporal.ChronoField.PROLEPTIC_MONTH
            long r2 = r2.getLong(r3)
            long r1 = r1 - r2
            org.threeten.bp.YearMonth r0 = r0.plusMonths(r1)
            return r0
        L_0x00b1:
            r0 = r6
            r1 = r8
            int r1 = (int) r1
            org.threeten.bp.YearMonth r0 = r0.withMonth(r1)
            return r0
        L_0x00b8:
            r0 = r7
            r1 = r6
            r2 = r8
            org.threeten.bp.temporal.Temporal r0 = r0.adjustInto(r1, r2)
            org.threeten.bp.YearMonth r0 = (org.threeten.p040bp.YearMonth) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.YearMonth.with(org.threeten.bp.temporal.TemporalField, long):org.threeten.bp.YearMonth");
    }

    public YearMonth withMonth(int i) {
        ChronoField.MONTH_OF_YEAR.checkValidValue(i);
        return with(this.year, i);
    }

    public YearMonth withYear(int i) {
        ChronoField.YEAR.checkValidValue(i);
        return with(i, this.month);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(this.year);
        dataOutput.writeByte(this.month);
    }
}
