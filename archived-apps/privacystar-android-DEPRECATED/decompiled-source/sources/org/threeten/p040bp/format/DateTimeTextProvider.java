package org.threeten.p040bp.format;

import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.threeten.p040bp.temporal.TemporalField;
/* renamed from: org.threeten.bp.format.DateTimeTextProvider */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/DateTimeTextProvider.class */
abstract class DateTimeTextProvider {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static DateTimeTextProvider getInstance() {
        return new SimpleDateTimeTextProvider();
    }

    public Locale[] getAvailableLocales() {
        throw new UnsupportedOperationException();
    }

    public abstract String getText(TemporalField temporalField, long j, TextStyle textStyle, Locale locale);

    public abstract Iterator<Map.Entry<String, Long>> getTextIterator(TemporalField temporalField, TextStyle textStyle, Locale locale);
}
