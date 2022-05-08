package com.crashlytics.android.core;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p000a.p001a.p002a.p003a.C0137d;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/ProcMapEntryParser.class */
final class ProcMapEntryParser {
    private static final Pattern MAP_REGEX = Pattern.compile("\\s*(\\p{XDigit}+)-\\s*(\\p{XDigit}+)\\s+(.{4})\\s+\\p{XDigit}+\\s+.+\\s+\\d+\\s+(.*)");

    private ProcMapEntryParser() {
    }

    public static ProcMapEntry parse(String str) {
        Matcher matcher = MAP_REGEX.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        try {
            long longValue = Long.valueOf(matcher.group(1), 16).longValue();
            return new ProcMapEntry(longValue, Long.valueOf(matcher.group(2), 16).longValue() - longValue, matcher.group(3), matcher.group(4));
        } catch (Exception e) {
            C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Could not parse map entry: ".concat(String.valueOf(str)));
            return null;
        }
    }
}
