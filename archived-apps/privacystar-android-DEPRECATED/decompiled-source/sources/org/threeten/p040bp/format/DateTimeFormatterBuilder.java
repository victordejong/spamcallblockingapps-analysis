package org.threeten.p040bp.format;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import org.apache.commons.cli.HelpFormatter;
import org.spongycastle.apache.bzip2.BZip2Constants;
import org.threeten.p040bp.DateTimeException;
import org.threeten.p040bp.Instant;
import org.threeten.p040bp.LocalDate;
import org.threeten.p040bp.LocalDateTime;
import org.threeten.p040bp.ZoneId;
import org.threeten.p040bp.ZoneOffset;
import org.threeten.p040bp.chrono.ChronoLocalDate;
import org.threeten.p040bp.chrono.Chronology;
import org.threeten.p040bp.format.SimpleDateTimeTextProvider;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.ChronoField;
import org.threeten.p040bp.temporal.IsoFields;
import org.threeten.p040bp.temporal.TemporalAccessor;
import org.threeten.p040bp.temporal.TemporalField;
import org.threeten.p040bp.temporal.TemporalQueries;
import org.threeten.p040bp.temporal.TemporalQuery;
import org.threeten.p040bp.temporal.ValueRange;
import org.threeten.p040bp.temporal.WeekFields;
/* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder.class */
public final class DateTimeFormatterBuilder {
    private DateTimeFormatterBuilder active;
    private final boolean optional;
    private char padNextChar;
    private int padNextWidth;
    private final DateTimeFormatterBuilder parent;
    private final List<DateTimePrinterParser> printerParsers;
    private int valueParserIndex;
    private static final TemporalQuery<ZoneId> QUERY_REGION_ONLY = new TemporalQuery<ZoneId>() { // from class: org.threeten.bp.format.DateTimeFormatterBuilder.1
        @Override // org.threeten.p040bp.temporal.TemporalQuery
        public ZoneId queryFrom(TemporalAccessor temporalAccessor) {
            ZoneId zoneId = (ZoneId) temporalAccessor.query(TemporalQueries.zoneId());
            if (zoneId == null || (zoneId instanceof ZoneOffset)) {
                zoneId = null;
            }
            return zoneId;
        }
    };
    private static final Map<Character, TemporalField> FIELD_MAP = new HashMap();
    static final Comparator<String> LENGTH_SORT = new Comparator<String>() { // from class: org.threeten.bp.format.DateTimeFormatterBuilder.3
        public int compare(String str, String str2) {
            return str.length() == str2.length() ? str.compareTo(str2) : str.length() - str2.length();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$4 */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$4.class */
    public static /* synthetic */ class C25364 {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$format$SignStyle = new int[SignStyle.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$org$threeten$bp$format$SignStyle[SignStyle.EXCEEDS_PAD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$threeten$bp$format$SignStyle[SignStyle.ALWAYS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$threeten$bp$format$SignStyle[SignStyle.NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$threeten$bp$format$SignStyle[SignStyle.NOT_NEGATIVE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$CharLiteralPrinterParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser.class */
    public static final class CharLiteralPrinterParser implements DateTimePrinterParser {
        private final char literal;

        CharLiteralPrinterParser(char c) {
            this.literal = c;
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i) {
            if (i == charSequence.length()) {
                return i ^ (-1);
            }
            return !dateTimeParseContext.charEquals(this.literal, charSequence.charAt(i)) ? i ^ (-1) : i + 1;
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            sb.append(this.literal);
            return true;
        }

        public String toString() {
            if (this.literal == '\'') {
                return "''";
            }
            return "'" + this.literal + "'";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$ChronoPrinterParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$ChronoPrinterParser.class */
    public static final class ChronoPrinterParser implements DateTimePrinterParser {
        private final TextStyle textStyle;

        ChronoPrinterParser(TextStyle textStyle) {
            this.textStyle = textStyle;
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i) {
            if (i < 0 || i > charSequence.length()) {
                throw new IndexOutOfBoundsException();
            }
            Chronology chronology = null;
            int i2 = -1;
            for (Chronology chronology2 : Chronology.getAvailableChronologies()) {
                String id = chronology2.getId();
                int length = id.length();
                if (length > i2 && dateTimeParseContext.subSequenceEquals(charSequence, i, id, 0, length)) {
                    chronology = chronology2;
                    i2 = length;
                }
            }
            if (chronology == null) {
                return i ^ (-1);
            }
            dateTimeParseContext.setParsed(chronology);
            return i + i2;
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            Chronology chronology = (Chronology) dateTimePrintContext.getValue(TemporalQueries.chronology());
            if (chronology == null) {
                return false;
            }
            if (this.textStyle == null) {
                sb.append(chronology.getId());
                return true;
            }
            try {
                sb.append(ResourceBundle.getBundle("org.threeten.bp.format.ChronologyText", dateTimePrintContext.getLocale(), DateTimeFormatterBuilder.class.getClassLoader()).getString(chronology.getId()));
                return true;
            } catch (MissingResourceException e) {
                sb.append(chronology.getId());
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$CompositePrinterParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser.class */
    public static final class CompositePrinterParser implements DateTimePrinterParser {
        private final boolean optional;
        private final DateTimePrinterParser[] printerParsers;

        CompositePrinterParser(List<DateTimePrinterParser> list, boolean z) {
            this((DateTimePrinterParser[]) list.toArray(new DateTimePrinterParser[list.size()]), z);
        }

        CompositePrinterParser(DateTimePrinterParser[] dateTimePrinterParserArr, boolean z) {
            this.printerParsers = dateTimePrinterParserArr;
            this.optional = z;
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i) {
            int i2;
            int i3 = 0;
            if (this.optional) {
                dateTimeParseContext.startOptional();
                int i4 = i;
                for (DateTimePrinterParser dateTimePrinterParser : this.printerParsers) {
                    i4 = dateTimePrinterParser.parse(dateTimeParseContext, charSequence, i4);
                    if (i4 < 0) {
                        dateTimeParseContext.endOptional(false);
                        return i;
                    }
                }
                dateTimeParseContext.endOptional(true);
                return i4;
            }
            DateTimePrinterParser[] dateTimePrinterParserArr = this.printerParsers;
            int length = dateTimePrinterParserArr.length;
            while (true) {
                i2 = i;
                if (i3 >= length) {
                    break;
                }
                i = dateTimePrinterParserArr[i3].parse(dateTimeParseContext, charSequence, i);
                if (i < 0) {
                    i2 = i;
                    break;
                }
                i3++;
            }
            return i2;
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            int length = sb.length();
            if (this.optional) {
                dateTimePrintContext.startOptional();
            }
            try {
                for (DateTimePrinterParser dateTimePrinterParser : this.printerParsers) {
                    if (!dateTimePrinterParser.print(dateTimePrintContext, sb)) {
                        sb.setLength(length);
                        if (!this.optional) {
                            return true;
                        }
                        dateTimePrintContext.endOptional();
                        return true;
                    }
                }
                if (!this.optional) {
                    return true;
                }
                dateTimePrintContext.endOptional();
                return true;
            } catch (Throwable th) {
                if (this.optional) {
                    dateTimePrintContext.endOptional();
                }
                throw th;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.printerParsers != null) {
                sb.append(this.optional ? "[" : "(");
                for (DateTimePrinterParser dateTimePrinterParser : this.printerParsers) {
                    sb.append(dateTimePrinterParser);
                }
                sb.append(this.optional ? "]" : ")");
            }
            return sb.toString();
        }

        public CompositePrinterParser withOptional(boolean z) {
            return z == this.optional ? this : new CompositePrinterParser(this.printerParsers, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$DateTimePrinterParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser.class */
    public interface DateTimePrinterParser {
        int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i);

        boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb);
    }

    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$DefaultingParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$DefaultingParser.class */
    static class DefaultingParser implements DateTimePrinterParser {
        private final TemporalField field;
        private final long value;

        DefaultingParser(TemporalField temporalField, long j) {
            this.field = temporalField;
            this.value = j;
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i) {
            if (dateTimeParseContext.getParsed(this.field) == null) {
                dateTimeParseContext.setParsedField(this.field, this.value, i, i);
            }
            return i;
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$FractionPrinterParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser.class */
    public static final class FractionPrinterParser implements DateTimePrinterParser {
        private final boolean decimalPoint;
        private final TemporalField field;
        private final int maxWidth;
        private final int minWidth;

        FractionPrinterParser(TemporalField temporalField, int i, int i2, boolean z) {
            Jdk8Methods.requireNonNull(temporalField, "field");
            if (!temporalField.range().isFixed()) {
                throw new IllegalArgumentException("Field must have a fixed set of values: " + temporalField);
            } else if (i < 0 || i > 9) {
                throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i);
            } else if (i2 < 1 || i2 > 9) {
                throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i2);
            } else if (i2 < i) {
                throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
            } else {
                this.field = temporalField;
                this.minWidth = i;
                this.maxWidth = i2;
                this.decimalPoint = z;
            }
        }

        private long convertFromFraction(BigDecimal bigDecimal) {
            ValueRange range = this.field.range();
            BigDecimal valueOf = BigDecimal.valueOf(range.getMinimum());
            return bigDecimal.multiply(BigDecimal.valueOf(range.getMaximum()).subtract(valueOf).add(BigDecimal.ONE)).setScale(0, RoundingMode.FLOOR).add(valueOf).longValueExact();
        }

        private BigDecimal convertToFraction(long j) {
            ValueRange range = this.field.range();
            range.checkValidValue(j, this.field);
            BigDecimal valueOf = BigDecimal.valueOf(range.getMinimum());
            BigDecimal divide = BigDecimal.valueOf(j).subtract(valueOf).divide(BigDecimal.valueOf(range.getMaximum()).subtract(valueOf).add(BigDecimal.ONE), 9, RoundingMode.FLOOR);
            return divide.compareTo(BigDecimal.ZERO) == 0 ? BigDecimal.ZERO : divide.stripTrailingZeros();
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i) {
            int i2 = dateTimeParseContext.isStrict() ? this.minWidth : 0;
            int i3 = dateTimeParseContext.isStrict() ? this.maxWidth : 9;
            int length = charSequence.length();
            if (i == length) {
                int i4 = i;
                if (i2 > 0) {
                    i4 = i ^ (-1);
                }
                return i4;
            }
            int i5 = i;
            if (this.decimalPoint) {
                if (charSequence.charAt(i) != dateTimeParseContext.getSymbols().getDecimalSeparator()) {
                    int i6 = i;
                    if (i2 > 0) {
                        i6 = i ^ (-1);
                    }
                    return i6;
                }
                i5 = i + 1;
            }
            int i7 = i2 + i5;
            if (i7 > length) {
                return i5 ^ (-1);
            }
            int min = Math.min(i3 + i5, length);
            int i8 = i5;
            int i9 = 0;
            while (true) {
                if (i8 >= min) {
                    break;
                }
                int i10 = i8 + 1;
                int convertToDigit = dateTimeParseContext.getSymbols().convertToDigit(charSequence.charAt(i8));
                if (convertToDigit >= 0) {
                    i9 = (i9 * 10) + convertToDigit;
                    i8 = i10;
                } else if (i10 < i7) {
                    return i5 ^ (-1);
                } else {
                    i8 = i10 - 1;
                }
            }
            return dateTimeParseContext.setParsedField(this.field, convertFromFraction(new BigDecimal(i9).movePointLeft(i8 - i5)), i5, i8);
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            Long value = dateTimePrintContext.getValue(this.field);
            if (value == null) {
                return false;
            }
            DecimalStyle symbols = dateTimePrintContext.getSymbols();
            BigDecimal convertToFraction = convertToFraction(value.longValue());
            if (convertToFraction.scale() != 0) {
                String convertNumberToI18N = symbols.convertNumberToI18N(convertToFraction.setScale(Math.min(Math.max(convertToFraction.scale(), this.minWidth), this.maxWidth), RoundingMode.FLOOR).toPlainString().substring(2));
                if (this.decimalPoint) {
                    sb.append(symbols.getDecimalSeparator());
                }
                sb.append(convertNumberToI18N);
                return true;
            } else if (this.minWidth <= 0) {
                return true;
            } else {
                int i = 0;
                if (this.decimalPoint) {
                    sb.append(symbols.getDecimalSeparator());
                    i = 0;
                }
                while (i < this.minWidth) {
                    sb.append(symbols.getZeroDigit());
                    i++;
                }
                return true;
            }
        }

        public String toString() {
            String str = this.decimalPoint ? ",DecimalPoint" : "";
            return "Fraction(" + this.field + "," + this.minWidth + "," + this.maxWidth + str + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$InstantPrinterParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser.class */
    public static final class InstantPrinterParser implements DateTimePrinterParser {
        private static final long SECONDS_0000_TO_1970 = 62167219200L;
        private static final long SECONDS_PER_10000_YEARS = 315569520000L;
        private final int fractionalDigits;

        InstantPrinterParser(int i) {
            this.fractionalDigits = i;
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i) {
            DateTimeParseContext copy = dateTimeParseContext.copy();
            int i2 = 0;
            int parse = new DateTimeFormatterBuilder().append(DateTimeFormatter.ISO_LOCAL_DATE).appendLiteral('T').appendValue(ChronoField.HOUR_OF_DAY, 2).appendLiteral(':').appendValue(ChronoField.MINUTE_OF_HOUR, 2).appendLiteral(':').appendValue(ChronoField.SECOND_OF_MINUTE, 2).appendFraction(ChronoField.NANO_OF_SECOND, this.fractionalDigits < 0 ? 0 : this.fractionalDigits, this.fractionalDigits < 0 ? 9 : this.fractionalDigits, true).appendLiteral('Z').toFormatter().toPrinterParser(false).parse(copy, charSequence, i);
            if (parse < 0) {
                return parse;
            }
            long longValue = copy.getParsed(ChronoField.YEAR).longValue();
            int intValue = copy.getParsed(ChronoField.MONTH_OF_YEAR).intValue();
            int intValue2 = copy.getParsed(ChronoField.DAY_OF_MONTH).intValue();
            int intValue3 = copy.getParsed(ChronoField.HOUR_OF_DAY).intValue();
            int intValue4 = copy.getParsed(ChronoField.MINUTE_OF_HOUR).intValue();
            Long parsed = copy.getParsed(ChronoField.SECOND_OF_MINUTE);
            Long parsed2 = copy.getParsed(ChronoField.NANO_OF_SECOND);
            int intValue5 = parsed != null ? parsed.intValue() : 0;
            int intValue6 = parsed2 != null ? parsed2.intValue() : 0;
            int i3 = (int) longValue;
            if (intValue3 == 24 && intValue4 == 0 && intValue5 == 0 && intValue6 == 0) {
                intValue3 = 0;
                i2 = 1;
            } else if (intValue3 == 23 && intValue4 == 59 && intValue5 == 60) {
                dateTimeParseContext.setParsedLeapSecond();
                intValue5 = 59;
            }
            try {
                return dateTimeParseContext.setParsedField(ChronoField.NANO_OF_SECOND, intValue6, i, dateTimeParseContext.setParsedField(ChronoField.INSTANT_SECONDS, LocalDateTime.m87of(i3 % 10000, intValue, intValue2, intValue3, intValue4, intValue5, 0).plusDays(i2).toEpochSecond(ZoneOffset.UTC) + Jdk8Methods.safeMultiply(longValue / 10000, (long) SECONDS_PER_10000_YEARS), i, parse));
            } catch (RuntimeException e) {
                return i ^ (-1);
            }
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            Long value = dateTimePrintContext.getValue(ChronoField.INSTANT_SECONDS);
            Long l = 0L;
            if (dateTimePrintContext.getTemporal().isSupported(ChronoField.NANO_OF_SECOND)) {
                l = Long.valueOf(dateTimePrintContext.getTemporal().getLong(ChronoField.NANO_OF_SECOND));
            }
            int i = 0;
            if (value == null) {
                return false;
            }
            long longValue = value.longValue();
            int checkValidIntValue = ChronoField.NANO_OF_SECOND.checkValidIntValue(l.longValue());
            if (longValue >= -62167219200L) {
                long j = (longValue - SECONDS_PER_10000_YEARS) + SECONDS_0000_TO_1970;
                long floorDiv = Jdk8Methods.floorDiv(j, (long) SECONDS_PER_10000_YEARS) + 1;
                LocalDateTime ofEpochSecond = LocalDateTime.ofEpochSecond(Jdk8Methods.floorMod(j, (long) SECONDS_PER_10000_YEARS) - SECONDS_0000_TO_1970, 0, ZoneOffset.UTC);
                if (floorDiv > 0) {
                    sb.append('+');
                    sb.append(floorDiv);
                }
                sb.append(ofEpochSecond);
                if (ofEpochSecond.getSecond() == 0) {
                    sb.append(":00");
                }
            } else {
                long j2 = longValue + SECONDS_0000_TO_1970;
                long j3 = j2 / SECONDS_PER_10000_YEARS;
                long j4 = j2 % SECONDS_PER_10000_YEARS;
                LocalDateTime ofEpochSecond2 = LocalDateTime.ofEpochSecond(j4 - SECONDS_0000_TO_1970, 0, ZoneOffset.UTC);
                int length = sb.length();
                sb.append(ofEpochSecond2);
                if (ofEpochSecond2.getSecond() == 0) {
                    sb.append(":00");
                }
                if (j3 < 0) {
                    if (ofEpochSecond2.getYear() == -10000) {
                        sb.replace(length, length + 2, Long.toString(j3 - 1));
                    } else if (j4 == 0) {
                        sb.insert(length, j3);
                    } else {
                        sb.insert(length + 1, Math.abs(j3));
                    }
                }
            }
            if (this.fractionalDigits == -2) {
                if (checkValidIntValue != 0) {
                    sb.append('.');
                    if (checkValidIntValue % 1000000 == 0) {
                        sb.append(Integer.toString((checkValidIntValue / 1000000) + 1000).substring(1));
                    } else if (checkValidIntValue % 1000 == 0) {
                        sb.append(Integer.toString((checkValidIntValue / 1000) + 1000000).substring(1));
                    } else {
                        sb.append(Integer.toString(checkValidIntValue + 1000000000).substring(1));
                    }
                }
            } else if (this.fractionalDigits > 0 || (this.fractionalDigits == -1 && checkValidIntValue > 0)) {
                sb.append('.');
                int i2 = 100000000;
                while (true) {
                    if ((this.fractionalDigits != -1 || checkValidIntValue <= 0) && i >= this.fractionalDigits) {
                        break;
                    }
                    int i3 = checkValidIntValue / i2;
                    sb.append((char) (i3 + 48));
                    checkValidIntValue -= i3 * i2;
                    i2 /= 10;
                    i++;
                }
            }
            sb.append('Z');
            return true;
        }

        public String toString() {
            return "Instant()";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$LocalizedOffsetPrinterParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser.class */
    public static final class LocalizedOffsetPrinterParser implements DateTimePrinterParser {
        private final TextStyle style;

        public LocalizedOffsetPrinterParser(TextStyle textStyle) {
            this.style = textStyle;
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i) {
            if (!dateTimeParseContext.subSequenceEquals(charSequence, i, "GMT", 0, 3)) {
                return i ^ (-1);
            }
            int i2 = i + 3;
            if (this.style == TextStyle.FULL) {
                return new OffsetIdPrinterParser("", "+HH:MM:ss").parse(dateTimeParseContext, charSequence, i2);
            }
            int length = charSequence.length();
            if (i2 == length) {
                return dateTimeParseContext.setParsedField(ChronoField.OFFSET_SECONDS, 0L, i2, i2);
            }
            char charAt = charSequence.charAt(i2);
            if (charAt != '+' && charAt != '-') {
                return dateTimeParseContext.setParsedField(ChronoField.OFFSET_SECONDS, 0L, i2, i2);
            }
            int i3 = charAt == '-' ? -1 : 1;
            if (i2 == length) {
                return i2 ^ (-1);
            }
            int i4 = i2 + 1;
            char charAt2 = charSequence.charAt(i4);
            if (charAt2 < '0' || charAt2 > '9') {
                return i4 ^ (-1);
            }
            int i5 = i4 + 1;
            int i6 = charAt2 - '0';
            int i7 = i5;
            int i8 = i6;
            if (i5 != length) {
                char charAt3 = charSequence.charAt(i5);
                i7 = i5;
                i8 = i6;
                if (charAt3 >= '0') {
                    i7 = i5;
                    i8 = i6;
                    if (charAt3 <= '9') {
                        i8 = (i6 * 10) + (charAt3 - '0');
                        if (i8 > 23) {
                            return i5 ^ (-1);
                        }
                        i7 = i5 + 1;
                    }
                }
            }
            if (i7 == length || charSequence.charAt(i7) != ':') {
                return dateTimeParseContext.setParsedField(ChronoField.OFFSET_SECONDS, i3 * 3600 * i8, i7, i7);
            }
            int i9 = i7 + 1;
            int i10 = length - 2;
            if (i9 > i10) {
                return i9 ^ (-1);
            }
            char charAt4 = charSequence.charAt(i9);
            if (charAt4 < '0' || charAt4 > '9') {
                return i9 ^ (-1);
            }
            int i11 = i9 + 1;
            char charAt5 = charSequence.charAt(i11);
            if (charAt5 < '0' || charAt5 > '9') {
                return i11 ^ (-1);
            }
            int i12 = i11 + 1;
            int i13 = ((charAt4 - '0') * 10) + (charAt5 - '0');
            if (i13 > 59) {
                return i12 ^ (-1);
            }
            if (i12 == length || charSequence.charAt(i12) != ':') {
                return dateTimeParseContext.setParsedField(ChronoField.OFFSET_SECONDS, i3 * ((i8 * 3600) + (i13 * 60)), i12, i12);
            }
            int i14 = i12 + 1;
            if (i14 > i10) {
                return i14 ^ (-1);
            }
            char charAt6 = charSequence.charAt(i14);
            if (charAt6 < '0' || charAt6 > '9') {
                return i14 ^ (-1);
            }
            int i15 = i14 + 1;
            char charAt7 = charSequence.charAt(i15);
            if (charAt7 < '0' || charAt7 > '9') {
                return i15 ^ (-1);
            }
            int i16 = i15 + 1;
            int i17 = ((charAt6 - '0') * 10) + (charAt7 - '0');
            return i17 > 59 ? i16 ^ (-1) : dateTimeParseContext.setParsedField(ChronoField.OFFSET_SECONDS, i3 * ((i8 * 3600) + (i13 * 60) + i17), i16, i16);
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            Long value = dateTimePrintContext.getValue(ChronoField.OFFSET_SECONDS);
            if (value == null) {
                return false;
            }
            sb.append("GMT");
            if (this.style == TextStyle.FULL) {
                return new OffsetIdPrinterParser("", "+HH:MM:ss").print(dateTimePrintContext, sb);
            }
            int safeToInt = Jdk8Methods.safeToInt(value.longValue());
            if (safeToInt == 0) {
                return true;
            }
            int abs = Math.abs((safeToInt / 3600) % 100);
            int abs2 = Math.abs((safeToInt / 60) % 60);
            int abs3 = Math.abs(safeToInt % 60);
            sb.append(safeToInt < 0 ? HelpFormatter.DEFAULT_OPT_PREFIX : "+");
            sb.append(abs);
            if (abs2 <= 0 && abs3 <= 0) {
                return true;
            }
            sb.append(":");
            sb.append((char) ((abs2 / 10) + 48));
            sb.append((char) ((abs2 % 10) + 48));
            if (abs3 <= 0) {
                return true;
            }
            sb.append(":");
            sb.append((char) ((abs3 / 10) + 48));
            sb.append((char) ((abs3 % 10) + 48));
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$LocalizedPrinterParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$LocalizedPrinterParser.class */
    public static final class LocalizedPrinterParser implements DateTimePrinterParser {
        private final FormatStyle dateStyle;
        private final FormatStyle timeStyle;

        LocalizedPrinterParser(FormatStyle formatStyle, FormatStyle formatStyle2) {
            this.dateStyle = formatStyle;
            this.timeStyle = formatStyle2;
        }

        private DateTimeFormatter formatter(Locale locale, Chronology chronology) {
            return DateTimeFormatStyleProvider.getInstance().getFormatter(this.dateStyle, this.timeStyle, chronology, locale);
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i) {
            return formatter(dateTimeParseContext.getLocale(), dateTimeParseContext.getEffectiveChronology()).toPrinterParser(false).parse(dateTimeParseContext, charSequence, i);
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            return formatter(dateTimePrintContext.getLocale(), Chronology.from(dateTimePrintContext.getTemporal())).toPrinterParser(false).print(dateTimePrintContext, sb);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("Localized(");
            sb.append(this.dateStyle != null ? this.dateStyle : "");
            sb.append(",");
            sb.append(this.timeStyle != null ? this.timeStyle : "");
            sb.append(")");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$NumberPrinterParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser.class */
    public static class NumberPrinterParser implements DateTimePrinterParser {
        static final int[] EXCEED_POINTS = {0, 10, 100, 1000, 10000, BZip2Constants.baseBlockSize, 1000000, 10000000, 100000000, 1000000000};
        final TemporalField field;
        final int maxWidth;
        final int minWidth;
        final SignStyle signStyle;
        final int subsequentWidth;

        NumberPrinterParser(TemporalField temporalField, int i, int i2, SignStyle signStyle) {
            this.field = temporalField;
            this.minWidth = i;
            this.maxWidth = i2;
            this.signStyle = signStyle;
            this.subsequentWidth = 0;
        }

        private NumberPrinterParser(TemporalField temporalField, int i, int i2, SignStyle signStyle, int i3) {
            this.field = temporalField;
            this.minWidth = i;
            this.maxWidth = i2;
            this.signStyle = signStyle;
            this.subsequentWidth = i3;
        }

        long getValue(DateTimePrintContext dateTimePrintContext, long j) {
            return j;
        }

        boolean isFixedWidth(DateTimeParseContext dateTimeParseContext) {
            return this.subsequentWidth == -1 || (this.subsequentWidth > 0 && this.minWidth == this.maxWidth && this.signStyle == SignStyle.NOT_NEGATIVE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:77:0x01ec, code lost:
            r13 = r12;
            r9 = r15;
         */
        /* JADX WARN: Removed duplicated region for block: B:114:0x028f  */
        /* JADX WARN: Removed duplicated region for block: B:119:0x02bc  */
        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int parse(org.threeten.p040bp.format.DateTimeParseContext r8, java.lang.CharSequence r9, int r10) {
            /*
                Method dump skipped, instructions count: 711
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.format.DateTimeFormatterBuilder.NumberPrinterParser.parse(org.threeten.bp.format.DateTimeParseContext, java.lang.CharSequence, int):int");
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            int i;
            Long value = dateTimePrintContext.getValue(this.field);
            if (value == null) {
                return false;
            }
            long value2 = getValue(dateTimePrintContext, value.longValue());
            DecimalStyle symbols = dateTimePrintContext.getSymbols();
            String l = value2 == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(value2));
            if (l.length() > this.maxWidth) {
                throw new DateTimeException("Field " + this.field + " cannot be printed as the value " + value2 + " exceeds the maximum print width of " + this.maxWidth);
            }
            String convertNumberToI18N = symbols.convertNumberToI18N(l);
            if (value2 < 0) {
                switch (C25364.$SwitchMap$org$threeten$bp$format$SignStyle[this.signStyle.ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                        sb.append(symbols.getNegativeSign());
                        i = 0;
                        break;
                    case 4:
                        throw new DateTimeException("Field " + this.field + " cannot be printed as the value " + value2 + " cannot be negative according to the SignStyle");
                    default:
                        i = 0;
                        break;
                }
            } else {
                switch (C25364.$SwitchMap$org$threeten$bp$format$SignStyle[this.signStyle.ordinal()]) {
                    case 1:
                        i = 0;
                        if (this.minWidth < 19) {
                            i = 0;
                            if (value2 >= EXCEED_POINTS[this.minWidth]) {
                                sb.append(symbols.getPositiveSign());
                                i = 0;
                                break;
                            }
                        }
                        break;
                    case 2:
                        sb.append(symbols.getPositiveSign());
                        i = 0;
                        break;
                    default:
                        i = 0;
                        break;
                }
            }
            while (i < this.minWidth - convertNumberToI18N.length()) {
                sb.append(symbols.getZeroDigit());
                i++;
            }
            sb.append(convertNumberToI18N);
            return true;
        }

        int setValue(DateTimeParseContext dateTimeParseContext, long j, int i, int i2) {
            return dateTimeParseContext.setParsedField(this.field, j, i, i2);
        }

        public String toString() {
            if (this.minWidth == 1 && this.maxWidth == 19 && this.signStyle == SignStyle.NORMAL) {
                return "Value(" + this.field + ")";
            } else if (this.minWidth == this.maxWidth && this.signStyle == SignStyle.NOT_NEGATIVE) {
                return "Value(" + this.field + "," + this.minWidth + ")";
            } else {
                return "Value(" + this.field + "," + this.minWidth + "," + this.maxWidth + "," + this.signStyle + ")";
            }
        }

        NumberPrinterParser withFixedWidth() {
            return this.subsequentWidth == -1 ? this : new NumberPrinterParser(this.field, this.minWidth, this.maxWidth, this.signStyle, -1);
        }

        NumberPrinterParser withSubsequentWidth(int i) {
            return new NumberPrinterParser(this.field, this.minWidth, this.maxWidth, this.signStyle, this.subsequentWidth + i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$OffsetIdPrinterParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser.class */
    public static final class OffsetIdPrinterParser implements DateTimePrinterParser {
        private final String noOffsetText;
        private final int type;
        static final String[] PATTERNS = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS"};
        static final OffsetIdPrinterParser INSTANCE_ID = new OffsetIdPrinterParser("Z", "+HH:MM:ss");

        OffsetIdPrinterParser(String str, String str2) {
            Jdk8Methods.requireNonNull(str, "noOffsetText");
            Jdk8Methods.requireNonNull(str2, "pattern");
            this.noOffsetText = str;
            this.type = checkPattern(str2);
        }

        private int checkPattern(String str) {
            for (int i = 0; i < PATTERNS.length; i++) {
                if (PATTERNS[i].equals(str)) {
                    return i;
                }
            }
            throw new IllegalArgumentException("Invalid zone offset pattern: " + str);
        }

        private boolean parseNumber(int[] iArr, int i, CharSequence charSequence, boolean z) {
            if ((this.type + 3) / 2 < i) {
                return false;
            }
            int i2 = iArr[0];
            int i3 = i2;
            if (this.type % 2 == 0) {
                i3 = i2;
                if (i > 1) {
                    i3 = i2 + 1;
                    if (i3 > charSequence.length() || charSequence.charAt(i2) != ':') {
                        return z;
                    }
                }
            }
            if (i3 + 2 > charSequence.length()) {
                return z;
            }
            int i4 = i3 + 1;
            char charAt = charSequence.charAt(i3);
            char charAt2 = charSequence.charAt(i4);
            if (charAt < '0' || charAt > '9' || charAt2 < '0' || charAt2 > '9') {
                return z;
            }
            int i5 = ((charAt - '0') * 10) + (charAt2 - '0');
            if (i5 < 0 || i5 > 59) {
                return z;
            }
            iArr[i] = i5;
            iArr[0] = i4 + 1;
            return false;
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x00c9  */
        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int parse(org.threeten.p040bp.format.DateTimeParseContext r12, java.lang.CharSequence r13, int r14) {
            /*
                Method dump skipped, instructions count: 282
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.format.DateTimeFormatterBuilder.OffsetIdPrinterParser.parse(org.threeten.bp.format.DateTimeParseContext, java.lang.CharSequence, int):int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0095, code lost:
            if (r0 > 0) goto L_0x0098;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x00ec, code lost:
            if (r0 > 0) goto L_0x00ef;
         */
        /* JADX WARN: Removed duplicated region for block: B:35:0x012d  */
        /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean print(org.threeten.p040bp.format.DateTimePrintContext r5, java.lang.StringBuilder r6) {
            /*
                Method dump skipped, instructions count: 318
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.format.DateTimeFormatterBuilder.OffsetIdPrinterParser.print(org.threeten.bp.format.DateTimePrintContext, java.lang.StringBuilder):boolean");
        }

        public String toString() {
            String replace = this.noOffsetText.replace("'", "''");
            return "Offset(" + PATTERNS[this.type] + ",'" + replace + "')";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$PadPrinterParserDecorator */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator.class */
    public static final class PadPrinterParserDecorator implements DateTimePrinterParser {
        private final char padChar;
        private final int padWidth;
        private final DateTimePrinterParser printerParser;

        PadPrinterParserDecorator(DateTimePrinterParser dateTimePrinterParser, int i, char c) {
            this.printerParser = dateTimePrinterParser;
            this.padWidth = i;
            this.padChar = c;
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i) {
            boolean isStrict = dateTimeParseContext.isStrict();
            boolean isCaseSensitive = dateTimeParseContext.isCaseSensitive();
            if (i > charSequence.length()) {
                throw new IndexOutOfBoundsException();
            } else if (i == charSequence.length()) {
                return i ^ (-1);
            } else {
                int i2 = this.padWidth + i;
                int i3 = i2;
                if (i2 > charSequence.length()) {
                    if (isStrict) {
                        return i ^ (-1);
                    }
                    i3 = charSequence.length();
                }
                int i4 = i;
                while (i4 < i3) {
                    if (!isCaseSensitive) {
                        if (!dateTimeParseContext.charEquals(charSequence.charAt(i4), this.padChar)) {
                            break;
                        }
                        i4++;
                    } else if (charSequence.charAt(i4) != this.padChar) {
                        break;
                    } else {
                        i4++;
                    }
                }
                int parse = this.printerParser.parse(dateTimeParseContext, charSequence.subSequence(0, i3), i4);
                return (parse == i3 || !isStrict) ? parse : (i + i4) ^ (-1);
            }
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            int length = sb.length();
            if (!this.printerParser.print(dateTimePrintContext, sb)) {
                return false;
            }
            int length2 = sb.length() - length;
            if (length2 > this.padWidth) {
                throw new DateTimeException("Cannot print as output of " + length2 + " characters exceeds pad width of " + this.padWidth);
            }
            for (int i = 0; i < this.padWidth - length2; i++) {
                sb.insert(length, this.padChar);
            }
            return true;
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("Pad(");
            sb.append(this.printerParser);
            sb.append(",");
            sb.append(this.padWidth);
            if (this.padChar == ' ') {
                str = ")";
            } else {
                str = ",'" + this.padChar + "')";
            }
            sb.append(str);
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$ReducedPrinterParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser.class */
    public static final class ReducedPrinterParser extends NumberPrinterParser {
        static final LocalDate BASE_DATE = LocalDate.m91of(2000, 1, 1);
        private final ChronoLocalDate baseDate;
        private final int baseValue;

        ReducedPrinterParser(TemporalField temporalField, int i, int i2, int i3, ChronoLocalDate chronoLocalDate) {
            super(temporalField, i, i2, SignStyle.NOT_NEGATIVE);
            if (i < 1 || i > 10) {
                throw new IllegalArgumentException("The width must be from 1 to 10 inclusive but was " + i);
            } else if (i2 < 1 || i2 > 10) {
                throw new IllegalArgumentException("The maxWidth must be from 1 to 10 inclusive but was " + i2);
            } else if (i2 < i) {
                throw new IllegalArgumentException("The maxWidth must be greater than the width");
            } else {
                if (chronoLocalDate == null) {
                    long j = i3;
                    if (!temporalField.range().isValidValue(j)) {
                        throw new IllegalArgumentException("The base value must be within the range of the field");
                    } else if (j + EXCEED_POINTS[i] > 2147483647L) {
                        throw new DateTimeException("Unable to add printer-parser as the range exceeds the capacity of an int");
                    }
                }
                this.baseValue = i3;
                this.baseDate = chronoLocalDate;
            }
        }

        private ReducedPrinterParser(TemporalField temporalField, int i, int i2, int i3, ChronoLocalDate chronoLocalDate, int i4) {
            super(temporalField, i, i2, SignStyle.NOT_NEGATIVE, i4);
            this.baseValue = i3;
            this.baseDate = chronoLocalDate;
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.NumberPrinterParser
        long getValue(DateTimePrintContext dateTimePrintContext, long j) {
            long abs = Math.abs(j);
            int i = this.baseValue;
            if (this.baseDate != null) {
                i = Chronology.from(dateTimePrintContext.getTemporal()).date(this.baseDate).get(this.field);
            }
            return (j < ((long) i) || j >= ((long) (i + EXCEED_POINTS[this.minWidth]))) ? abs % EXCEED_POINTS[this.maxWidth] : abs % EXCEED_POINTS[this.minWidth];
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.NumberPrinterParser
        boolean isFixedWidth(DateTimeParseContext dateTimeParseContext) {
            if (!dateTimeParseContext.isStrict()) {
                return false;
            }
            return super.isFixedWidth(dateTimeParseContext);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v1, types: [long] */
        /* JADX WARN: Type inference failed for: r14v2 */
        /* JADX WARN: Type inference failed for: r14v4 */
        /* JADX WARN: Type inference failed for: r14v6 */
        /* JADX WARN: Type inference failed for: r8v0, types: [org.threeten.bp.format.DateTimeParseContext] */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* JADX WARN: Type inference failed for: r9v5 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.NumberPrinterParser
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int setValue(org.threeten.p040bp.format.DateTimeParseContext r8, long r9, int r11, int r12) {
            /*
                r7 = this;
                r0 = r7
                int r0 = r0.baseValue
                r13 = r0
                r0 = r7
                org.threeten.bp.chrono.ChronoLocalDate r0 = r0.baseDate
                if (r0 == 0) goto L_0x002b
                r0 = r8
                org.threeten.bp.chrono.Chronology r0 = r0.getEffectiveChronology()
                r1 = r7
                org.threeten.bp.chrono.ChronoLocalDate r1 = r1.baseDate
                org.threeten.bp.chrono.ChronoLocalDate r0 = r0.date(r1)
                r1 = r7
                org.threeten.bp.temporal.TemporalField r1 = r1.field
                int r0 = r0.get(r1)
                r13 = r0
                r0 = r8
                r1 = r7
                r2 = r9
                r3 = r11
                r4 = r12
                r0.addChronologyChangedParser(r1, r2, r3, r4)
            L_0x002b:
                r0 = r9
                r14 = r0
                r0 = r12
                r1 = r11
                int r0 = r0 - r1
                r1 = r7
                int r1 = r1.minWidth
                if (r0 != r1) goto L_0x0082
                r0 = r9
                r14 = r0
                r0 = r9
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0082
                int[] r0 = org.threeten.p040bp.format.DateTimeFormatterBuilder.ReducedPrinterParser.EXCEED_POINTS
                r1 = r7
                int r1 = r1.minWidth
                r0 = r0[r1]
                long r0 = (long) r0
                r16 = r0
                r0 = r13
                long r0 = (long) r0
                r18 = r0
                r0 = r18
                r1 = r18
                r2 = r16
                long r1 = r1 % r2
                long r0 = r0 - r1
                r14 = r0
                r0 = r13
                if (r0 <= 0) goto L_0x006a
                r0 = r14
                r1 = r9
                long r0 = r0 + r1
                r9 = r0
            L_0x0067:
                goto L_0x0072
            L_0x006a:
                r0 = r14
                r1 = r9
                long r0 = r0 - r1
                r9 = r0
                goto L_0x0067
            L_0x0072:
                r0 = r9
                r14 = r0
                r0 = r9
                r1 = r18
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x0082
                r0 = r9
                r1 = r16
                long r0 = r0 + r1
                r14 = r0
            L_0x0082:
                r0 = r8
                r1 = r7
                org.threeten.bp.temporal.TemporalField r1 = r1.field
                r2 = r14
                r3 = r11
                r4 = r12
                int r0 = r0.setParsedField(r1, r2, r3, r4)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.format.DateTimeFormatterBuilder.ReducedPrinterParser.setValue(org.threeten.bp.format.DateTimeParseContext, long, int, int):int");
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.NumberPrinterParser
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("ReducedValue(");
            sb.append(this.field);
            sb.append(",");
            sb.append(this.minWidth);
            sb.append(",");
            sb.append(this.maxWidth);
            sb.append(",");
            sb.append(this.baseDate != null ? this.baseDate : Integer.valueOf(this.baseValue));
            sb.append(")");
            return sb.toString();
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.NumberPrinterParser
        NumberPrinterParser withFixedWidth() {
            return this.subsequentWidth == -1 ? this : new ReducedPrinterParser(this.field, this.minWidth, this.maxWidth, this.baseValue, this.baseDate, -1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.NumberPrinterParser
        public ReducedPrinterParser withSubsequentWidth(int i) {
            return new ReducedPrinterParser(this.field, this.minWidth, this.maxWidth, this.baseValue, this.baseDate, this.subsequentWidth + i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$SettingsParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser.class */
    public enum SettingsParser implements DateTimePrinterParser {
        SENSITIVE,
        INSENSITIVE,
        STRICT,
        LENIENT;

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i) {
            switch (ordinal()) {
                case 0:
                    dateTimeParseContext.setCaseSensitive(true);
                    break;
                case 1:
                    dateTimeParseContext.setCaseSensitive(false);
                    break;
                case 2:
                    dateTimeParseContext.setStrict(true);
                    break;
                case 3:
                    dateTimeParseContext.setStrict(false);
                    break;
            }
            return i;
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            return true;
        }

        @Override // java.lang.Enum
        public String toString() {
            switch (ordinal()) {
                case 0:
                    return "ParseCaseSensitive(true)";
                case 1:
                    return "ParseCaseSensitive(false)";
                case 2:
                    return "ParseStrict(true)";
                case 3:
                    return "ParseStrict(false)";
                default:
                    throw new IllegalStateException("Unreachable");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$StringLiteralPrinterParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser.class */
    public static final class StringLiteralPrinterParser implements DateTimePrinterParser {
        private final String literal;

        StringLiteralPrinterParser(String str) {
            this.literal = str;
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i) {
            if (i <= charSequence.length() && i >= 0) {
                return !dateTimeParseContext.subSequenceEquals(charSequence, i, this.literal, 0, this.literal.length()) ? i ^ (-1) : i + this.literal.length();
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            sb.append(this.literal);
            return true;
        }

        public String toString() {
            String replace = this.literal.replace("'", "''");
            return "'" + replace + "'";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$TextPrinterParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser.class */
    public static final class TextPrinterParser implements DateTimePrinterParser {
        private final TemporalField field;
        private volatile NumberPrinterParser numberPrinterParser;
        private final DateTimeTextProvider provider;
        private final TextStyle textStyle;

        TextPrinterParser(TemporalField temporalField, TextStyle textStyle, DateTimeTextProvider dateTimeTextProvider) {
            this.field = temporalField;
            this.textStyle = textStyle;
            this.provider = dateTimeTextProvider;
        }

        private NumberPrinterParser numberPrinterParser() {
            if (this.numberPrinterParser == null) {
                this.numberPrinterParser = new NumberPrinterParser(this.field, 1, 19, SignStyle.NORMAL);
            }
            return this.numberPrinterParser;
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i) {
            int length = charSequence.length();
            if (i < 0 || i > length) {
                throw new IndexOutOfBoundsException();
            }
            Iterator<Map.Entry<String, Long>> textIterator = this.provider.getTextIterator(this.field, dateTimeParseContext.isStrict() ? this.textStyle : null, dateTimeParseContext.getLocale());
            if (textIterator != null) {
                while (textIterator.hasNext()) {
                    Map.Entry<String, Long> next = textIterator.next();
                    String key = next.getKey();
                    if (dateTimeParseContext.subSequenceEquals(key, 0, charSequence, i, key.length())) {
                        return dateTimeParseContext.setParsedField(this.field, next.getValue().longValue(), i, i + key.length());
                    }
                }
                if (dateTimeParseContext.isStrict()) {
                    return i ^ (-1);
                }
            }
            return numberPrinterParser().parse(dateTimeParseContext, charSequence, i);
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            Long value = dateTimePrintContext.getValue(this.field);
            if (value == null) {
                return false;
            }
            String text = this.provider.getText(this.field, value.longValue(), this.textStyle, dateTimePrintContext.getLocale());
            if (text == null) {
                return numberPrinterParser().print(dateTimePrintContext, sb);
            }
            sb.append(text);
            return true;
        }

        public String toString() {
            if (this.textStyle == TextStyle.FULL) {
                return "Text(" + this.field + ")";
            }
            return "Text(" + this.field + "," + this.textStyle + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$WeekFieldsPrinterParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser.class */
    public static final class WeekFieldsPrinterParser implements DateTimePrinterParser {
        private final int count;
        private final char letter;

        public WeekFieldsPrinterParser(char c, int i) {
            this.letter = c;
            this.count = i;
        }

        private DateTimePrinterParser evaluate(WeekFields weekFields) {
            DateTimePrinterParser dateTimePrinterParser;
            char c = this.letter;
            if (c == 'W') {
                dateTimePrinterParser = new NumberPrinterParser(weekFields.weekOfMonth(), 1, 2, SignStyle.NOT_NEGATIVE);
            } else if (c != 'Y') {
                dateTimePrinterParser = c != 'c' ? c != 'e' ? c != 'w' ? null : new NumberPrinterParser(weekFields.weekOfWeekBasedYear(), this.count, 2, SignStyle.NOT_NEGATIVE) : new NumberPrinterParser(weekFields.dayOfWeek(), this.count, 2, SignStyle.NOT_NEGATIVE) : new NumberPrinterParser(weekFields.dayOfWeek(), this.count, 2, SignStyle.NOT_NEGATIVE);
            } else if (this.count == 2) {
                dateTimePrinterParser = new ReducedPrinterParser(weekFields.weekBasedYear(), 2, 2, 0, ReducedPrinterParser.BASE_DATE);
            } else {
                dateTimePrinterParser = new NumberPrinterParser(weekFields.weekBasedYear(), this.count, 19, this.count < 4 ? SignStyle.NORMAL : SignStyle.EXCEEDS_PAD, -1);
            }
            return dateTimePrinterParser;
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i) {
            return evaluate(WeekFields.m43of(dateTimeParseContext.getLocale())).parse(dateTimeParseContext, charSequence, i);
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            return evaluate(WeekFields.m43of(dateTimePrintContext.getLocale())).print(dateTimePrintContext, sb);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Localized(");
            if (this.letter != 'Y') {
                if (this.letter == 'c' || this.letter == 'e') {
                    sb.append("DayOfWeek");
                } else if (this.letter == 'w') {
                    sb.append("WeekOfWeekBasedYear");
                } else if (this.letter == 'W') {
                    sb.append("WeekOfMonth");
                }
                sb.append(",");
                sb.append(this.count);
            } else if (this.count == 1) {
                sb.append("WeekBasedYear");
            } else if (this.count == 2) {
                sb.append("ReducedValue(WeekBasedYear,2,2,2000-01-01)");
            } else {
                sb.append("WeekBasedYear,");
                sb.append(this.count);
                sb.append(",");
                sb.append(19);
                sb.append(",");
                sb.append(this.count < 4 ? SignStyle.NORMAL : SignStyle.EXCEEDS_PAD);
            }
            sb.append(")");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$ZoneIdPrinterParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser.class */
    public static final class ZoneIdPrinterParser implements DateTimePrinterParser {
        private static volatile Map.Entry<Integer, SubstringTree> cachedSubstringTree;
        private final String description;
        private final TemporalQuery<ZoneId> query;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree */
        /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree.class */
        public static final class SubstringTree {
            final int length;
            private final Map<CharSequence, SubstringTree> substringMap;
            private final Map<String, SubstringTree> substringMapCI;

            private SubstringTree(int i) {
                this.substringMap = new HashMap();
                this.substringMapCI = new HashMap();
                this.length = i;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void add(String str) {
                int length = str.length();
                if (length == this.length) {
                    this.substringMap.put(str, null);
                    this.substringMapCI.put(str.toLowerCase(Locale.ENGLISH), null);
                } else if (length > this.length) {
                    String substring = str.substring(0, this.length);
                    SubstringTree substringTree = this.substringMap.get(substring);
                    SubstringTree substringTree2 = substringTree;
                    if (substringTree == null) {
                        substringTree2 = new SubstringTree(length);
                        this.substringMap.put(substring, substringTree2);
                        this.substringMapCI.put(substring.toLowerCase(Locale.ENGLISH), substringTree2);
                    }
                    substringTree2.add(str);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public SubstringTree get(CharSequence charSequence, boolean z) {
                return z ? this.substringMap.get(charSequence) : this.substringMapCI.get(charSequence.toString().toLowerCase(Locale.ENGLISH));
            }
        }

        ZoneIdPrinterParser(TemporalQuery<ZoneId> temporalQuery, String str) {
            this.query = temporalQuery;
            this.description = str;
        }

        private ZoneId convertToZone(Set<String> set, String str, boolean z) {
            ZoneId zoneId = null;
            if (str == null) {
                return null;
            }
            if (z) {
                if (set.contains(str)) {
                    zoneId = ZoneId.m67of(str);
                }
                return zoneId;
            }
            for (String str2 : set) {
                if (str2.equalsIgnoreCase(str)) {
                    return ZoneId.m67of(str2);
                }
            }
            return null;
        }

        private int parsePrefixedOffset(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i, int i2) {
            String upperCase = charSequence.subSequence(i, i2).toString().toUpperCase();
            DateTimeParseContext copy = dateTimeParseContext.copy();
            if (i2 >= charSequence.length() || !dateTimeParseContext.charEquals(charSequence.charAt(i2), 'Z')) {
                int parse = OffsetIdPrinterParser.INSTANCE_ID.parse(copy, charSequence, i2);
                if (parse < 0) {
                    dateTimeParseContext.setParsed(ZoneId.ofOffset(upperCase, ZoneOffset.UTC));
                    return i2;
                }
                dateTimeParseContext.setParsed(ZoneId.ofOffset(upperCase, ZoneOffset.ofTotalSeconds((int) copy.getParsed(ChronoField.OFFSET_SECONDS).longValue())));
                return parse;
            }
            dateTimeParseContext.setParsed(ZoneId.ofOffset(upperCase, ZoneOffset.UTC));
            return i2;
        }

        private static SubstringTree prepareParser(Set<String> set) {
            ArrayList<String> arrayList = new ArrayList(set);
            Collections.sort(arrayList, DateTimeFormatterBuilder.LENGTH_SORT);
            SubstringTree substringTree = new SubstringTree(((String) arrayList.get(0)).length());
            for (String str : arrayList) {
                substringTree.add(str);
            }
            return substringTree;
        }

        /* JADX WARN: Code restructure failed: missing block: B:41:0x0100, code lost:
            if (r0.getKey().intValue() != r0) goto L_0x0103;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0122, code lost:
            if (r0.getKey().intValue() != r0) goto L_0x0125;
         */
        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int parse(org.threeten.p040bp.format.DateTimeParseContext r7, java.lang.CharSequence r8, int r9) {
            /*
                Method dump skipped, instructions count: 531
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.format.DateTimeFormatterBuilder.ZoneIdPrinterParser.parse(org.threeten.bp.format.DateTimeParseContext, java.lang.CharSequence, int):int");
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            ZoneId zoneId = (ZoneId) dateTimePrintContext.getValue(this.query);
            if (zoneId == null) {
                return false;
            }
            sb.append(zoneId.getId());
            return true;
        }

        public String toString() {
            return this.description;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$ZoneTextPrinterParser */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeFormatterBuilder$ZoneTextPrinterParser.class */
    public static final class ZoneTextPrinterParser implements DateTimePrinterParser {
        private static final Comparator<String> LENGTH_COMPARATOR = new Comparator<String>() { // from class: org.threeten.bp.format.DateTimeFormatterBuilder.ZoneTextPrinterParser.1
            public int compare(String str, String str2) {
                int length = str2.length() - str.length();
                int i = length;
                if (length == 0) {
                    i = str.compareTo(str2);
                }
                return i;
            }
        };
        private final TextStyle textStyle;

        ZoneTextPrinterParser(TextStyle textStyle) {
            this.textStyle = (TextStyle) Jdk8Methods.requireNonNull(textStyle, "textStyle");
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i) {
            TreeMap treeMap = new TreeMap(LENGTH_COMPARATOR);
            for (String str : ZoneId.getAvailableZoneIds()) {
                treeMap.put(str, str);
                TimeZone timeZone = TimeZone.getTimeZone(str);
                int i2 = this.textStyle.asNormal() == TextStyle.FULL ? 1 : 0;
                treeMap.put(timeZone.getDisplayName(false, i2, dateTimeParseContext.getLocale()), str);
                treeMap.put(timeZone.getDisplayName(true, i2, dateTimeParseContext.getLocale()), str);
            }
            for (Map.Entry entry : treeMap.entrySet()) {
                String str2 = (String) entry.getKey();
                if (dateTimeParseContext.subSequenceEquals(charSequence, i, str2, 0, str2.length())) {
                    dateTimeParseContext.setParsed(ZoneId.m67of((String) entry.getValue()));
                    return i + str2.length();
                }
            }
            return i ^ (-1);
        }

        @Override // org.threeten.p040bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            boolean z;
            ZoneId zoneId = (ZoneId) dateTimePrintContext.getValue(TemporalQueries.zoneId());
            int i = 0;
            if (zoneId == null) {
                return false;
            }
            if (zoneId.normalized() instanceof ZoneOffset) {
                sb.append(zoneId.getId());
                return true;
            }
            TemporalAccessor temporal = dateTimePrintContext.getTemporal();
            if (temporal.isSupported(ChronoField.INSTANT_SECONDS)) {
                z = zoneId.getRules().isDaylightSavings(Instant.ofEpochSecond(temporal.getLong(ChronoField.INSTANT_SECONDS)));
            } else {
                z = false;
            }
            TimeZone timeZone = TimeZone.getTimeZone(zoneId.getId());
            if (this.textStyle.asNormal() == TextStyle.FULL) {
                i = 1;
            }
            sb.append(timeZone.getDisplayName(z, i, dateTimePrintContext.getLocale()));
            return true;
        }

        public String toString() {
            return "ZoneText(" + this.textStyle + ")";
        }
    }

    static {
        FIELD_MAP.put('G', ChronoField.ERA);
        FIELD_MAP.put('y', ChronoField.YEAR_OF_ERA);
        FIELD_MAP.put('u', ChronoField.YEAR);
        FIELD_MAP.put('Q', IsoFields.QUARTER_OF_YEAR);
        FIELD_MAP.put('q', IsoFields.QUARTER_OF_YEAR);
        FIELD_MAP.put('M', ChronoField.MONTH_OF_YEAR);
        FIELD_MAP.put('L', ChronoField.MONTH_OF_YEAR);
        FIELD_MAP.put('D', ChronoField.DAY_OF_YEAR);
        FIELD_MAP.put('d', ChronoField.DAY_OF_MONTH);
        FIELD_MAP.put('F', ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        FIELD_MAP.put('E', ChronoField.DAY_OF_WEEK);
        FIELD_MAP.put('c', ChronoField.DAY_OF_WEEK);
        FIELD_MAP.put('e', ChronoField.DAY_OF_WEEK);
        FIELD_MAP.put('a', ChronoField.AMPM_OF_DAY);
        FIELD_MAP.put('H', ChronoField.HOUR_OF_DAY);
        FIELD_MAP.put('k', ChronoField.CLOCK_HOUR_OF_DAY);
        FIELD_MAP.put('K', ChronoField.HOUR_OF_AMPM);
        FIELD_MAP.put('h', ChronoField.CLOCK_HOUR_OF_AMPM);
        FIELD_MAP.put('m', ChronoField.MINUTE_OF_HOUR);
        FIELD_MAP.put('s', ChronoField.SECOND_OF_MINUTE);
        FIELD_MAP.put('S', ChronoField.NANO_OF_SECOND);
        FIELD_MAP.put('A', ChronoField.MILLI_OF_DAY);
        FIELD_MAP.put('n', ChronoField.NANO_OF_SECOND);
        FIELD_MAP.put('N', ChronoField.NANO_OF_DAY);
    }

    public DateTimeFormatterBuilder() {
        this.active = this;
        this.printerParsers = new ArrayList();
        this.valueParserIndex = -1;
        this.parent = null;
        this.optional = false;
    }

    private DateTimeFormatterBuilder(DateTimeFormatterBuilder dateTimeFormatterBuilder, boolean z) {
        this.active = this;
        this.printerParsers = new ArrayList();
        this.valueParserIndex = -1;
        this.parent = dateTimeFormatterBuilder;
        this.optional = z;
    }

    private int appendInternal(DateTimePrinterParser dateTimePrinterParser) {
        Jdk8Methods.requireNonNull(dateTimePrinterParser, "pp");
        DateTimePrinterParser dateTimePrinterParser2 = dateTimePrinterParser;
        if (this.active.padNextWidth > 0) {
            dateTimePrinterParser2 = dateTimePrinterParser;
            if (dateTimePrinterParser != null) {
                dateTimePrinterParser2 = new PadPrinterParserDecorator(dateTimePrinterParser, this.active.padNextWidth, this.active.padNextChar);
            }
            this.active.padNextWidth = 0;
            this.active.padNextChar = (char) 0;
        }
        this.active.printerParsers.add(dateTimePrinterParser2);
        this.active.valueParserIndex = -1;
        return this.active.printerParsers.size() - 1;
    }

    private DateTimeFormatterBuilder appendValue(NumberPrinterParser numberPrinterParser) {
        NumberPrinterParser numberPrinterParser2;
        if (this.active.valueParserIndex < 0 || !(this.active.printerParsers.get(this.active.valueParserIndex) instanceof NumberPrinterParser)) {
            this.active.valueParserIndex = appendInternal(numberPrinterParser);
        } else {
            int i = this.active.valueParserIndex;
            NumberPrinterParser numberPrinterParser3 = (NumberPrinterParser) this.active.printerParsers.get(i);
            if (numberPrinterParser.minWidth == numberPrinterParser.maxWidth && numberPrinterParser.signStyle == SignStyle.NOT_NEGATIVE) {
                numberPrinterParser2 = numberPrinterParser3.withSubsequentWidth(numberPrinterParser.maxWidth);
                appendInternal(numberPrinterParser.withFixedWidth());
                this.active.valueParserIndex = i;
            } else {
                numberPrinterParser2 = numberPrinterParser3.withFixedWidth();
                this.active.valueParserIndex = appendInternal(numberPrinterParser);
            }
            this.active.printerParsers.set(i, numberPrinterParser2);
        }
        return this;
    }

    public static String getLocalizedDateTimePattern(FormatStyle formatStyle, FormatStyle formatStyle2, Chronology chronology, Locale locale) {
        Jdk8Methods.requireNonNull(locale, "locale");
        Jdk8Methods.requireNonNull(chronology, "chrono");
        if (formatStyle == null && formatStyle2 == null) {
            throw new IllegalArgumentException("Either dateStyle or timeStyle must be non-null");
        }
        DateFormat dateTimeInstance = formatStyle != null ? formatStyle2 != null ? DateFormat.getDateTimeInstance(formatStyle.ordinal(), formatStyle2.ordinal(), locale) : DateFormat.getDateInstance(formatStyle.ordinal(), locale) : DateFormat.getTimeInstance(formatStyle2.ordinal(), locale);
        if (dateTimeInstance instanceof SimpleDateFormat) {
            return ((SimpleDateFormat) dateTimeInstance).toPattern();
        }
        throw new IllegalArgumentException("Unable to determine pattern");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x02dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parseField(char r7, int r8, org.threeten.p040bp.temporal.TemporalField r9) {
        /*
            Method dump skipped, instructions count: 1135
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.format.DateTimeFormatterBuilder.parseField(char, int, org.threeten.bp.temporal.TemporalField):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0090, code lost:
        if (r11 <= 'z') goto L_0x0093;
     */
    /* JADX WARN: Removed duplicated region for block: B:189:0x00d7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parsePattern(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 1312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.format.DateTimeFormatterBuilder.parsePattern(java.lang.String):void");
    }

    public DateTimeFormatterBuilder append(DateTimeFormatter dateTimeFormatter) {
        Jdk8Methods.requireNonNull(dateTimeFormatter, "formatter");
        appendInternal(dateTimeFormatter.toPrinterParser(false));
        return this;
    }

    public DateTimeFormatterBuilder appendChronologyId() {
        appendInternal(new ChronoPrinterParser(null));
        return this;
    }

    public DateTimeFormatterBuilder appendChronologyText(TextStyle textStyle) {
        Jdk8Methods.requireNonNull(textStyle, "textStyle");
        appendInternal(new ChronoPrinterParser(textStyle));
        return this;
    }

    public DateTimeFormatterBuilder appendFraction(TemporalField temporalField, int i, int i2, boolean z) {
        appendInternal(new FractionPrinterParser(temporalField, i, i2, z));
        return this;
    }

    public DateTimeFormatterBuilder appendInstant() {
        appendInternal(new InstantPrinterParser(-2));
        return this;
    }

    public DateTimeFormatterBuilder appendInstant(int i) {
        if (i < -1 || i > 9) {
            throw new IllegalArgumentException("Invalid fractional digits: " + i);
        }
        appendInternal(new InstantPrinterParser(i));
        return this;
    }

    public DateTimeFormatterBuilder appendLiteral(char c) {
        appendInternal(new CharLiteralPrinterParser(c));
        return this;
    }

    public DateTimeFormatterBuilder appendLiteral(String str) {
        Jdk8Methods.requireNonNull(str, "literal");
        if (str.length() > 0) {
            if (str.length() == 1) {
                appendInternal(new CharLiteralPrinterParser(str.charAt(0)));
            } else {
                appendInternal(new StringLiteralPrinterParser(str));
            }
        }
        return this;
    }

    public DateTimeFormatterBuilder appendLocalized(FormatStyle formatStyle, FormatStyle formatStyle2) {
        if (formatStyle == null && formatStyle2 == null) {
            throw new IllegalArgumentException("Either the date or time style must be non-null");
        }
        appendInternal(new LocalizedPrinterParser(formatStyle, formatStyle2));
        return this;
    }

    public DateTimeFormatterBuilder appendLocalizedOffset(TextStyle textStyle) {
        Jdk8Methods.requireNonNull(textStyle, "style");
        if (textStyle == TextStyle.FULL || textStyle == TextStyle.SHORT) {
            appendInternal(new LocalizedOffsetPrinterParser(textStyle));
            return this;
        }
        throw new IllegalArgumentException("Style must be either full or short");
    }

    public DateTimeFormatterBuilder appendOffset(String str, String str2) {
        appendInternal(new OffsetIdPrinterParser(str2, str));
        return this;
    }

    public DateTimeFormatterBuilder appendOffsetId() {
        appendInternal(OffsetIdPrinterParser.INSTANCE_ID);
        return this;
    }

    public DateTimeFormatterBuilder appendOptional(DateTimeFormatter dateTimeFormatter) {
        Jdk8Methods.requireNonNull(dateTimeFormatter, "formatter");
        appendInternal(dateTimeFormatter.toPrinterParser(true));
        return this;
    }

    public DateTimeFormatterBuilder appendPattern(String str) {
        Jdk8Methods.requireNonNull(str, "pattern");
        parsePattern(str);
        return this;
    }

    public DateTimeFormatterBuilder appendText(TemporalField temporalField) {
        return appendText(temporalField, TextStyle.FULL);
    }

    public DateTimeFormatterBuilder appendText(TemporalField temporalField, Map<Long, String> map) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        Jdk8Methods.requireNonNull(map, "textLookup");
        final SimpleDateTimeTextProvider.LocaleStore localeStore = new SimpleDateTimeTextProvider.LocaleStore(Collections.singletonMap(TextStyle.FULL, new LinkedHashMap(map)));
        appendInternal(new TextPrinterParser(temporalField, TextStyle.FULL, new DateTimeTextProvider() { // from class: org.threeten.bp.format.DateTimeFormatterBuilder.2
            @Override // org.threeten.p040bp.format.DateTimeTextProvider
            public String getText(TemporalField temporalField2, long j, TextStyle textStyle, Locale locale) {
                return localeStore.getText(j, textStyle);
            }

            @Override // org.threeten.p040bp.format.DateTimeTextProvider
            public Iterator<Map.Entry<String, Long>> getTextIterator(TemporalField temporalField2, TextStyle textStyle, Locale locale) {
                return localeStore.getTextIterator(textStyle);
            }
        }));
        return this;
    }

    public DateTimeFormatterBuilder appendText(TemporalField temporalField, TextStyle textStyle) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        Jdk8Methods.requireNonNull(textStyle, "textStyle");
        appendInternal(new TextPrinterParser(temporalField, textStyle, DateTimeTextProvider.getInstance()));
        return this;
    }

    public DateTimeFormatterBuilder appendValue(TemporalField temporalField) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        appendValue(new NumberPrinterParser(temporalField, 1, 19, SignStyle.NORMAL));
        return this;
    }

    public DateTimeFormatterBuilder appendValue(TemporalField temporalField, int i) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
        }
        appendValue(new NumberPrinterParser(temporalField, i, i, SignStyle.NOT_NEGATIVE));
        return this;
    }

    public DateTimeFormatterBuilder appendValue(TemporalField temporalField, int i, int i2, SignStyle signStyle) {
        if (i == i2 && signStyle == SignStyle.NOT_NEGATIVE) {
            return appendValue(temporalField, i2);
        }
        Jdk8Methods.requireNonNull(temporalField, "field");
        Jdk8Methods.requireNonNull(signStyle, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        } else if (i2 < i) {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        } else {
            appendValue(new NumberPrinterParser(temporalField, i, i2, signStyle));
            return this;
        }
    }

    public DateTimeFormatterBuilder appendValueReduced(TemporalField temporalField, int i, int i2, int i3) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        appendValue(new ReducedPrinterParser(temporalField, i, i2, i3, null));
        return this;
    }

    public DateTimeFormatterBuilder appendValueReduced(TemporalField temporalField, int i, int i2, ChronoLocalDate chronoLocalDate) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        Jdk8Methods.requireNonNull(chronoLocalDate, "baseDate");
        appendValue(new ReducedPrinterParser(temporalField, i, i2, 0, chronoLocalDate));
        return this;
    }

    public DateTimeFormatterBuilder appendZoneId() {
        appendInternal(new ZoneIdPrinterParser(TemporalQueries.zoneId(), "ZoneId()"));
        return this;
    }

    public DateTimeFormatterBuilder appendZoneOrOffsetId() {
        appendInternal(new ZoneIdPrinterParser(TemporalQueries.zone(), "ZoneOrOffsetId()"));
        return this;
    }

    public DateTimeFormatterBuilder appendZoneRegionId() {
        appendInternal(new ZoneIdPrinterParser(QUERY_REGION_ONLY, "ZoneRegionId()"));
        return this;
    }

    public DateTimeFormatterBuilder appendZoneText(TextStyle textStyle) {
        appendInternal(new ZoneTextPrinterParser(textStyle));
        return this;
    }

    public DateTimeFormatterBuilder appendZoneText(TextStyle textStyle, Set<ZoneId> set) {
        Jdk8Methods.requireNonNull(set, "preferredZones");
        appendInternal(new ZoneTextPrinterParser(textStyle));
        return this;
    }

    public DateTimeFormatterBuilder optionalEnd() {
        if (this.active.parent == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        if (this.active.printerParsers.size() > 0) {
            CompositePrinterParser compositePrinterParser = new CompositePrinterParser(this.active.printerParsers, this.active.optional);
            this.active = this.active.parent;
            appendInternal(compositePrinterParser);
        } else {
            this.active = this.active.parent;
        }
        return this;
    }

    public DateTimeFormatterBuilder optionalStart() {
        this.active.valueParserIndex = -1;
        this.active = new DateTimeFormatterBuilder(this.active, true);
        return this;
    }

    public DateTimeFormatterBuilder padNext(int i) {
        return padNext(i, ' ');
    }

    public DateTimeFormatterBuilder padNext(int i, char c) {
        if (i < 1) {
            throw new IllegalArgumentException("The pad width must be at least one but was " + i);
        }
        this.active.padNextWidth = i;
        this.active.padNextChar = c;
        this.active.valueParserIndex = -1;
        return this;
    }

    public DateTimeFormatterBuilder parseCaseInsensitive() {
        appendInternal(SettingsParser.INSENSITIVE);
        return this;
    }

    public DateTimeFormatterBuilder parseCaseSensitive() {
        appendInternal(SettingsParser.SENSITIVE);
        return this;
    }

    public DateTimeFormatterBuilder parseDefaulting(TemporalField temporalField, long j) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        appendInternal(new DefaultingParser(temporalField, j));
        return this;
    }

    public DateTimeFormatterBuilder parseLenient() {
        appendInternal(SettingsParser.LENIENT);
        return this;
    }

    public DateTimeFormatterBuilder parseStrict() {
        appendInternal(SettingsParser.STRICT);
        return this;
    }

    public DateTimeFormatter toFormatter() {
        return toFormatter(Locale.getDefault());
    }

    public DateTimeFormatter toFormatter(Locale locale) {
        Jdk8Methods.requireNonNull(locale, "locale");
        while (this.active.parent != null) {
            optionalEnd();
        }
        return new DateTimeFormatter(new CompositePrinterParser(this.printerParsers, false), locale, DecimalStyle.STANDARD, ResolverStyle.SMART, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DateTimeFormatter toFormatter(ResolverStyle resolverStyle) {
        return toFormatter().withResolverStyle(resolverStyle);
    }
}
