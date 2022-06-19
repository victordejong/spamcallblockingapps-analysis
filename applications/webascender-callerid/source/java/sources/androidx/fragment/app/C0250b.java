package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.AbstractC0300y;
import androidx.lifecycle.AbstractC0329h;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.b */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/b.class */
public final class C0250b implements Parcelable {
    public static final Parcelable.Creator<C0250b> CREATOR = new C0251a();

    /* renamed from: f */
    final int[] f1428f;

    /* renamed from: g */
    final ArrayList<String> f1429g;

    /* renamed from: h */
    final int[] f1430h;

    /* renamed from: i */
    final int[] f1431i;

    /* renamed from: j */
    final int f1432j;

    /* renamed from: k */
    final String f1433k;

    /* renamed from: l */
    final int f1434l;

    /* renamed from: m */
    final int f1435m;

    /* renamed from: n */
    final CharSequence f1436n;

    /* renamed from: o */
    final int f1437o;

    /* renamed from: p */
    final CharSequence f1438p;

    /* renamed from: q */
    final ArrayList<String> f1439q;

    /* renamed from: r */
    final ArrayList<String> f1440r;

    /* renamed from: s */
    final boolean f1441s;

    /* renamed from: androidx.fragment.app.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$a.class */
    class C0251a implements Parcelable.Creator<C0250b> {
        C0251a() {
        }

        /* renamed from: a */
        public C0250b createFromParcel(Parcel parcel) {
            return new C0250b(parcel);
        }

        /* renamed from: b */
        public C0250b[] newArray(int i) {
            return new C0250b[i];
        }
    }

    public C0250b(Parcel parcel) {
        this.f1428f = parcel.createIntArray();
        this.f1429g = parcel.createStringArrayList();
        this.f1430h = parcel.createIntArray();
        this.f1431i = parcel.createIntArray();
        this.f1432j = parcel.readInt();
        this.f1433k = parcel.readString();
        this.f1434l = parcel.readInt();
        this.f1435m = parcel.readInt();
        this.f1436n = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f1437o = parcel.readInt();
        this.f1438p = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f1439q = parcel.createStringArrayList();
        this.f1440r = parcel.createStringArrayList();
        this.f1441s = parcel.readInt() != 0;
    }

    public C0250b(a aVar) {
        int size = aVar.f1604a.size();
        this.f1428f = new int[size * 5];
        if (aVar.f1610g) {
            this.f1429g = new ArrayList<>(size);
            this.f1430h = new int[size];
            this.f1431i = new int[size];
            int i = 0;
            int i2 = 0;
            while (i < size) {
                AbstractC0300y.C0301a c0301a = aVar.f1604a.get(i);
                int i3 = i2 + 1;
                this.f1428f[i2] = c0301a.f1621a;
                ArrayList<String> arrayList = this.f1429g;
                Fragment fragment = c0301a.f1622b;
                arrayList.add(fragment != null ? fragment.mWho : null);
                int[] iArr = this.f1428f;
                int i4 = i3 + 1;
                iArr[i3] = c0301a.f1623c;
                int i5 = i4 + 1;
                iArr[i4] = c0301a.f1624d;
                int i6 = i5 + 1;
                iArr[i5] = c0301a.f1625e;
                iArr[i6] = c0301a.f1626f;
                this.f1430h[i] = c0301a.f1627g.ordinal();
                this.f1431i[i] = c0301a.f1628h.ordinal();
                i++;
                i2 = i6 + 1;
            }
            this.f1432j = aVar.f1609f;
            this.f1433k = aVar.f1612i;
            this.f1434l = aVar.t;
            this.f1435m = aVar.f1613j;
            this.f1436n = aVar.f1614k;
            this.f1437o = aVar.f1615l;
            this.f1438p = aVar.f1616m;
            this.f1439q = aVar.f1617n;
            this.f1440r = aVar.f1618o;
            this.f1441s = aVar.f1619p;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    /* renamed from: a */
    public a m5852a(AbstractC0281n abstractC0281n) {
        a aVar = new a(abstractC0281n);
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f1428f;
            if (i >= iArr.length) {
                aVar.f1609f = this.f1432j;
                aVar.f1612i = this.f1433k;
                aVar.t = this.f1434l;
                aVar.f1610g = true;
                aVar.f1613j = this.f1435m;
                aVar.f1614k = this.f1436n;
                aVar.f1615l = this.f1437o;
                aVar.f1616m = this.f1438p;
                aVar.f1617n = this.f1439q;
                aVar.f1618o = this.f1440r;
                aVar.f1619p = this.f1441s;
                aVar.x(1);
                return aVar;
            }
            AbstractC0300y.C0301a c0301a = new AbstractC0300y.C0301a();
            int i3 = i + 1;
            c0301a.f1621a = iArr[i];
            if (AbstractC0281n.m5720H0(2)) {
                Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i2 + " base fragment #" + this.f1428f[i3]);
            }
            String str = this.f1429g.get(i2);
            if (str != null) {
                c0301a.f1622b = abstractC0281n.m5661h0(str);
            } else {
                c0301a.f1622b = null;
            }
            c0301a.f1627g = AbstractC0329h.EnumC0332c.values()[this.f1430h[i2]];
            c0301a.f1628h = AbstractC0329h.EnumC0332c.values()[this.f1431i[i2]];
            int[] iArr2 = this.f1428f;
            int i4 = i3 + 1;
            int i5 = iArr2[i3];
            c0301a.f1623c = i5;
            int i6 = i4 + 1;
            int i7 = iArr2[i4];
            c0301a.f1624d = i7;
            int i8 = i6 + 1;
            int i9 = iArr2[i6];
            c0301a.f1625e = i9;
            int i10 = iArr2[i8];
            c0301a.f1626f = i10;
            aVar.f1605b = i5;
            aVar.f1606c = i7;
            aVar.f1607d = i9;
            aVar.f1608e = i10;
            aVar.m5536f(c0301a);
            i2++;
            i = i8 + 1;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f1428f);
        parcel.writeStringList(this.f1429g);
        parcel.writeIntArray(this.f1430h);
        parcel.writeIntArray(this.f1431i);
        parcel.writeInt(this.f1432j);
        parcel.writeString(this.f1433k);
        parcel.writeInt(this.f1434l);
        parcel.writeInt(this.f1435m);
        TextUtils.writeToParcel(this.f1436n, parcel, 0);
        parcel.writeInt(this.f1437o);
        TextUtils.writeToParcel(this.f1438p, parcel, 0);
        parcel.writeStringList(this.f1439q);
        parcel.writeStringList(this.f1440r);
        parcel.writeInt(this.f1441s ? 1 : 0);
    }
}
