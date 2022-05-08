package org.threeten.p040bp.format;

import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.google.android.gms.actions.SearchIntents;
import java.io.IOException;
import java.text.FieldPosition;
import java.text.Format;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import org.threeten.p040bp.DateTimeException;
import org.threeten.p040bp.Period;
import org.threeten.p040bp.ZoneId;
import org.threeten.p040bp.chrono.Chronology;
import org.threeten.p040bp.chrono.IsoChronology;
import org.threeten.p040bp.format.DateTimeFormatterBuilder;
import org.threeten.p040bp.format.DateTimeParseContext;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.ChronoField;
import org.threeten.p040bp.temporal.IsoFields;
import org.threeten.p040bp.temporal.TemporalAccessor;
import org.threeten.p040bp.temporal.TemporalField;
import org.threeten.p040bp.temporal.TemporalQuery;
/* renamed from: org.threeten.bp.format.DateTimeFormatter */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatter.class */
public final class DateTimeFormatter {
    public static final DateTimeFormatter RFC_1123_DATE_TIME;
    private final Chronology chrono;
    private final DecimalStyle decimalStyle;
    private final Locale locale;
    private final DateTimeFormatterBuilder.CompositePrinterParser printerParser;
    private final Set<TemporalField> resolverFields;
    private final ResolverStyle resolverStyle;
    private final ZoneId zone;
    public static final DateTimeFormatter ISO_LOCAL_DATE = new DateTimeFormatterBuilder().appendValue(ChronoField.YEAR, 4, 10, SignStyle.EXCEEDS_PAD).appendLiteral('-').appendValue(ChronoField.MONTH_OF_YEAR, 2).appendLiteral('-').appendValue(ChronoField.DAY_OF_MONTH, 2).toFormatter(ResolverStyle.STRICT).withChronology(IsoChronology.INSTANCE);
    public static final DateTimeFormatter ISO_OFFSET_DATE = new DateTimeFormatterBuilder().parseCaseInsensitive().append(ISO_LOCAL_DATE).appendOffsetId().toFormatter(ResolverStyle.STRICT).withChronology(IsoChronology.INSTANCE);
    public static final DateTimeFormatter ISO_DATE = new DateTimeFormatterBuilder().parseCaseInsensitive().append(ISO_LOCAL_DATE).optionalStart().appendOffsetId().toFormatter(ResolverStyle.STRICT).withChronology(IsoChronology.INSTANCE);
    public static final DateTimeFormatter ISO_LOCAL_TIME = new DateTimeFormatterBuilder().appendValue(ChronoField.HOUR_OF_DAY, 2).appendLiteral(':').appendValue(ChronoField.MINUTE_OF_HOUR, 2).optionalStart().appendLiteral(':').appendValue(ChronoField.SECOND_OF_MINUTE, 2).optionalStart().appendFraction(ChronoField.NANO_OF_SECOND, 0, 9, true).toFormatter(ResolverStyle.STRICT);
    public static final DateTimeFormatter ISO_OFFSET_TIME = new DateTimeFormatterBuilder().parseCaseInsensitive().append(ISO_LOCAL_TIME).appendOffsetId().toFormatter(ResolverStyle.STRICT);
    public static final DateTimeFormatter ISO_TIME = new DateTimeFormatterBuilder().parseCaseInsensitive().append(ISO_LOCAL_TIME).optionalStart().appendOffsetId().toFormatter(ResolverStyle.STRICT);
    public static final DateTimeFormatter ISO_LOCAL_DATE_TIME = new DateTimeFormatterBuilder().parseCaseInsensitive().append(ISO_LOCAL_DATE).appendLiteral('T').append(ISO_LOCAL_TIME).toFormatter(ResolverStyle.STRICT).withChronology(IsoChronology.INSTANCE);
    public static final DateTimeFormatter ISO_OFFSET_DATE_TIME = new DateTimeFormatterBuilder().parseCaseInsensitive().append(ISO_LOCAL_DATE_TIME).appendOffsetId().toFormatter(ResolverStyle.STRICT).withChronology(IsoChronology.INSTANCE);
    public static final DateTimeFormatter ISO_ZONED_DATE_TIME = new DateTimeFormatterBuilder().append(ISO_OFFSET_DATE_TIME).optionalStart().appendLiteral('[').parseCaseSensitive().appendZoneRegionId().appendLiteral(']').toFormatter(ResolverStyle.STRICT).withChronology(IsoChronology.INSTANCE);
    public static final DateTimeFormatter ISO_DATE_TIME = new DateTimeFormatterBuilder().append(ISO_LOCAL_DATE_TIME).optionalStart().appendOffsetId().optionalStart().appendLiteral('[').parseCaseSensitive().appendZoneRegionId().appendLiteral(']').toFormatter(ResolverStyle.STRICT).withChronology(IsoChronology.INSTANCE);
    public static final DateTimeFormatter ISO_ORDINAL_DATE = new DateTimeFormatterBuilder().parseCaseInsensitive().appendValue(ChronoField.YEAR, 4, 10, SignStyle.EXCEEDS_PAD).appendLiteral('-').appendValue(ChronoField.DAY_OF_YEAR, 3).optionalStart().appendOffsetId().toFormatter(ResolverStyle.STRICT).withChronology(IsoChronology.INSTANCE);
    public static final DateTimeFormatter ISO_WEEK_DATE = new DateTimeFormatterBuilder().parseCaseInsensitive().appendValue(IsoFields.WEEK_BASED_YEAR, 4, 10, SignStyle.EXCEEDS_PAD).appendLiteral("-W").appendValue(IsoFields.WEEK_OF_WEEK_BASED_YEAR, 2).appendLiteral('-').appendValue(ChronoField.DAY_OF_WEEK, 1).optionalStart().appendOffsetId().toFormatter(ResolverStyle.STRICT).withChronology(IsoChronology.INSTANCE);
    public static final DateTimeFormatter ISO_INSTANT = new DateTimeFormatterBuilder().parseCaseInsensitive().appendInstant().toFormatter(ResolverStyle.STRICT);
    public static final DateTimeFormatter BASIC_ISO_DATE = new DateTimeFormatterBuilder().parseCaseInsensitive().appendValue(ChronoField.YEAR, 4).appendValue(ChronoField.MONTH_OF_YEAR, 2).appendValue(ChronoField.DAY_OF_MONTH, 2).optionalStart().appendOffset("+HHMMss", "Z").toFormatter(ResolverStyle.STRICT).withChronology(IsoChronology.INSTANCE);
    private static final TemporalQuery<Period> PARSED_EXCESS_DAYS = new TemporalQuery<Period>() { // from class: org.threeten.bp.format.DateTimeFormatter.1
        @Override // org.threeten.p040bp.temporal.TemporalQuery
        public Period queryFrom(TemporalAccessor temporalAccessor) {
            return temporalAccessor instanceof DateTimeBuilder ? ((DateTimeBuilder) temporalAccessor).excessDays : Period.ZERO;
        }
    };
    private static final TemporalQuery<Boolean> PARSED_LEAP_SECOND = new TemporalQuery<Boolean>() { // from class: org.threeten.bp.format.DateTimeFormatter.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.threeten.p040bp.temporal.TemporalQuery
        public Boolean queryFrom(TemporalAccessor temporalAccessor) {
            return temporalAccessor instanceof DateTimeBuilder ? Boolean.valueOf(((DateTimeBuilder) temporalAccessor).leapSecond) : Boolean.FALSE;
        }
    };

    /* renamed from: org.threeten.bp.format.DateTimeFormatter$ClassicFormat */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatter$ClassicFormat.class */
    static class ClassicFormat extends Format {
        private final DateTimeFormatter formatter;
        private final TemporalQuery<?> query;

        public ClassicFormat(DateTimeFormatter dateTimeFormatter, TemporalQuery<?> temporalQuery) {
            this.formatter = dateTimeFormatter;
            this.query = temporalQuery;
        }

        @Override // java.text.Format
        public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
            Jdk8Methods.requireNonNull(obj, "obj");
            Jdk8Methods.requireNonNull(stringBuffer, "toAppendTo");
            Jdk8Methods.requireNonNull(fieldPosition, "pos");
            if (!(obj instanceof TemporalAccessor)) {
                throw new IllegalArgumentException("Format target must implement TemporalAccessor");
            }
            fieldPosition.setBeginIndex(0);
            fieldPosition.setEndIndex(0);
            try {
                this.formatter.formatTo((TemporalAccessor) obj, stringBuffer);
                return stringBuffer;
            } catch (RuntimeException e) {
                throw new IllegalArgumentException(e.getMessage(), e);
            }
        }

        @Override // java.text.Format
        public Object parseObject(String str) throws ParseException {
            Jdk8Methods.requireNonNull(str, "text");
            try {
                return this.query == null ? this.formatter.parseToBuilder(str, null).resolve(this.formatter.getResolverStyle(), this.formatter.getResolverFields()) : this.formatter.parse(str, this.query);
            } catch (DateTimeParseException e) {
                throw new ParseException(e.getMessage(), e.getErrorIndex());
            } catch (RuntimeException e2) {
                throw ((ParseException) new ParseException(e2.getMessage(), 0).initCause(e2));
            }
        }

        @Override // java.text.Format
        public Object parseObject(String str, ParsePosition parsePosition) {
            Jdk8Methods.requireNonNull(str, "text");
            try {
                DateTimeParseContext.Parsed parseUnresolved0 = this.formatter.parseUnresolved0(str, parsePosition);
                if (parseUnresolved0 != null) {
                    try {
                        DateTimeBuilder resolve = parseUnresolved0.toBuilder().resolve(this.formatter.getResolverStyle(), this.formatter.getResolverFields());
                        return this.query == null ? resolve : resolve.build(this.query);
                    } catch (RuntimeException e) {
                        parsePosition.setErrorIndex(0);
                        return null;
                    }
                } else if (parsePosition.getErrorIndex() >= 0) {
                    return null;
                } else {
                    parsePosition.setErrorIndex(0);
                    return null;
                }
            } catch (IndexOutOfBoundsException e2) {
                if (parsePosition.getErrorIndex() >= 0) {
                    return null;
                }
                parsePosition.setErrorIndex(0);
                return null;
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(1L, "Mon");
        hashMap.put(2L, "Tue");
        hashMap.put(3L, "Wed");
        hashMap.put(4L, "Thu");
        hashMap.put(5L, "Fri");
        hashMap.put(6L, "Sat");
        hashMap.put(7L, "Sun");
        HashMap hashMap2 = new HashMap();
        hashMap2.put(1L, "Jan");
        hashMap2.put(2L, "Feb");
        hashMap2.put(3L, "Mar");
        hashMap2.put(4L, "Apr");
        hashMap2.put(5L, "May");
        hashMap2.put(6L, "Jun");
        hashMap2.put(7L, "Jul");
        hashMap2.put(8L, "Aug");
        hashMap2.put(9L, "Sep");
        hashMap2.put(10L, "Oct");
        hashMap2.put(11L, "Nov");
        hashMap2.put(12L, "Dec");
        RFC_1123_DATE_TIME = new DateTimeFormatterBuilder().parseCaseInsensitive().parseLenient().optionalStart().appendText(ChronoField.DAY_OF_WEEK, hashMap).appendLiteral(", ").optionalEnd().appendValue(ChronoField.DAY_OF_MONTH, 1, 2, SignStyle.NOT_NEGATIVE).appendLiteral(' ').appendText(ChronoField.MONTH_OF_YEAR, hashMap2).appendLiteral(' ').appendValue(ChronoField.YEAR, 4).appendLiteral(' ').appendValue(ChronoField.HOUR_OF_DAY, 2).appendLiteral(':').appendValue(ChronoField.MINUTE_OF_HOUR, 2).optionalStart().appendLiteral(':').appendValue(ChronoField.SECOND_OF_MINUTE, 2).optionalEnd().appendLiteral(' ').appendOffset("+HHMM", "GMT").toFormatter(ResolverStyle.SMART).withChronology(IsoChronology.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DateTimeFormatter(DateTimeFormatterBuilder.CompositePrinterParser compositePrinterParser, Locale locale, DecimalStyle decimalStyle, ResolverStyle resolverStyle, Set<TemporalField> set, Chronology chronology, ZoneId zoneId) {
        this.printerParser = (DateTimeFormatterBuilder.CompositePrinterParser) Jdk8Methods.requireNonNull(compositePrinterParser, "printerParser");
        this.locale = (Locale) Jdk8Methods.requireNonNull(locale, "locale");
        this.decimalStyle = (DecimalStyle) Jdk8Methods.requireNonNull(decimalStyle, "decimalStyle");
        this.resolverStyle = (ResolverStyle) Jdk8Methods.requireNonNull(resolverStyle, "resolverStyle");
        this.resolverFields = set;
        this.chrono = chronology;
        this.zone = zoneId;
    }

    private DateTimeParseException createError(CharSequence charSequence, RuntimeException runtimeException) {
        String str;
        if (charSequence.length() > 64) {
            str = charSequence.subSequence(0, 64).toString() + "...";
        } else {
            str = charSequence.toString();
        }
        return new DateTimeParseException("Text '" + str + "' could not be parsed: " + runtimeException.getMessage(), charSequence, 0, runtimeException);
    }

    public static DateTimeFormatter ofLocalizedDate(FormatStyle formatStyle) {
        Jdk8Methods.requireNonNull(formatStyle, "dateStyle");
        return new DateTimeFormatterBuilder().appendLocalized(formatStyle, null).toFormatter().withChronology(IsoChronology.INSTANCE);
    }

    public static DateTimeFormatter ofLocalizedDateTime(FormatStyle formatStyle) {
        Jdk8Methods.requireNonNull(formatStyle, "dateTimeStyle");
        return new DateTimeFormatterBuilder().appendLocalized(formatStyle, formatStyle).toFormatter().withChronology(IsoChronology.INSTANCE);
    }

    public static DateTimeFormatter ofLocalizedDateTime(FormatStyle formatStyle, FormatStyle formatStyle2) {
        Jdk8Methods.requireNonNull(formatStyle, "dateStyle");
        Jdk8Methods.requireNonNull(formatStyle2, "timeStyle");
        return new DateTimeFormatterBuilder().appendLocalized(formatStyle, formatStyle2).toFormatter().withChronology(IsoChronology.INSTANCE);
    }

    public static DateTimeFormatter ofLocalizedTime(FormatStyle formatStyle) {
        Jdk8Methods.requireNonNull(formatStyle, "timeStyle");
        return new DateTimeFormatterBuilder().appendLocalized(null, formatStyle).toFormatter().withChronology(IsoChronology.INSTANCE);
    }

    public static DateTimeFormatter ofPattern(String str) {
        return new DateTimeFormatterBuilder().appendPattern(str).toFormatter();
    }

    public static DateTimeFormatter ofPattern(String str, Locale locale) {
        return new DateTimeFormatterBuilder().appendPattern(str).toFormatter(locale);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DateTimeBuilder parseToBuilder(CharSequence charSequence, ParsePosition parsePosition) {
        String str;
        ParsePosition parsePosition2 = parsePosition != null ? parsePosition : new ParsePosition(0);
        DateTimeParseContext.Parsed parseUnresolved0 = parseUnresolved0(charSequence, parsePosition2);
        if (parseUnresolved0 != null && parsePosition2.getErrorIndex() < 0 && (parsePosition != null || parsePosition2.getIndex() >= charSequence.length())) {
            return parseUnresolved0.toBuilder();
        }
        if (charSequence.length() > 64) {
            str = charSequence.subSequence(0, 64).toString() + "...";
        } else {
            str = charSequence.toString();
        }
        if (parsePosition2.getErrorIndex() >= 0) {
            throw new DateTimeParseException("Text '" + str + "' could not be parsed at index " + parsePosition2.getErrorIndex(), charSequence, parsePosition2.getErrorIndex());
        }
        throw new DateTimeParseException("Text '" + str + "' could not be parsed, unparsed text found at index " + parsePosition2.getIndex(), charSequence, parsePosition2.getIndex());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DateTimeParseContext.Parsed parseUnresolved0(CharSequence charSequence, ParsePosition parsePosition) {
        Jdk8Methods.requireNonNull(charSequence, "text");
        Jdk8Methods.requireNonNull(parsePosition, TextModalInteraction.EVENT_KEY_ACTION_POSITION);
        DateTimeParseContext dateTimeParseContext = new DateTimeParseContext(this);
        int parse = this.printerParser.parse(dateTimeParseContext, charSequence, parsePosition.getIndex());
        if (parse < 0) {
            parsePosition.setErrorIndex(parse ^ (-1));
            return null;
        }
        parsePosition.setIndex(parse);
        return dateTimeParseContext.toParsed();
    }

    public static final TemporalQuery<Period> parsedExcessDays() {
        return PARSED_EXCESS_DAYS;
    }

    public static final TemporalQuery<Boolean> parsedLeapSecond() {
        return PARSED_LEAP_SECOND;
    }

    public String format(TemporalAccessor temporalAccessor) {
        StringBuilder sb = new StringBuilder(32);
        formatTo(temporalAccessor, sb);
        return sb.toString();
    }

    public void formatTo(TemporalAccessor temporalAccessor, Appendable appendable) {
        Jdk8Methods.requireNonNull(temporalAccessor, "temporal");
        Jdk8Methods.requireNonNull(appendable, "appendable");
        try {
            DateTimePrintContext dateTimePrintContext = new DateTimePrintContext(temporalAccessor, this);
            if (appendable instanceof StringBuilder) {
                this.printerParser.print(dateTimePrintContext, (StringBuilder) appendable);
                return;
            }
            StringBuilder sb = new StringBuilder(32);
            this.printerParser.print(dateTimePrintContext, sb);
            appendable.append(sb);
        } catch (IOException e) {
            throw new DateTimeException(e.getMessage(), e);
        }
    }

    public Chronology getChronology() {
        return this.chrono;
    }

    public DecimalStyle getDecimalStyle() {
        return this.decimalStyle;
    }

    public Locale getLocale() {
        return this.locale;
    }

    public Set<TemporalField> getResolverFields() {
        return this.resolverFields;
    }

    public ResolverStyle getResolverStyle() {
        return this.resolverStyle;
    }

    public ZoneId getZone() {
        return this.zone;
    }

    public <T> T parse(CharSequence charSequence, TemporalQuery<T> temporalQuery) {
        Jdk8Methods.requireNonNull(charSequence, "text");
        Jdk8Methods.requireNonNull(temporalQuery, "type");
        try {
            return (T) parseToBuilder(charSequence, null).resolve(this.resolverStyle, this.resolverFields).build(temporalQuery);
        } catch (DateTimeParseException e) {
            throw e;
        } catch (RuntimeException e2) {
            throw createError(charSequence, e2);
        }
    }

    public TemporalAccessor parse(CharSequence charSequence) {
        Jdk8Methods.requireNonNull(charSequence, "text");
        try {
            return parseToBuilder(charSequence, null).resolve(this.resolverStyle, this.resolverFields);
        } catch (DateTimeParseException e) {
            throw e;
        } catch (RuntimeException e2) {
            throw createError(charSequence, e2);
        }
    }

    public TemporalAccessor parse(CharSequence charSequence, ParsePosition parsePosition) {
        Jdk8Methods.requireNonNull(charSequence, "text");
        Jdk8Methods.requireNonNull(parsePosition, TextModalInteraction.EVENT_KEY_ACTION_POSITION);
        try {
            return parseToBuilder(charSequence, parsePosition).resolve(this.resolverStyle, this.resolverFields);
        } catch (IndexOutOfBoundsException e) {
            throw e;
        } catch (DateTimeParseException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw createError(charSequence, e3);
        }
    }

    public TemporalAccessor parseBest(CharSequence charSequence, TemporalQuery<?>... temporalQueryArr) {
        Jdk8Methods.requireNonNull(charSequence, "text");
        Jdk8Methods.requireNonNull(temporalQueryArr, "types");
        if (temporalQueryArr.length < 2) {
            throw new IllegalArgumentException("At least two types must be specified");
        }
        try {
            DateTimeBuilder resolve = parseToBuilder(charSequence, null).resolve(this.resolverStyle, this.resolverFields);
            for (TemporalQuery<?> temporalQuery : temporalQueryArr) {
                try {
                    return (TemporalAccessor) resolve.build(temporalQuery);
                } catch (RuntimeException e) {
                }
            }
            throw new DateTimeException("Unable to convert parsed text to any specified type: " + Arrays.toString(temporalQueryArr));
        } catch (DateTimeParseException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw createError(charSequence, e3);
        }
    }

    public TemporalAccessor parseUnresolved(CharSequence charSequence, ParsePosition parsePosition) {
        return parseUnresolved0(charSequence, parsePosition);
    }

    public Format toFormat() {
        return new ClassicFormat(this, null);
    }

    public Format toFormat(TemporalQuery<?> temporalQuery) {
        Jdk8Methods.requireNonNull(temporalQuery, SearchIntents.EXTRA_QUERY);
        return new ClassicFormat(this, temporalQuery);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DateTimeFormatterBuilder.CompositePrinterParser toPrinterParser(boolean z) {
        return this.printerParser.withOptional(z);
    }

    public String toString() {
        String compositePrinterParser = this.printerParser.toString();
        if (!compositePrinterParser.startsWith("[")) {
            compositePrinterParser = compositePrinterParser.substring(1, compositePrinterParser.length() - 1);
        }
        return compositePrinterParser;
    }

    public DateTimeFormatter withChronology(Chronology chronology) {
        return Jdk8Methods.equals(this.chrono, chronology) ? this : new DateTimeFormatter(this.printerParser, this.locale, this.decimalStyle, this.resolverStyle, this.resolverFields, chronology, this.zone);
    }

    public DateTimeFormatter withDecimalStyle(DecimalStyle decimalStyle) {
        return this.decimalStyle.equals(decimalStyle) ? this : new DateTimeFormatter(this.printerParser, this.locale, decimalStyle, this.resolverStyle, this.resolverFields, this.chrono, this.zone);
    }

    public DateTimeFormatter withLocale(Locale locale) {
        return this.locale.equals(locale) ? this : new DateTimeFormatter(this.printerParser, locale, this.decimalStyle, this.resolverStyle, this.resolverFields, this.chrono, this.zone);
    }

    public DateTimeFormatter withResolverFields(Set<TemporalField> set) {
        if (set == null) {
            return new DateTimeFormatter(this.printerParser, this.locale, this.decimalStyle, this.resolverStyle, null, this.chrono, this.zone);
        }
        if (Jdk8Methods.equals(this.resolverFields, set)) {
            return this;
        }
        return new DateTimeFormatter(this.printerParser, this.locale, this.decimalStyle, this.resolverStyle, Collections.unmodifiableSet(new HashSet(set)), this.chrono, this.zone);
    }

    public DateTimeFormatter withResolverFields(TemporalField... temporalFieldArr) {
        if (temporalFieldArr == null) {
            return new DateTimeFormatter(this.printerParser, this.locale, this.decimalStyle, this.resolverStyle, null, this.chrono, this.zone);
        }
        HashSet hashSet = new HashSet(Arrays.asList(temporalFieldArr));
        if (Jdk8Methods.equals(this.resolverFields, hashSet)) {
            return this;
        }
        return new DateTimeFormatter(this.printerParser, this.locale, this.decimalStyle, this.resolverStyle, Collections.unmodifiableSet(hashSet), this.chrono, this.zone);
    }

    public DateTimeFormatter withResolverStyle(ResolverStyle resolverStyle) {
        Jdk8Methods.requireNonNull(resolverStyle, "resolverStyle");
        return Jdk8Methods.equals(this.resolverStyle, resolverStyle) ? this : new DateTimeFormatter(this.printerParser, this.locale, this.decimalStyle, resolverStyle, this.resolverFields, this.chrono, this.zone);
    }

    public DateTimeFormatter withZone(ZoneId zoneId) {
        return Jdk8Methods.equals(this.zone, zoneId) ? this : new DateTimeFormatter(this.printerParser, this.locale, this.decimalStyle, this.resolverStyle, this.resolverFields, this.chrono, zoneId);
    }
}
