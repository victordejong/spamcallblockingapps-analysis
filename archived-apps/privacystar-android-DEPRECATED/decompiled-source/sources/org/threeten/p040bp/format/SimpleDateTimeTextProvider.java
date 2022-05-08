package org.threeten.p040bp.format;

import java.text.DateFormatSymbols;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.threeten.p040bp.temporal.ChronoField;
import org.threeten.p040bp.temporal.IsoFields;
import org.threeten.p040bp.temporal.TemporalField;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.threeten.bp.format.SimpleDateTimeTextProvider */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/SimpleDateTimeTextProvider.class */
public final class SimpleDateTimeTextProvider extends DateTimeTextProvider {
    private static final ConcurrentMap<Map.Entry<TemporalField, Locale>, Object> CACHE = new ConcurrentHashMap(16, 0.75f, 2);
    private static final Comparator<Map.Entry<String, Long>> COMPARATOR = new Comparator<Map.Entry<String, Long>>() { // from class: org.threeten.bp.format.SimpleDateTimeTextProvider.1
        public int compare(Map.Entry<String, Long> entry, Map.Entry<String, Long> entry2) {
            return entry2.getKey().length() - entry.getKey().length();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.format.SimpleDateTimeTextProvider$LocaleStore */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore.class */
    public static final class LocaleStore {
        private final Map<TextStyle, List<Map.Entry<String, Long>>> parsable;
        private final Map<TextStyle, Map<Long, String>> valueTextMap;

        /* JADX INFO: Access modifiers changed from: package-private */
        public LocaleStore(Map<TextStyle, Map<Long, String>> map) {
            this.valueTextMap = map;
            HashMap hashMap = new HashMap();
            ArrayList arrayList = new ArrayList();
            for (TextStyle textStyle : map.keySet()) {
                HashMap hashMap2 = new HashMap();
                for (Map.Entry<Long, String> entry : map.get(textStyle).entrySet()) {
                    hashMap2.put(entry.getValue(), SimpleDateTimeTextProvider.createEntry(entry.getValue(), entry.getKey()));
                }
                ArrayList arrayList2 = new ArrayList(hashMap2.values());
                Collections.sort(arrayList2, SimpleDateTimeTextProvider.COMPARATOR);
                hashMap.put(textStyle, arrayList2);
                arrayList.addAll(arrayList2);
                hashMap.put(null, arrayList);
            }
            Collections.sort(arrayList, SimpleDateTimeTextProvider.COMPARATOR);
            this.parsable = hashMap;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getText(long j, TextStyle textStyle) {
            Map<Long, String> map = this.valueTextMap.get(textStyle);
            return map != null ? map.get(Long.valueOf(j)) : null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Iterator<Map.Entry<String, Long>> getTextIterator(TextStyle textStyle) {
            List<Map.Entry<String, Long>> list = this.parsable.get(textStyle);
            return list != null ? list.iterator() : null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <A, B> Map.Entry<A, B> createEntry(A a, B b) {
        return new AbstractMap.SimpleImmutableEntry(a, b);
    }

    private static LocaleStore createLocaleStore(Map<TextStyle, Map<Long, String>> map) {
        map.put(TextStyle.FULL_STANDALONE, map.get(TextStyle.FULL));
        map.put(TextStyle.SHORT_STANDALONE, map.get(TextStyle.SHORT));
        if (map.containsKey(TextStyle.NARROW) && !map.containsKey(TextStyle.NARROW_STANDALONE)) {
            map.put(TextStyle.NARROW_STANDALONE, map.get(TextStyle.NARROW));
        }
        return new LocaleStore(map);
    }

    private Object createStore(TemporalField temporalField, Locale locale) {
        if (temporalField == ChronoField.MONTH_OF_YEAR) {
            DateFormatSymbols instance = DateFormatSymbols.getInstance(locale);
            HashMap hashMap = new HashMap();
            String[] months = instance.getMonths();
            HashMap hashMap2 = new HashMap();
            hashMap2.put(1L, months[0]);
            hashMap2.put(2L, months[1]);
            hashMap2.put(3L, months[2]);
            hashMap2.put(4L, months[3]);
            hashMap2.put(5L, months[4]);
            hashMap2.put(6L, months[5]);
            hashMap2.put(7L, months[6]);
            hashMap2.put(8L, months[7]);
            hashMap2.put(9L, months[8]);
            hashMap2.put(10L, months[9]);
            hashMap2.put(11L, months[10]);
            hashMap2.put(12L, months[11]);
            hashMap.put(TextStyle.FULL, hashMap2);
            HashMap hashMap3 = new HashMap();
            hashMap3.put(1L, months[0].substring(0, 1));
            hashMap3.put(2L, months[1].substring(0, 1));
            hashMap3.put(3L, months[2].substring(0, 1));
            hashMap3.put(4L, months[3].substring(0, 1));
            hashMap3.put(5L, months[4].substring(0, 1));
            hashMap3.put(6L, months[5].substring(0, 1));
            hashMap3.put(7L, months[6].substring(0, 1));
            hashMap3.put(8L, months[7].substring(0, 1));
            hashMap3.put(9L, months[8].substring(0, 1));
            hashMap3.put(10L, months[9].substring(0, 1));
            hashMap3.put(11L, months[10].substring(0, 1));
            hashMap3.put(12L, months[11].substring(0, 1));
            hashMap.put(TextStyle.NARROW, hashMap3);
            String[] shortMonths = instance.getShortMonths();
            HashMap hashMap4 = new HashMap();
            hashMap4.put(1L, shortMonths[0]);
            hashMap4.put(2L, shortMonths[1]);
            hashMap4.put(3L, shortMonths[2]);
            hashMap4.put(4L, shortMonths[3]);
            hashMap4.put(5L, shortMonths[4]);
            hashMap4.put(6L, shortMonths[5]);
            hashMap4.put(7L, shortMonths[6]);
            hashMap4.put(8L, shortMonths[7]);
            hashMap4.put(9L, shortMonths[8]);
            hashMap4.put(10L, shortMonths[9]);
            hashMap4.put(11L, shortMonths[10]);
            hashMap4.put(12L, shortMonths[11]);
            hashMap.put(TextStyle.SHORT, hashMap4);
            return createLocaleStore(hashMap);
        } else if (temporalField == ChronoField.DAY_OF_WEEK) {
            DateFormatSymbols instance2 = DateFormatSymbols.getInstance(locale);
            HashMap hashMap5 = new HashMap();
            String[] weekdays = instance2.getWeekdays();
            HashMap hashMap6 = new HashMap();
            hashMap6.put(1L, weekdays[2]);
            hashMap6.put(2L, weekdays[3]);
            hashMap6.put(3L, weekdays[4]);
            hashMap6.put(4L, weekdays[5]);
            hashMap6.put(5L, weekdays[6]);
            hashMap6.put(6L, weekdays[7]);
            hashMap6.put(7L, weekdays[1]);
            hashMap5.put(TextStyle.FULL, hashMap6);
            HashMap hashMap7 = new HashMap();
            hashMap7.put(1L, weekdays[2].substring(0, 1));
            hashMap7.put(2L, weekdays[3].substring(0, 1));
            hashMap7.put(3L, weekdays[4].substring(0, 1));
            hashMap7.put(4L, weekdays[5].substring(0, 1));
            hashMap7.put(5L, weekdays[6].substring(0, 1));
            hashMap7.put(6L, weekdays[7].substring(0, 1));
            hashMap7.put(7L, weekdays[1].substring(0, 1));
            hashMap5.put(TextStyle.NARROW, hashMap7);
            String[] shortWeekdays = instance2.getShortWeekdays();
            HashMap hashMap8 = new HashMap();
            hashMap8.put(1L, shortWeekdays[2]);
            hashMap8.put(2L, shortWeekdays[3]);
            hashMap8.put(3L, shortWeekdays[4]);
            hashMap8.put(4L, shortWeekdays[5]);
            hashMap8.put(5L, shortWeekdays[6]);
            hashMap8.put(6L, shortWeekdays[7]);
            hashMap8.put(7L, shortWeekdays[1]);
            hashMap5.put(TextStyle.SHORT, hashMap8);
            return createLocaleStore(hashMap5);
        } else if (temporalField == ChronoField.AMPM_OF_DAY) {
            DateFormatSymbols instance3 = DateFormatSymbols.getInstance(locale);
            HashMap hashMap9 = new HashMap();
            String[] amPmStrings = instance3.getAmPmStrings();
            HashMap hashMap10 = new HashMap();
            hashMap10.put(0L, amPmStrings[0]);
            hashMap10.put(1L, amPmStrings[1]);
            hashMap9.put(TextStyle.FULL, hashMap10);
            hashMap9.put(TextStyle.SHORT, hashMap10);
            return createLocaleStore(hashMap9);
        } else if (temporalField == ChronoField.ERA) {
            DateFormatSymbols instance4 = DateFormatSymbols.getInstance(locale);
            HashMap hashMap11 = new HashMap();
            String[] eras = instance4.getEras();
            HashMap hashMap12 = new HashMap();
            hashMap12.put(0L, eras[0]);
            hashMap12.put(1L, eras[1]);
            hashMap11.put(TextStyle.SHORT, hashMap12);
            if (locale.getLanguage().equals(Locale.ENGLISH.getLanguage())) {
                HashMap hashMap13 = new HashMap();
                hashMap13.put(0L, "Before Christ");
                hashMap13.put(1L, "Anno Domini");
                hashMap11.put(TextStyle.FULL, hashMap13);
            } else {
                hashMap11.put(TextStyle.FULL, hashMap12);
            }
            HashMap hashMap14 = new HashMap();
            hashMap14.put(0L, eras[0].substring(0, 1));
            hashMap14.put(1L, eras[1].substring(0, 1));
            hashMap11.put(TextStyle.NARROW, hashMap14);
            return createLocaleStore(hashMap11);
        } else if (temporalField != IsoFields.QUARTER_OF_YEAR) {
            return "";
        } else {
            HashMap hashMap15 = new HashMap();
            HashMap hashMap16 = new HashMap();
            hashMap16.put(1L, "Q1");
            hashMap16.put(2L, "Q2");
            hashMap16.put(3L, "Q3");
            hashMap16.put(4L, "Q4");
            hashMap15.put(TextStyle.SHORT, hashMap16);
            HashMap hashMap17 = new HashMap();
            hashMap17.put(1L, "1st quarter");
            hashMap17.put(2L, "2nd quarter");
            hashMap17.put(3L, "3rd quarter");
            hashMap17.put(4L, "4th quarter");
            hashMap15.put(TextStyle.FULL, hashMap17);
            return createLocaleStore(hashMap15);
        }
    }

    private Object findStore(TemporalField temporalField, Locale locale) {
        Map.Entry<TemporalField, Locale> createEntry = createEntry(temporalField, locale);
        Object obj = CACHE.get(createEntry);
        Object obj2 = obj;
        if (obj == null) {
            CACHE.putIfAbsent(createEntry, createStore(temporalField, locale));
            obj2 = CACHE.get(createEntry);
        }
        return obj2;
    }

    @Override // org.threeten.p040bp.format.DateTimeTextProvider
    public Locale[] getAvailableLocales() {
        return DateFormatSymbols.getAvailableLocales();
    }

    @Override // org.threeten.p040bp.format.DateTimeTextProvider
    public String getText(TemporalField temporalField, long j, TextStyle textStyle, Locale locale) {
        Object findStore = findStore(temporalField, locale);
        if (findStore instanceof LocaleStore) {
            return ((LocaleStore) findStore).getText(j, textStyle);
        }
        return null;
    }

    @Override // org.threeten.p040bp.format.DateTimeTextProvider
    public Iterator<Map.Entry<String, Long>> getTextIterator(TemporalField temporalField, TextStyle textStyle, Locale locale) {
        Object findStore = findStore(temporalField, locale);
        if (findStore instanceof LocaleStore) {
            return ((LocaleStore) findStore).getTextIterator(textStyle);
        }
        return null;
    }
}
