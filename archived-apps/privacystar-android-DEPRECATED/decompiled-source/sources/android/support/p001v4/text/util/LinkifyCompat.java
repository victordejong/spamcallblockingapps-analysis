package android.support.p001v4.text.util;

import android.annotation.SuppressLint;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.p001v4.util.PatternsCompat;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.webkit.WebView;
import android.widget.TextView;
import java.io.UnsupportedEncodingException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: android.support.v4.text.util.LinkifyCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/text/util/LinkifyCompat.class */
public final class LinkifyCompat {
    private static final String[] EMPTY_STRING = new String[0];
    private static final Comparator<LinkSpec> COMPARATOR = new Comparator<LinkSpec>() { // from class: android.support.v4.text.util.LinkifyCompat.1
        public int compare(LinkSpec linkSpec, LinkSpec linkSpec2) {
            if (linkSpec.start < linkSpec2.start) {
                return -1;
            }
            if (linkSpec.start <= linkSpec2.start && linkSpec.end >= linkSpec2.end) {
                return linkSpec.end > linkSpec2.end ? -1 : 0;
            }
            return 1;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: android.support.v4.text.util.LinkifyCompat$LinkSpec */
    /* loaded from: classes-dex2jar.jar:android/support/v4/text/util/LinkifyCompat$LinkSpec.class */
    public static class LinkSpec {
        int end;
        URLSpan frameworkAddedSpan;
        int start;
        String url;

        LinkSpec() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: android.support.v4.text.util.LinkifyCompat$LinkifyMask */
    /* loaded from: classes-dex2jar.jar:android/support/v4/text/util/LinkifyCompat$LinkifyMask.class */
    public @interface LinkifyMask {
    }

    private LinkifyCompat() {
    }

    private static void addLinkMovementMethod(@NonNull TextView textView) {
        MovementMethod movementMethod = textView.getMovementMethod();
        if ((movementMethod == null || !(movementMethod instanceof LinkMovementMethod)) && textView.getLinksClickable()) {
            textView.setMovementMethod(LinkMovementMethod.getInstance());
        }
    }

    public static void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String str) {
        if (shouldAddLinksFallbackToFramework()) {
            Linkify.addLinks(textView, pattern, str);
        } else {
            addLinks(textView, pattern, str, (String[]) null, (Linkify.MatchFilter) null, (Linkify.TransformFilter) null);
        }
    }

    public static void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String str, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        if (shouldAddLinksFallbackToFramework()) {
            Linkify.addLinks(textView, pattern, str, matchFilter, transformFilter);
        } else {
            addLinks(textView, pattern, str, (String[]) null, matchFilter, transformFilter);
        }
    }

    @SuppressLint({"NewApi"})
    public static void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String str, @Nullable String[] strArr, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        if (shouldAddLinksFallbackToFramework()) {
            Linkify.addLinks(textView, pattern, str, strArr, matchFilter, transformFilter);
            return;
        }
        SpannableString valueOf = SpannableString.valueOf(textView.getText());
        if (addLinks(valueOf, pattern, str, strArr, matchFilter, transformFilter)) {
            textView.setText(valueOf);
            addLinkMovementMethod(textView);
        }
    }

    public static boolean addLinks(@NonNull Spannable spannable, int i) {
        if (shouldAddLinksFallbackToFramework()) {
            return Linkify.addLinks(spannable, i);
        }
        if (i == 0) {
            return false;
        }
        URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class);
        for (int length = uRLSpanArr.length - 1; length >= 0; length--) {
            spannable.removeSpan(uRLSpanArr[length]);
        }
        if ((i & 4) != 0) {
            Linkify.addLinks(spannable, 4);
        }
        ArrayList arrayList = new ArrayList();
        if ((i & 1) != 0) {
            gatherLinks(arrayList, spannable, PatternsCompat.AUTOLINK_WEB_URL, new String[]{"http://", "https://", "rtsp://"}, Linkify.sUrlMatchFilter, null);
        }
        if ((i & 2) != 0) {
            gatherLinks(arrayList, spannable, PatternsCompat.AUTOLINK_EMAIL_ADDRESS, new String[]{"mailto:"}, null, null);
        }
        if ((i & 8) != 0) {
            gatherMapLinks(arrayList, spannable);
        }
        pruneOverlaps(arrayList, spannable);
        if (arrayList.size() == 0) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            LinkSpec linkSpec = (LinkSpec) it.next();
            if (linkSpec.frameworkAddedSpan == null) {
                applyLink(linkSpec.url, linkSpec.start, linkSpec.end, spannable);
            }
        }
        return true;
    }

    public static boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern pattern, @Nullable String str) {
        return shouldAddLinksFallbackToFramework() ? Linkify.addLinks(spannable, pattern, str) : addLinks(spannable, pattern, str, (String[]) null, (Linkify.MatchFilter) null, (Linkify.TransformFilter) null);
    }

    public static boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern pattern, @Nullable String str, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        return shouldAddLinksFallbackToFramework() ? Linkify.addLinks(spannable, pattern, str, matchFilter, transformFilter) : addLinks(spannable, pattern, str, (String[]) null, matchFilter, transformFilter);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
        if (r10.length < 1) goto L_0x0029;
     */
    @android.annotation.SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean addLinks(@android.support.annotation.NonNull android.text.Spannable r7, @android.support.annotation.NonNull java.util.regex.Pattern r8, @android.support.annotation.Nullable java.lang.String r9, @android.support.annotation.Nullable java.lang.String[] r10, @android.support.annotation.Nullable android.text.util.Linkify.MatchFilter r11, @android.support.annotation.Nullable android.text.util.Linkify.TransformFilter r12) {
        /*
            Method dump skipped, instructions count: 199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.text.util.LinkifyCompat.addLinks(android.text.Spannable, java.util.regex.Pattern, java.lang.String, java.lang.String[], android.text.util.Linkify$MatchFilter, android.text.util.Linkify$TransformFilter):boolean");
    }

    public static boolean addLinks(@NonNull TextView textView, int i) {
        if (shouldAddLinksFallbackToFramework()) {
            return Linkify.addLinks(textView, i);
        }
        if (i == 0) {
            return false;
        }
        CharSequence text = textView.getText();
        if (!(text instanceof Spannable)) {
            SpannableString valueOf = SpannableString.valueOf(text);
            if (!addLinks(valueOf, i)) {
                return false;
            }
            addLinkMovementMethod(textView);
            textView.setText(valueOf);
            return true;
        } else if (!addLinks((Spannable) text, i)) {
            return false;
        } else {
            addLinkMovementMethod(textView);
            return true;
        }
    }

    private static void applyLink(String str, int i, int i2, Spannable spannable) {
        spannable.setSpan(new URLSpan(str), i, i2, 33);
    }

    private static String findAddress(String str) {
        return Build.VERSION.SDK_INT >= 28 ? WebView.findAddress(str) : FindAddress.findAddress(str);
    }

    private static void gatherLinks(ArrayList<LinkSpec> arrayList, Spannable spannable, Pattern pattern, String[] strArr, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
        Matcher matcher = pattern.matcher(spannable);
        while (matcher.find()) {
            int start = matcher.start();
            int end = matcher.end();
            if (matchFilter == null || matchFilter.acceptMatch(spannable, start, end)) {
                LinkSpec linkSpec = new LinkSpec();
                linkSpec.url = makeUrl(matcher.group(0), strArr, matcher, transformFilter);
                linkSpec.start = start;
                linkSpec.end = end;
                arrayList.add(linkSpec);
            }
        }
    }

    private static void gatherMapLinks(ArrayList<LinkSpec> arrayList, Spannable spannable) {
        int indexOf;
        String obj = spannable.toString();
        int i = 0;
        while (true) {
            try {
                String findAddress = findAddress(obj);
                if (findAddress != null && (indexOf = obj.indexOf(findAddress)) >= 0) {
                    LinkSpec linkSpec = new LinkSpec();
                    int length = findAddress.length() + indexOf;
                    linkSpec.start = indexOf + i;
                    i += length;
                    linkSpec.end = i;
                    obj = obj.substring(length);
                    try {
                        String encode = URLEncoder.encode(findAddress, "UTF-8");
                        linkSpec.url = "geo:0,0?q=" + encode;
                        arrayList.add(linkSpec);
                    } catch (UnsupportedEncodingException e) {
                    }
                } else {
                    return;
                }
            } catch (UnsupportedOperationException e2) {
                return;
            }
        }
    }

    private static String makeUrl(@NonNull String str, @NonNull String[] strArr, Matcher matcher, @Nullable Linkify.TransformFilter transformFilter) {
        boolean z;
        String str2;
        String str3 = str;
        if (transformFilter != null) {
            str3 = transformFilter.transformUrl(matcher, str);
        }
        int i = 0;
        while (true) {
            if (i >= strArr.length) {
                z = false;
                str2 = str3;
                break;
            } else if (str3.regionMatches(true, 0, strArr[i], 0, strArr[i].length())) {
                z = true;
                str2 = str3;
                if (!str3.regionMatches(false, 0, strArr[i], 0, strArr[i].length())) {
                    str2 = strArr[i] + str3.substring(strArr[i].length());
                    z = true;
                }
            } else {
                i++;
            }
        }
        String str4 = str2;
        if (!z) {
            str4 = str2;
            if (strArr.length > 0) {
                str4 = strArr[0] + str2;
            }
        }
        return str4;
    }

    private static void pruneOverlaps(ArrayList<LinkSpec> arrayList, Spannable spannable) {
        int i = 0;
        Object[] objArr = (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class);
        for (int i2 = 0; i2 < objArr.length; i2++) {
            LinkSpec linkSpec = new LinkSpec();
            linkSpec.frameworkAddedSpan = objArr[i2];
            linkSpec.start = spannable.getSpanStart(objArr[i2]);
            linkSpec.end = spannable.getSpanEnd(objArr[i2]);
            arrayList.add(linkSpec);
        }
        Collections.sort(arrayList, COMPARATOR);
        int size = arrayList.size();
        while (i < size - 1) {
            LinkSpec linkSpec2 = arrayList.get(i);
            int i3 = i + 1;
            LinkSpec linkSpec3 = arrayList.get(i3);
            if (linkSpec2.start <= linkSpec3.start && linkSpec2.end > linkSpec3.start) {
                int i4 = (linkSpec3.end > linkSpec2.end && linkSpec2.end - linkSpec2.start <= linkSpec3.end - linkSpec3.start) ? linkSpec2.end - linkSpec2.start < linkSpec3.end - linkSpec3.start ? i : -1 : i3;
                if (i4 != -1) {
                    Object obj = arrayList.get(i4).frameworkAddedSpan;
                    if (obj != null) {
                        spannable.removeSpan(obj);
                    }
                    arrayList.remove(i4);
                    size--;
                }
            }
            i = i3;
        }
    }

    private static boolean shouldAddLinksFallbackToFramework() {
        return Build.VERSION.SDK_INT >= 28;
    }
}
