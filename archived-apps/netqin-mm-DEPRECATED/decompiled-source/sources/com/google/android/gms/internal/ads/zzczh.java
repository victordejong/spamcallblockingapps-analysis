package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczh.class */
public final class zzczh extends zzwy {

    /* renamed from: a */
    public final Context f26795a;

    /* renamed from: b */
    public final zzbix f26796b;
    @VisibleForTesting

    /* renamed from: c */
    public final zzdom f26797c = new zzdom();
    @VisibleForTesting

    /* renamed from: d */
    public final zzcer f26798d = new zzcer();

    /* renamed from: e */
    public zzwt f26799e;

    public zzczh(zzbix zzbixVar, Context context, String str) {
        this.f26796b = zzbixVar;
        this.f26797c.m13429a(str);
        this.f26795a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: O0 */
    public final zzwu mo10983O0() {
        zzcep a = this.f26798d.m14653a();
        this.f26797c.m13428a(a.m14655f());
        this.f26797c.m13424b(a.m14654g());
        zzdom zzdomVar = this.f26797c;
        if (zzdomVar.m13416f() == null) {
            zzdomVar.m13432a(zzvn.m11195i());
        }
        return new zzczk(this.f26795a, this.f26796b, this.f26797c, a, this.f26799e);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10982a(PublisherAdViewOptions publisherAdViewOptions) {
        this.f26797c.m13439a(publisherAdViewOptions);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10981a(zzadu zzaduVar) {
        this.f26797c.m13437a(zzaduVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10980a(zzafe zzafeVar) {
        this.f26798d.m14652a(zzafeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10979a(zzaff zzaffVar) {
        this.f26798d.m14651a(zzaffVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10978a(zzafs zzafsVar, zzvn zzvnVar) {
        this.f26798d.m14650a(zzafsVar);
        this.f26797c.m13432a(zzvnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10977a(zzaft zzaftVar) {
        this.f26798d.m14649a(zzaftVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10976a(zzajc zzajcVar) {
        this.f26797c.m13436a(zzajcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10975a(zzajk zzajkVar) {
        this.f26798d.m14648a(zzajkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10974a(zzwt zzwtVar) {
        this.f26799e = zzwtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: a */
    public final void mo10972a(String str, zzafl zzaflVar, zzafk zzafkVar) {
        this.f26798d.m14647a(str, zzaflVar, zzafkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    /* renamed from: b */
    public final void mo10971b(zzxq zzxqVar) {
        this.f26797c.m13430a(zzxqVar);
    }
}
