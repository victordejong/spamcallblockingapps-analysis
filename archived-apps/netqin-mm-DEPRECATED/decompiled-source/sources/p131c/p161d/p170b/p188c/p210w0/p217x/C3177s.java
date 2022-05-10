package p131c.p161d.p170b.p188c.p210w0.p217x;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.s */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/s.class */
public final class C3177s implements AbstractC3168o {

    /* renamed from: a */
    public final C2904v f11695a = new C2904v(10);

    /* renamed from: b */
    public AbstractC3054q f11696b;

    /* renamed from: c */
    public boolean f11697c;

    /* renamed from: d */
    public long f11698d;

    /* renamed from: e */
    public int f11699e;

    /* renamed from: f */
    public int f11700f;

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27599a() {
        this.f11697c = false;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27598a(long j, int i) {
        if ((i & 4) != 0) {
            this.f11697c = true;
            this.f11698d = j;
            this.f11699e = 0;
            this.f11700f = 0;
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27597a(C2904v vVar) {
        if (this.f11697c) {
            int a = vVar.m28552a();
            int i = this.f11700f;
            if (i < 10) {
                int min = Math.min(a, 10 - i);
                System.arraycopy(vVar.f10530a, vVar.m28543c(), this.f11695a.f10530a, this.f11700f, min);
                if (this.f11700f + min == 10) {
                    this.f11695a.m28538e(0);
                    if (73 == this.f11695a.m28524r() && 68 == this.f11695a.m28524r() && 51 == this.f11695a.m28524r()) {
                        this.f11695a.m28536f(3);
                        this.f11699e = this.f11695a.m28525q() + 10;
                    } else {
                        C2894o.m28594d("Id3Reader", "Discarding invalid ID3 tag");
                        this.f11697c = false;
                        return;
                    }
                }
            }
            int min2 = Math.min(a, this.f11699e - this.f11700f);
            this.f11696b.mo28036a(vVar, min2);
            this.f11700f += min2;
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27596a(AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        dVar.m27684a();
        AbstractC3054q a = iVar.mo28048a(dVar.m27682c(), 4);
        this.f11696b = a;
        a.mo28034a(Format.m18695a(dVar.m27683b(), "application/id3", (String) null, -1, (DrmInitData) null));
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: b */
    public void mo27595b() {
        int i;
        if (this.f11697c && (i = this.f11699e) != 0 && this.f11700f == i) {
            this.f11696b.mo28037a(this.f11698d, 1, i, 0, null);
            this.f11697c = false;
        }
    }
}
