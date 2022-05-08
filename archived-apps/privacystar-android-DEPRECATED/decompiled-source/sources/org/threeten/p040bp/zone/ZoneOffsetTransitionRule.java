package org.threeten.p040bp.zone;

import com.apptentive.android.sdk.util.Constants;
import com.privacystar.core.data.model.BlockHistoryFields;
import com.privacystar.core.service.jobs.JobConstants;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.Serializable;
import org.threeten.p040bp.DayOfWeek;
import org.threeten.p040bp.LocalDate;
import org.threeten.p040bp.LocalDateTime;
import org.threeten.p040bp.LocalTime;
import org.threeten.p040bp.Month;
import org.threeten.p040bp.ZoneOffset;
import org.threeten.p040bp.chrono.IsoChronology;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.TemporalAdjusters;
/* renamed from: org.threeten.bp.zone.ZoneOffsetTransitionRule */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/zone/ZoneOffsetTransitionRule.class */
public final class ZoneOffsetTransitionRule implements Serializable {
    private static final long serialVersionUID = 6889046316657758795L;
    private final byte dom;
    private final DayOfWeek dow;
    private final Month month;
    private final ZoneOffset offsetAfter;
    private final ZoneOffset offsetBefore;
    private final ZoneOffset standardOffset;
    private final LocalTime time;
    private final TimeDefinition timeDefinition;
    private final boolean timeEndOfDay;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.zone.ZoneOffsetTransitionRule$1 */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/zone/ZoneOffsetTransitionRule$1.class */
    public static /* synthetic */ class C25541 {

        /* renamed from: $SwitchMap$org$threeten$bp$zone$ZoneOffsetTransitionRule$TimeDefinition */
        static final /* synthetic */ int[] f1823x9c587b4d = new int[TimeDefinition.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f1823x9c587b4d[TimeDefinition.UTC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1823x9c587b4d[TimeDefinition.STANDARD.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: org.threeten.bp.zone.ZoneOffsetTransitionRule$TimeDefinition */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition.class */
    public enum TimeDefinition {
        UTC,
        WALL,
        STANDARD;

        public LocalDateTime createDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
            switch (C25541.f1823x9c587b4d[ordinal()]) {
                case 1:
                    return localDateTime.plusSeconds(zoneOffset2.getTotalSeconds() - ZoneOffset.UTC.getTotalSeconds());
                case 2:
                    return localDateTime.plusSeconds(zoneOffset2.getTotalSeconds() - zoneOffset.getTotalSeconds());
                default:
                    return localDateTime;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZoneOffsetTransitionRule(Month month, int i, DayOfWeek dayOfWeek, LocalTime localTime, boolean z, TimeDefinition timeDefinition, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        this.month = month;
        this.dom = (byte) i;
        this.dow = dayOfWeek;
        this.time = localTime;
        this.timeEndOfDay = z;
        this.timeDefinition = timeDefinition;
        this.standardOffset = zoneOffset;
        this.offsetBefore = zoneOffset2;
        this.offsetAfter = zoneOffset3;
    }

    /* renamed from: of */
    public static ZoneOffsetTransitionRule m40of(Month month, int i, DayOfWeek dayOfWeek, LocalTime localTime, boolean z, TimeDefinition timeDefinition, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        Jdk8Methods.requireNonNull(month, "month");
        Jdk8Methods.requireNonNull(localTime, BlockHistoryFields.TIME);
        Jdk8Methods.requireNonNull(timeDefinition, "timeDefnition");
        Jdk8Methods.requireNonNull(zoneOffset, "standardOffset");
        Jdk8Methods.requireNonNull(zoneOffset2, "offsetBefore");
        Jdk8Methods.requireNonNull(zoneOffset3, "offsetAfter");
        if (i < -28 || i > 31 || i == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        } else if (!z || localTime.equals(LocalTime.MIDNIGHT)) {
            return new ZoneOffsetTransitionRule(month, i, dayOfWeek, localTime, z, timeDefinition, zoneOffset, zoneOffset2, zoneOffset3);
        } else {
            throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ZoneOffsetTransitionRule readExternal(DataInput dataInput) throws IOException {
        int readInt = dataInput.readInt();
        Month of = Month.m79of(readInt >>> 28);
        int i = (3670016 & readInt) >>> 19;
        DayOfWeek of2 = i == 0 ? null : DayOfWeek.m93of(i);
        int i2 = (507904 & readInt) >>> 14;
        TimeDefinition timeDefinition = TimeDefinition.values()[(readInt & 12288) >>> 12];
        int i3 = (readInt & 4080) >>> 4;
        int i4 = (readInt & 12) >>> 2;
        int i5 = readInt & 3;
        LocalTime ofSecondOfDay = i2 == 31 ? LocalTime.ofSecondOfDay(dataInput.readInt()) : LocalTime.m82of(i2 % 24, 0);
        ZoneOffset ofTotalSeconds = ZoneOffset.ofTotalSeconds(i3 == 255 ? dataInput.readInt() : (i3 - 128) * JobConstants.HIGH);
        return m40of(of, ((264241152 & readInt) >>> 22) - 32, of2, ofSecondOfDay, i2 == 24, timeDefinition, ofTotalSeconds, ZoneOffset.ofTotalSeconds(i4 == 3 ? dataInput.readInt() : ofTotalSeconds.getTotalSeconds() + (i4 * 1800)), ZoneOffset.ofTotalSeconds(i5 == 3 ? dataInput.readInt() : ofTotalSeconds.getTotalSeconds() + (i5 * 1800)));
    }

    private Object writeReplace() {
        return new Ser((byte) 3, this);
    }

    public ZoneOffsetTransition createTransition(int i) {
        LocalDate localDate;
        if (this.dom < 0) {
            LocalDate of = LocalDate.m90of(i, this.month, this.month.length(IsoChronology.INSTANCE.isLeapYear(i)) + 1 + this.dom);
            localDate = of;
            if (this.dow != null) {
                localDate = of.with(TemporalAdjusters.previousOrSame(this.dow));
            }
        } else {
            LocalDate of2 = LocalDate.m90of(i, this.month, this.dom);
            localDate = of2;
            if (this.dow != null) {
                localDate = of2.with(TemporalAdjusters.nextOrSame(this.dow));
            }
        }
        LocalDate localDate2 = localDate;
        if (this.timeEndOfDay) {
            localDate2 = localDate.plusDays(1L);
        }
        return new ZoneOffsetTransition(this.timeDefinition.createDateTime(LocalDateTime.m83of(localDate2, this.time), this.standardOffset, this.offsetBefore), this.offsetBefore, this.offsetAfter);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ZoneOffsetTransitionRule)) {
            return false;
        }
        ZoneOffsetTransitionRule zoneOffsetTransitionRule = (ZoneOffsetTransitionRule) obj;
        if (!(this.month == zoneOffsetTransitionRule.month && this.dom == zoneOffsetTransitionRule.dom && this.dow == zoneOffsetTransitionRule.dow && this.timeDefinition == zoneOffsetTransitionRule.timeDefinition && this.time.equals(zoneOffsetTransitionRule.time) && this.timeEndOfDay == zoneOffsetTransitionRule.timeEndOfDay && this.standardOffset.equals(zoneOffsetTransitionRule.standardOffset) && this.offsetBefore.equals(zoneOffsetTransitionRule.offsetBefore) && this.offsetAfter.equals(zoneOffsetTransitionRule.offsetAfter))) {
            z = false;
        }
        return z;
    }

    public int getDayOfMonthIndicator() {
        return this.dom;
    }

    public DayOfWeek getDayOfWeek() {
        return this.dow;
    }

    public LocalTime getLocalTime() {
        return this.time;
    }

    public Month getMonth() {
        return this.month;
    }

    public ZoneOffset getOffsetAfter() {
        return this.offsetAfter;
    }

    public ZoneOffset getOffsetBefore() {
        return this.offsetBefore;
    }

    public ZoneOffset getStandardOffset() {
        return this.standardOffset;
    }

    public TimeDefinition getTimeDefinition() {
        return this.timeDefinition;
    }

    public int hashCode() {
        return ((((((((this.time.toSecondOfDay() + (this.timeEndOfDay ? 1 : 0)) << 15) + (this.month.ordinal() << 11)) + ((this.dom + 32) << 5)) + ((this.dow == null ? 7 : this.dow.ordinal()) << 2)) + this.timeDefinition.ordinal()) ^ this.standardOffset.hashCode()) ^ this.offsetBefore.hashCode()) ^ this.offsetAfter.hashCode();
    }

    public boolean isMidnightEndOfDay() {
        return this.timeEndOfDay;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("TransitionRule[");
        sb.append(this.offsetBefore.compareTo(this.offsetAfter) > 0 ? "Gap " : "Overlap ");
        sb.append(this.offsetBefore);
        sb.append(" to ");
        sb.append(this.offsetAfter);
        sb.append(", ");
        if (this.dow == null) {
            sb.append(this.month.name());
            sb.append(' ');
            sb.append((int) this.dom);
        } else if (this.dom == -1) {
            sb.append(this.dow.name());
            sb.append(" on or before last day of ");
            sb.append(this.month.name());
        } else if (this.dom < 0) {
            sb.append(this.dow.name());
            sb.append(" on or before last day minus ");
            sb.append((-this.dom) - 1);
            sb.append(" of ");
            sb.append(this.month.name());
        } else {
            sb.append(this.dow.name());
            sb.append(" on or after ");
            sb.append(this.month.name());
            sb.append(' ');
            sb.append((int) this.dom);
        }
        sb.append(" at ");
        sb.append(this.timeEndOfDay ? "24:00" : this.time.toString());
        sb.append(" ");
        sb.append(this.timeDefinition);
        sb.append(", standard offset ");
        sb.append(this.standardOffset);
        sb.append(']');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        int secondOfDay = this.timeEndOfDay ? Constants.CONFIG_DEFAULT_APP_CONFIG_EXPIRATION_DURATION_SECONDS : this.time.toSecondOfDay();
        int totalSeconds = this.standardOffset.getTotalSeconds();
        int totalSeconds2 = this.offsetBefore.getTotalSeconds() - totalSeconds;
        int totalSeconds3 = this.offsetAfter.getTotalSeconds() - totalSeconds;
        int hour = secondOfDay % 3600 == 0 ? this.timeEndOfDay ? 24 : this.time.getHour() : 31;
        int i = totalSeconds % JobConstants.HIGH == 0 ? (totalSeconds / JobConstants.HIGH) + 128 : 255;
        int i2 = (totalSeconds2 == 0 || totalSeconds2 == 1800 || totalSeconds2 == 3600) ? totalSeconds2 / 1800 : 3;
        int i3 = (totalSeconds3 == 0 || totalSeconds3 == 1800 || totalSeconds3 == 3600) ? totalSeconds3 / 1800 : 3;
        dataOutput.writeInt((this.month.getValue() << 28) + ((this.dom + 32) << 22) + ((this.dow == null ? 0 : this.dow.getValue()) << 19) + (hour << 14) + (this.timeDefinition.ordinal() << 12) + (i << 4) + (i2 << 2) + i3);
        if (hour == 31) {
            dataOutput.writeInt(secondOfDay);
        }
        if (i == 255) {
            dataOutput.writeInt(totalSeconds);
        }
        if (i2 == 3) {
            dataOutput.writeInt(this.offsetBefore.getTotalSeconds());
        }
        if (i3 == 3) {
            dataOutput.writeInt(this.offsetAfter.getTotalSeconds());
        }
    }
}
