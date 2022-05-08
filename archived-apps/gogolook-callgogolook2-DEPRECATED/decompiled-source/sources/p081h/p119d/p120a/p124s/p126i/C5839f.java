package p081h.p119d.p120a.p124s.p126i;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import p081h.p119d.p120a.p124s.AbstractC5805b;
import p081h.p119d.p120a.p124s.AbstractC5806c;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.AbstractC5809f;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d;
/* renamed from: h.d.a.s.i.f */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/f.class */
public class C5839f implements AbstractC5806c {

    /* renamed from: a */
    public final String f14730a;

    /* renamed from: b */
    public final int f14731b;

    /* renamed from: c */
    public final int f14732c;

    /* renamed from: d */
    public final AbstractC5808e f14733d;

    /* renamed from: e */
    public final AbstractC5808e f14734e;

    /* renamed from: f */
    public final AbstractC5810g f14735f;

    /* renamed from: g */
    public final AbstractC5809f f14736g;

    /* renamed from: h */
    public final AbstractC6019d f14737h;

    /* renamed from: i */
    public final AbstractC5805b f14738i;

    /* renamed from: j */
    public final AbstractC5806c f14739j;

    /* renamed from: k */
    public String f14740k;

    /* renamed from: l */
    public int f14741l;

    /* renamed from: m */
    public AbstractC5806c f14742m;

    public C5839f(String str, AbstractC5806c cVar, int i, int i2, AbstractC5808e eVar, AbstractC5808e eVar2, AbstractC5810g gVar, AbstractC5809f fVar, AbstractC6019d dVar, AbstractC5805b bVar) {
        this.f14730a = str;
        this.f14739j = cVar;
        this.f14731b = i;
        this.f14732c = i2;
        this.f14733d = eVar;
        this.f14734e = eVar2;
        this.f14735f = gVar;
        this.f14736g = fVar;
        this.f14737h = dVar;
        this.f14738i = bVar;
    }

    /* renamed from: a */
    public AbstractC5806c m24257a() {
        if (this.f14742m == null) {
            this.f14742m = new C5847k(this.f14730a, this.f14739j);
        }
        return this.f14742m;
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5806c
    /* renamed from: a */
    public void mo23889a(MessageDigest messageDigest) throws UnsupportedEncodingException {
        byte[] array = ByteBuffer.allocate(8).putInt(this.f14731b).putInt(this.f14732c).array();
        this.f14739j.mo23889a(messageDigest);
        messageDigest.update(this.f14730a.getBytes("UTF-8"));
        messageDigest.update(array);
        AbstractC5808e eVar = this.f14733d;
        String str = "";
        messageDigest.update((eVar != null ? eVar.getId() : "").getBytes("UTF-8"));
        AbstractC5808e eVar2 = this.f14734e;
        messageDigest.update((eVar2 != null ? eVar2.getId() : "").getBytes("UTF-8"));
        AbstractC5810g gVar = this.f14735f;
        messageDigest.update((gVar != null ? gVar.getId() : "").getBytes("UTF-8"));
        AbstractC5809f fVar = this.f14736g;
        messageDigest.update((fVar != null ? fVar.getId() : "").getBytes("UTF-8"));
        AbstractC5805b bVar = this.f14738i;
        if (bVar != null) {
            str = bVar.getId();
        }
        messageDigest.update(str.getBytes("UTF-8"));
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5806c
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C5839f.class != obj.getClass()) {
            return false;
        }
        C5839f fVar = (C5839f) obj;
        if (!this.f14730a.equals(fVar.f14730a) || !this.f14739j.equals(fVar.f14739j) || this.f14732c != fVar.f14732c || this.f14731b != fVar.f14731b) {
            return false;
        }
        if ((this.f14735f == null) ^ (fVar.f14735f == null)) {
            return false;
        }
        AbstractC5810g gVar = this.f14735f;
        if (gVar != null && !gVar.getId().equals(fVar.f14735f.getId())) {
            return false;
        }
        if ((this.f14734e == null) ^ (fVar.f14734e == null)) {
            return false;
        }
        AbstractC5808e eVar = this.f14734e;
        if (eVar != null && !eVar.getId().equals(fVar.f14734e.getId())) {
            return false;
        }
        if ((this.f14733d == null) ^ (fVar.f14733d == null)) {
            return false;
        }
        AbstractC5808e eVar2 = this.f14733d;
        if (eVar2 != null && !eVar2.getId().equals(fVar.f14733d.getId())) {
            return false;
        }
        if ((this.f14736g == null) ^ (fVar.f14736g == null)) {
            return false;
        }
        AbstractC5809f fVar2 = this.f14736g;
        if (fVar2 != null && !fVar2.getId().equals(fVar.f14736g.getId())) {
            return false;
        }
        if ((this.f14737h == null) ^ (fVar.f14737h == null)) {
            return false;
        }
        AbstractC6019d dVar = this.f14737h;
        if (dVar != null && !dVar.getId().equals(fVar.f14737h.getId())) {
            return false;
        }
        if ((this.f14738i == null) ^ (fVar.f14738i == null)) {
            return false;
        }
        AbstractC5805b bVar = this.f14738i;
        return bVar == null || bVar.getId().equals(fVar.f14738i.getId());
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5806c
    public int hashCode() {
        if (this.f14741l == 0) {
            this.f14741l = this.f14730a.hashCode();
            this.f14741l = (this.f14741l * 31) + this.f14739j.hashCode();
            this.f14741l = (this.f14741l * 31) + this.f14731b;
            this.f14741l = (this.f14741l * 31) + this.f14732c;
            int i = this.f14741l;
            AbstractC5808e eVar = this.f14733d;
            int i2 = 0;
            this.f14741l = (i * 31) + (eVar != null ? eVar.getId().hashCode() : 0);
            int i3 = this.f14741l;
            AbstractC5808e eVar2 = this.f14734e;
            this.f14741l = (i3 * 31) + (eVar2 != null ? eVar2.getId().hashCode() : 0);
            int i4 = this.f14741l;
            AbstractC5810g gVar = this.f14735f;
            this.f14741l = (i4 * 31) + (gVar != null ? gVar.getId().hashCode() : 0);
            int i5 = this.f14741l;
            AbstractC5809f fVar = this.f14736g;
            this.f14741l = (i5 * 31) + (fVar != null ? fVar.getId().hashCode() : 0);
            int i6 = this.f14741l;
            AbstractC6019d dVar = this.f14737h;
            this.f14741l = (i6 * 31) + (dVar != null ? dVar.getId().hashCode() : 0);
            int i7 = this.f14741l;
            AbstractC5805b bVar = this.f14738i;
            if (bVar != null) {
                i2 = bVar.getId().hashCode();
            }
            this.f14741l = (i7 * 31) + i2;
        }
        return this.f14741l;
    }

    public String toString() {
        if (this.f14740k == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("EngineKey{");
            sb.append(this.f14730a);
            sb.append('+');
            sb.append(this.f14739j);
            sb.append("+[");
            sb.append(this.f14731b);
            sb.append('x');
            sb.append(this.f14732c);
            sb.append("]+");
            sb.append('\'');
            AbstractC5808e eVar = this.f14733d;
            String str = "";
            sb.append(eVar != null ? eVar.getId() : "");
            sb.append('\'');
            sb.append('+');
            sb.append('\'');
            AbstractC5808e eVar2 = this.f14734e;
            sb.append(eVar2 != null ? eVar2.getId() : "");
            sb.append('\'');
            sb.append('+');
            sb.append('\'');
            AbstractC5810g gVar = this.f14735f;
            sb.append(gVar != null ? gVar.getId() : "");
            sb.append('\'');
            sb.append('+');
            sb.append('\'');
            AbstractC5809f fVar = this.f14736g;
            sb.append(fVar != null ? fVar.getId() : "");
            sb.append('\'');
            sb.append('+');
            sb.append('\'');
            AbstractC6019d dVar = this.f14737h;
            sb.append(dVar != null ? dVar.getId() : "");
            sb.append('\'');
            sb.append('+');
            sb.append('\'');
            AbstractC5805b bVar = this.f14738i;
            if (bVar != null) {
                str = bVar.getId();
            }
            sb.append(str);
            sb.append('\'');
            sb.append('}');
            this.f14740k = sb.toString();
        }
        return this.f14740k;
    }
}
