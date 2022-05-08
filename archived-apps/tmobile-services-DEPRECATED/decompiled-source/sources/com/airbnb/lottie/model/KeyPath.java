package com.airbnb.lottie.model;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/KeyPath.class */
public class KeyPath {

    /* renamed from: c */
    public static final KeyPath f6078c = new KeyPath("COMPOSITION");

    /* renamed from: a */
    private final List<String> f6079a;
    @Nullable

    /* renamed from: b */
    private KeyPathElement f6080b;

    private KeyPath(KeyPath keyPath) {
        this.f6079a = new ArrayList(keyPath.f6079a);
        this.f6080b = keyPath.f6080b;
    }

    public KeyPath(String... strArr) {
        this.f6079a = Arrays.asList(strArr);
    }

    /* renamed from: b */
    private boolean m16088b() {
        List<String> list = this.f6079a;
        return list.get(list.size() - 1).equals("**");
    }

    /* renamed from: f */
    private boolean m16084f(String str) {
        return "__container".equals(str);
    }

    @CheckResult
    @RestrictTo
    /* renamed from: a */
    public KeyPath m16089a(String str) {
        KeyPath keyPath = new KeyPath(this);
        keyPath.f6079a.add(str);
        return keyPath;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0084, code lost:
        if (m16088b() != false) goto L_0x0087;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00e8, code lost:
        if (m16088b() != false) goto L_0x00eb;
     */
    @androidx.annotation.RestrictTo
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m16087c(java.lang.String r5, int r6) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.model.KeyPath.m16087c(java.lang.String, int):boolean");
    }

    @Nullable
    @RestrictTo
    /* renamed from: d */
    public KeyPathElement m16086d() {
        return this.f6080b;
    }

    @RestrictTo
    /* renamed from: e */
    public int m16085e(String str, int i) {
        if (m16084f(str)) {
            return 0;
        }
        if (!this.f6079a.get(i).equals("**")) {
            return 1;
        }
        return (i != this.f6079a.size() - 1 && this.f6079a.get(i + 1).equals(str)) ? 2 : 0;
    }

    @RestrictTo
    /* renamed from: g */
    public boolean m16083g(String str, int i) {
        if (m16084f(str)) {
            return true;
        }
        if (i >= this.f6079a.size()) {
            return false;
        }
        return this.f6079a.get(i).equals(str) || this.f6079a.get(i).equals("**") || this.f6079a.get(i).equals("*");
    }

    @RestrictTo
    /* renamed from: h */
    public boolean m16082h(String str, int i) {
        if ("__container".equals(str)) {
            return true;
        }
        boolean z = true;
        if (i >= this.f6079a.size() - 1) {
            z = this.f6079a.get(i).equals("**");
        }
        return z;
    }

    @RestrictTo
    /* renamed from: i */
    public KeyPath m16081i(KeyPathElement keyPathElement) {
        KeyPath keyPath = new KeyPath(this);
        keyPath.f6080b = keyPathElement;
        return keyPath;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("KeyPath{keys=");
        sb.append(this.f6079a);
        sb.append(",resolved=");
        sb.append(this.f6080b != null);
        sb.append('}');
        return sb.toString();
    }
}
