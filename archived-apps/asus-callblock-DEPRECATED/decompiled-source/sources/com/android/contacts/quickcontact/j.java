package com.android.contacts.quickcontact;

import com.asus.updatesdk.BuildConfig;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    static Pattern f2119a = Pattern.compile("(?:(http|https|file)\\:\\/\\/)?(?:([-A-Za-z0-9$_.+!*'(),;?&=]+(?:\\:[-A-Za-z0-9$_.+!*'(),;?&=]+)?)@)?([a-zA-Z0-9 -\ud7ff豈-\ufdcfﷰ-\uffef%_-][a-zA-Z0-9 -\ud7ff豈-\ufdcfﷰ-\uffef%_\\.-]*|\\[[0-9a-fA-F:\\.]+\\])?(?:\\:([0-9]*))?(\\/?[^#]*)?.*", 2);

    /* renamed from: b  reason: collision with root package name */
    private String f2120b;
    private String c;
    private int d;
    private String e;
    private String f;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/j$a.class */
    public final class a extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public String f2121a;

        a(String str) {
            this.f2121a = str;
        }
    }

    public j(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.f2120b = BuildConfig.FLAVOR;
        this.c = BuildConfig.FLAVOR;
        this.d = -1;
        this.e = "/";
        this.f = BuildConfig.FLAVOR;
        Matcher matcher = f2119a.matcher(str);
        if (matcher.matches()) {
            String group = matcher.group(1);
            if (group != null) {
                this.f2120b = group.toLowerCase(Locale.ROOT);
            }
            String group2 = matcher.group(2);
            if (group2 != null) {
                this.f = group2;
            }
            String group3 = matcher.group(3);
            if (group3 != null) {
                this.c = group3;
            }
            String group4 = matcher.group(4);
            if (group4 != null && group4.length() > 0) {
                try {
                    this.d = Integer.parseInt(group4);
                } catch (NumberFormatException e) {
                    throw new a("Bad port");
                }
            }
            String group5 = matcher.group(5);
            if (group5 != null && group5.length() > 0) {
                if (group5.charAt(0) == '/') {
                    this.e = group5;
                } else {
                    this.e = "/" + group5;
                }
            }
            if (this.d == 443 && this.f2120b.equals(BuildConfig.FLAVOR)) {
                this.f2120b = "https";
            } else if (this.d == -1) {
                if (this.f2120b.equals("https")) {
                    this.d = 443;
                } else {
                    this.d = 80;
                }
            }
            if (this.f2120b.equals(BuildConfig.FLAVOR)) {
                this.f2120b = "http";
                return;
            }
            return;
        }
        throw new a("Bad address");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002f, code lost:
        if (r4.f2120b.equals("http") != false) goto L_0x0032;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            r4 = this;
            java.lang.String r0 = ""
            r5 = r0
            r0 = r4
            int r0 = r0.d
            r1 = 443(0x1bb, float:6.21E-43)
            if (r0 == r1) goto L_0x0019
            r0 = r4
            java.lang.String r0 = r0.f2120b
            java.lang.String r1 = "https"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0032
        L_0x0019:
            r0 = r5
            r6 = r0
            r0 = r4
            int r0 = r0.d
            r1 = 80
            if (r0 == r1) goto L_0x0049
            r0 = r5
            r6 = r0
            r0 = r4
            java.lang.String r0 = r0.f2120b
            java.lang.String r1 = "http"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0049
        L_0x0032:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = ":"
            r1.<init>(r2)
            r1 = r4
            int r1 = r1.d
            java.lang.String r1 = java.lang.Integer.toString(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r6 = r0
        L_0x0049:
            java.lang.String r0 = ""
            r5 = r0
            r0 = r4
            java.lang.String r0 = r0.f
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x006d
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r1 = r4
            java.lang.String r1 = r1.f
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = "@"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r5 = r0
        L_0x006d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r1 = r4
            java.lang.String r1 = r1.f2120b
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = "://"
            java.lang.StringBuilder r0 = r0.append(r1)
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r1 = r4
            java.lang.String r1 = r1.c
            java.lang.StringBuilder r0 = r0.append(r1)
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r1 = r4
            java.lang.String r1 = r1.e
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.quickcontact.j.toString():java.lang.String");
    }
}
