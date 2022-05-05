package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.C1507k;
import com.google.p051a.p053b.p054a.C1434o;
import com.google.p051a.p057c.C1493a;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import java.lang.reflect.Field;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.a.b.a.p */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/p.class */
public final class C1437p extends C1434o.AbstractC1436b {

    /* renamed from: a */
    final /* synthetic */ Field f5540a;

    /* renamed from: b */
    final /* synthetic */ boolean f5541b;

    /* renamed from: c */
    final /* synthetic */ AbstractC1378ae f5542c;

    /* renamed from: d */
    final /* synthetic */ C1507k f5543d;

    /* renamed from: e */
    final /* synthetic */ C1493a f5544e;

    /* renamed from: f */
    final /* synthetic */ boolean f5545f;

    /* renamed from: g */
    final /* synthetic */ C1434o f5546g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1437p(C1434o oVar, String str, boolean z, boolean z2, Field field, boolean z3, AbstractC1378ae aeVar, C1507k kVar, C1493a aVar, boolean z4) {
        super(str, z, z2);
        this.f5546g = oVar;
        this.f5540a = field;
        this.f5541b = z3;
        this.f5542c = aeVar;
        this.f5543d = kVar;
        this.f5544e = aVar;
        this.f5545f = z4;
    }

    @Override // com.google.p051a.p053b.p054a.C1434o.AbstractC1436b
    /* renamed from: a */
    final void mo6322a(C1495a aVar, Object obj) {
        Object a = this.f5542c.mo6175a(aVar);
        if (a != null || !this.f5545f) {
            this.f5540a.set(obj, a);
        }
    }

    @Override // com.google.p051a.p053b.p054a.C1434o.AbstractC1436b
    /* renamed from: a */
    final void mo6321a(C1498d dVar, Object obj) {
        (this.f5541b ? this.f5542c : new C1444v(this.f5543d, this.f5542c, this.f5544e.m6251b())).mo6174a(dVar, this.f5540a.get(obj));
    }

    @Override // com.google.p051a.p053b.p054a.C1434o.AbstractC1436b
    /* renamed from: a */
    public final boolean mo6320a(Object obj) {
        return this.f5538i && this.f5540a.get(obj) != obj;
    }
}
