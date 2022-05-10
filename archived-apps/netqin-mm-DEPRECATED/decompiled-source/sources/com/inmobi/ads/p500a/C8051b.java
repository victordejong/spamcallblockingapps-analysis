package com.inmobi.ads.p500a;

import com.inmobi.ads.C8181bn;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: com.inmobi.ads.a.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/a/b.class */
public final class C8051b {

    /* renamed from: b */
    public Set<C8181bn> f31510b;

    /* renamed from: d */
    public int f31512d;

    /* renamed from: e */
    public int f31513e;

    /* renamed from: f */
    public String f31514f;

    /* renamed from: g */
    public String f31515g;

    /* renamed from: h */
    public String f31516h;

    /* renamed from: i */
    public String f31517i;

    /* renamed from: j */
    public final WeakReference<AbstractC8065g> f31518j;

    /* renamed from: a */
    public List<C8049a> f31509a = new ArrayList();

    /* renamed from: c */
    public Set<String> f31511c = new HashSet();

    public C8051b(String str, String str2, Set<C8181bn> set, AbstractC8065g gVar) {
        this.f31517i = str;
        this.f31514f = str2;
        this.f31510b = set;
        this.f31518j = new WeakReference<>(gVar);
    }

    public C8051b(String str, Set<C8181bn> set, AbstractC8065g gVar, String str2) {
        this.f31517i = str;
        this.f31516h = str2;
        this.f31510b = set;
        this.f31518j = new WeakReference<>(gVar);
    }

    /* renamed from: a */
    public final AbstractC8065g m6608a() {
        return this.f31518j.get();
    }

    public final String toString() {
        return "AdAssetBatch{mRawAssets=" + this.f31510b + ", mBatchDownloadSuccessCount=" + this.f31512d + ", mBatchDownloadFailureCount=" + this.f31513e + '}';
    }
}
