package com.google.p068b.p069a;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.b.a.j */
/* loaded from: classes-dex2jar.jar:com/google/b/a/j.class */
public final class C3123j {

    /* renamed from: com.google.b.a.j$a */
    /* loaded from: classes-dex2jar.jar:com/google/b/a/j$a.class */
    public static final class C3124a implements Externalizable {

        /* renamed from: a */
        private boolean f18835a;

        /* renamed from: c */
        private boolean f18837c;

        /* renamed from: f */
        private boolean f18840f;

        /* renamed from: h */
        private boolean f18842h;

        /* renamed from: j */
        private boolean f18844j;

        /* renamed from: b */
        private String f18836b = "";

        /* renamed from: d */
        private String f18838d = "";

        /* renamed from: e */
        private List<String> f18839e = new ArrayList();

        /* renamed from: g */
        private String f18841g = "";

        /* renamed from: i */
        private boolean f18843i = false;

        /* renamed from: k */
        private String f18845k = "";

        /* renamed from: a */
        public final String m707a() {
            return this.f18836b;
        }

        /* renamed from: a */
        public final String m706a(int i) {
            return this.f18839e.get(i);
        }

        /* renamed from: b */
        public final String m705b() {
            return this.f18838d;
        }

        /* renamed from: c */
        public final int m704c() {
            return this.f18839e.size();
        }

        /* renamed from: d */
        public final String m703d() {
            return this.f18841g;
        }

        @Override // java.io.Externalizable
        public final void readExternal(ObjectInput objectInput) {
            String readUTF = objectInput.readUTF();
            this.f18835a = true;
            this.f18836b = readUTF;
            String readUTF2 = objectInput.readUTF();
            this.f18837c = true;
            this.f18838d = readUTF2;
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                this.f18839e.add(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                String readUTF3 = objectInput.readUTF();
                this.f18840f = true;
                this.f18841g = readUTF3;
            }
            if (objectInput.readBoolean()) {
                String readUTF4 = objectInput.readUTF();
                this.f18844j = true;
                this.f18845k = readUTF4;
            }
            boolean readBoolean = objectInput.readBoolean();
            this.f18842h = true;
            this.f18843i = readBoolean;
        }

        @Override // java.io.Externalizable
        public final void writeExternal(ObjectOutput objectOutput) {
            objectOutput.writeUTF(this.f18836b);
            objectOutput.writeUTF(this.f18838d);
            int c = m704c();
            objectOutput.writeInt(c);
            for (int i = 0; i < c; i++) {
                objectOutput.writeUTF(this.f18839e.get(i));
            }
            objectOutput.writeBoolean(this.f18840f);
            if (this.f18840f) {
                objectOutput.writeUTF(this.f18841g);
            }
            objectOutput.writeBoolean(this.f18844j);
            if (this.f18844j) {
                objectOutput.writeUTF(this.f18845k);
            }
            objectOutput.writeBoolean(this.f18843i);
        }
    }

    /* renamed from: com.google.b.a.j$b */
    /* loaded from: classes-dex2jar.jar:com/google/b/a/j$b.class */
    public static final class C3125b implements Externalizable {

        /* renamed from: A */
        private boolean f18846A;

        /* renamed from: C */
        private boolean f18848C;

        /* renamed from: E */
        private boolean f18850E;

        /* renamed from: G */
        private boolean f18852G;

        /* renamed from: I */
        private boolean f18854I;

        /* renamed from: K */
        private boolean f18856K;

        /* renamed from: M */
        private boolean f18858M;

        /* renamed from: O */
        private boolean f18860O;

        /* renamed from: Q */
        private boolean f18862Q;

        /* renamed from: S */
        private boolean f18864S;

        /* renamed from: U */
        private boolean f18866U;

        /* renamed from: W */
        private boolean f18868W;

        /* renamed from: Y */
        private boolean f18870Y;

        /* renamed from: a */
        private boolean f18872a;

        /* renamed from: ac */
        private boolean f18875ac;

        /* renamed from: ae */
        private boolean f18877ae;

        /* renamed from: ag */
        private boolean f18879ag;

        /* renamed from: ai */
        private boolean f18881ai;

        /* renamed from: c */
        private boolean f18884c;

        /* renamed from: e */
        private boolean f18886e;

        /* renamed from: g */
        private boolean f18888g;

        /* renamed from: i */
        private boolean f18890i;

        /* renamed from: k */
        private boolean f18892k;

        /* renamed from: m */
        private boolean f18894m;

        /* renamed from: o */
        private boolean f18896o;

        /* renamed from: q */
        private boolean f18898q;

        /* renamed from: s */
        private boolean f18900s;

        /* renamed from: u */
        private boolean f18902u;

        /* renamed from: w */
        private boolean f18904w;

        /* renamed from: y */
        private boolean f18906y;

        /* renamed from: b */
        private C3127d f18883b = null;

        /* renamed from: d */
        private C3127d f18885d = null;

        /* renamed from: f */
        private C3127d f18887f = null;

        /* renamed from: h */
        private C3127d f18889h = null;

        /* renamed from: j */
        private C3127d f18891j = null;

        /* renamed from: l */
        private C3127d f18893l = null;

        /* renamed from: n */
        private C3127d f18895n = null;

        /* renamed from: p */
        private C3127d f18897p = null;

        /* renamed from: r */
        private C3127d f18899r = null;

        /* renamed from: t */
        private C3127d f18901t = null;

        /* renamed from: v */
        private C3127d f18903v = null;

        /* renamed from: x */
        private C3127d f18905x = null;

        /* renamed from: z */
        private C3127d f18907z = null;

        /* renamed from: B */
        private C3127d f18847B = null;

        /* renamed from: D */
        private C3127d f18849D = null;

        /* renamed from: F */
        private C3127d f18851F = null;

        /* renamed from: H */
        private C3127d f18853H = null;

        /* renamed from: J */
        private String f18855J = "";

        /* renamed from: L */
        private int f18857L = 0;

        /* renamed from: N */
        private String f18859N = "";

        /* renamed from: P */
        private String f18861P = "";

        /* renamed from: R */
        private String f18863R = "";

        /* renamed from: T */
        private String f18865T = "";

        /* renamed from: V */
        private String f18867V = "";

        /* renamed from: X */
        private String f18869X = "";

        /* renamed from: Z */
        private boolean f18871Z = false;

        /* renamed from: aa */
        private List<C3124a> f18873aa = new ArrayList();

        /* renamed from: ab */
        private List<C3124a> f18874ab = new ArrayList();

        /* renamed from: ad */
        private boolean f18876ad = false;

        /* renamed from: af */
        private String f18878af = "";

        /* renamed from: ah */
        private boolean f18880ah = false;

        /* renamed from: aj */
        private boolean f18882aj = false;

        /* renamed from: a */
        public final C3127d m702a() {
            return this.f18883b;
        }

        /* renamed from: b */
        public final C3127d m701b() {
            return this.f18885d;
        }

        /* renamed from: c */
        public final C3127d m700c() {
            return this.f18887f;
        }

        /* renamed from: d */
        public final C3127d m699d() {
            return this.f18889h;
        }

        /* renamed from: e */
        public final C3127d m698e() {
            return this.f18891j;
        }

        /* renamed from: f */
        public final C3127d m697f() {
            return this.f18893l;
        }

        /* renamed from: g */
        public final C3127d m696g() {
            return this.f18895n;
        }

        /* renamed from: h */
        public final C3127d m695h() {
            return this.f18897p;
        }

        /* renamed from: i */
        public final C3127d m694i() {
            return this.f18899r;
        }

        /* renamed from: j */
        public final C3127d m693j() {
            return this.f18901t;
        }

        /* renamed from: k */
        public final C3127d m692k() {
            return this.f18905x;
        }

        /* renamed from: l */
        public final int m691l() {
            return this.f18857L;
        }

        /* renamed from: m */
        public final String m690m() {
            return this.f18859N;
        }

        /* renamed from: n */
        public final boolean m689n() {
            return this.f18864S;
        }

        /* renamed from: o */
        public final String m688o() {
            return this.f18865T;
        }

        /* renamed from: p */
        public final String m687p() {
            return this.f18867V;
        }

        /* renamed from: q */
        public final String m686q() {
            return this.f18869X;
        }

        /* renamed from: r */
        public final List<C3124a> m685r() {
            return this.f18873aa;
        }

        @Override // java.io.Externalizable
        public final void readExternal(ObjectInput objectInput) {
            if (objectInput.readBoolean()) {
                C3127d dVar = new C3127d();
                dVar.readExternal(objectInput);
                this.f18872a = true;
                this.f18883b = dVar;
            }
            if (objectInput.readBoolean()) {
                C3127d dVar2 = new C3127d();
                dVar2.readExternal(objectInput);
                this.f18884c = true;
                this.f18885d = dVar2;
            }
            if (objectInput.readBoolean()) {
                C3127d dVar3 = new C3127d();
                dVar3.readExternal(objectInput);
                this.f18886e = true;
                this.f18887f = dVar3;
            }
            if (objectInput.readBoolean()) {
                C3127d dVar4 = new C3127d();
                dVar4.readExternal(objectInput);
                this.f18888g = true;
                this.f18889h = dVar4;
            }
            if (objectInput.readBoolean()) {
                C3127d dVar5 = new C3127d();
                dVar5.readExternal(objectInput);
                this.f18890i = true;
                this.f18891j = dVar5;
            }
            if (objectInput.readBoolean()) {
                C3127d dVar6 = new C3127d();
                dVar6.readExternal(objectInput);
                this.f18892k = true;
                this.f18893l = dVar6;
            }
            if (objectInput.readBoolean()) {
                C3127d dVar7 = new C3127d();
                dVar7.readExternal(objectInput);
                this.f18894m = true;
                this.f18895n = dVar7;
            }
            if (objectInput.readBoolean()) {
                C3127d dVar8 = new C3127d();
                dVar8.readExternal(objectInput);
                this.f18896o = true;
                this.f18897p = dVar8;
            }
            if (objectInput.readBoolean()) {
                C3127d dVar9 = new C3127d();
                dVar9.readExternal(objectInput);
                this.f18898q = true;
                this.f18899r = dVar9;
            }
            if (objectInput.readBoolean()) {
                C3127d dVar10 = new C3127d();
                dVar10.readExternal(objectInput);
                this.f18900s = true;
                this.f18901t = dVar10;
            }
            if (objectInput.readBoolean()) {
                C3127d dVar11 = new C3127d();
                dVar11.readExternal(objectInput);
                this.f18902u = true;
                this.f18903v = dVar11;
            }
            if (objectInput.readBoolean()) {
                C3127d dVar12 = new C3127d();
                dVar12.readExternal(objectInput);
                this.f18904w = true;
                this.f18905x = dVar12;
            }
            if (objectInput.readBoolean()) {
                C3127d dVar13 = new C3127d();
                dVar13.readExternal(objectInput);
                this.f18906y = true;
                this.f18907z = dVar13;
            }
            if (objectInput.readBoolean()) {
                C3127d dVar14 = new C3127d();
                dVar14.readExternal(objectInput);
                this.f18846A = true;
                this.f18847B = dVar14;
            }
            if (objectInput.readBoolean()) {
                C3127d dVar15 = new C3127d();
                dVar15.readExternal(objectInput);
                this.f18848C = true;
                this.f18849D = dVar15;
            }
            if (objectInput.readBoolean()) {
                C3127d dVar16 = new C3127d();
                dVar16.readExternal(objectInput);
                this.f18850E = true;
                this.f18851F = dVar16;
            }
            if (objectInput.readBoolean()) {
                C3127d dVar17 = new C3127d();
                dVar17.readExternal(objectInput);
                this.f18852G = true;
                this.f18853H = dVar17;
            }
            String readUTF = objectInput.readUTF();
            this.f18854I = true;
            this.f18855J = readUTF;
            int readInt = objectInput.readInt();
            this.f18856K = true;
            this.f18857L = readInt;
            String readUTF2 = objectInput.readUTF();
            this.f18858M = true;
            this.f18859N = readUTF2;
            if (objectInput.readBoolean()) {
                String readUTF3 = objectInput.readUTF();
                this.f18860O = true;
                this.f18861P = readUTF3;
            }
            if (objectInput.readBoolean()) {
                String readUTF4 = objectInput.readUTF();
                this.f18862Q = true;
                this.f18863R = readUTF4;
            }
            if (objectInput.readBoolean()) {
                String readUTF5 = objectInput.readUTF();
                this.f18864S = true;
                this.f18865T = readUTF5;
            }
            if (objectInput.readBoolean()) {
                String readUTF6 = objectInput.readUTF();
                this.f18866U = true;
                this.f18867V = readUTF6;
            }
            if (objectInput.readBoolean()) {
                String readUTF7 = objectInput.readUTF();
                this.f18868W = true;
                this.f18869X = readUTF7;
            }
            boolean readBoolean = objectInput.readBoolean();
            this.f18870Y = true;
            this.f18871Z = readBoolean;
            int readInt2 = objectInput.readInt();
            for (int i = 0; i < readInt2; i++) {
                C3124a aVar = new C3124a();
                aVar.readExternal(objectInput);
                this.f18873aa.add(aVar);
            }
            int readInt3 = objectInput.readInt();
            for (int i2 = 0; i2 < readInt3; i2++) {
                C3124a aVar2 = new C3124a();
                aVar2.readExternal(objectInput);
                this.f18874ab.add(aVar2);
            }
            boolean readBoolean2 = objectInput.readBoolean();
            this.f18875ac = true;
            this.f18876ad = readBoolean2;
            if (objectInput.readBoolean()) {
                String readUTF8 = objectInput.readUTF();
                this.f18877ae = true;
                this.f18878af = readUTF8;
            }
            boolean readBoolean3 = objectInput.readBoolean();
            this.f18879ag = true;
            this.f18880ah = readBoolean3;
            boolean readBoolean4 = objectInput.readBoolean();
            this.f18881ai = true;
            this.f18882aj = readBoolean4;
        }

        /* renamed from: s */
        public final List<C3124a> m684s() {
            return this.f18874ab;
        }

        @Override // java.io.Externalizable
        public final void writeExternal(ObjectOutput objectOutput) {
            objectOutput.writeBoolean(this.f18872a);
            if (this.f18872a) {
                this.f18883b.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18884c);
            if (this.f18884c) {
                this.f18885d.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18886e);
            if (this.f18886e) {
                this.f18887f.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18888g);
            if (this.f18888g) {
                this.f18889h.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18890i);
            if (this.f18890i) {
                this.f18891j.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18892k);
            if (this.f18892k) {
                this.f18893l.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18894m);
            if (this.f18894m) {
                this.f18895n.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18896o);
            if (this.f18896o) {
                this.f18897p.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18898q);
            if (this.f18898q) {
                this.f18899r.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18900s);
            if (this.f18900s) {
                this.f18901t.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18902u);
            if (this.f18902u) {
                this.f18903v.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18904w);
            if (this.f18904w) {
                this.f18905x.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18906y);
            if (this.f18906y) {
                this.f18907z.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18846A);
            if (this.f18846A) {
                this.f18847B.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18848C);
            if (this.f18848C) {
                this.f18849D.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18850E);
            if (this.f18850E) {
                this.f18851F.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18852G);
            if (this.f18852G) {
                this.f18853H.writeExternal(objectOutput);
            }
            objectOutput.writeUTF(this.f18855J);
            objectOutput.writeInt(this.f18857L);
            objectOutput.writeUTF(this.f18859N);
            objectOutput.writeBoolean(this.f18860O);
            if (this.f18860O) {
                objectOutput.writeUTF(this.f18861P);
            }
            objectOutput.writeBoolean(this.f18862Q);
            if (this.f18862Q) {
                objectOutput.writeUTF(this.f18863R);
            }
            objectOutput.writeBoolean(this.f18864S);
            if (this.f18864S) {
                objectOutput.writeUTF(this.f18865T);
            }
            objectOutput.writeBoolean(this.f18866U);
            if (this.f18866U) {
                objectOutput.writeUTF(this.f18867V);
            }
            objectOutput.writeBoolean(this.f18868W);
            if (this.f18868W) {
                objectOutput.writeUTF(this.f18869X);
            }
            objectOutput.writeBoolean(this.f18871Z);
            int size = this.f18873aa.size();
            objectOutput.writeInt(size);
            for (int i = 0; i < size; i++) {
                this.f18873aa.get(i).writeExternal(objectOutput);
            }
            int size2 = this.f18874ab.size();
            objectOutput.writeInt(size2);
            for (int i2 = 0; i2 < size2; i2++) {
                this.f18874ab.get(i2).writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f18876ad);
            objectOutput.writeBoolean(this.f18877ae);
            if (this.f18877ae) {
                objectOutput.writeUTF(this.f18878af);
            }
            objectOutput.writeBoolean(this.f18880ah);
            objectOutput.writeBoolean(this.f18882aj);
        }
    }

    /* renamed from: com.google.b.a.j$c */
    /* loaded from: classes-dex2jar.jar:com/google/b/a/j$c.class */
    public static final class C3126c implements Externalizable {

        /* renamed from: a */
        private List<C3125b> f18908a = new ArrayList();

        /* renamed from: a */
        public final List<C3125b> m683a() {
            return this.f18908a;
        }

        @Override // java.io.Externalizable
        public final void readExternal(ObjectInput objectInput) {
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                C3125b bVar = new C3125b();
                bVar.readExternal(objectInput);
                this.f18908a.add(bVar);
            }
        }

        @Override // java.io.Externalizable
        public final void writeExternal(ObjectOutput objectOutput) {
            int size = this.f18908a.size();
            objectOutput.writeInt(size);
            for (int i = 0; i < size; i++) {
                this.f18908a.get(i).writeExternal(objectOutput);
            }
        }
    }

    /* renamed from: com.google.b.a.j$d */
    /* loaded from: classes-dex2jar.jar:com/google/b/a/j$d.class */
    public static final class C3127d implements Externalizable {

        /* renamed from: a */
        private boolean f18909a;

        /* renamed from: e */
        private boolean f18913e;

        /* renamed from: b */
        private String f18910b = "";

        /* renamed from: c */
        private List<Integer> f18911c = new ArrayList();

        /* renamed from: d */
        private List<Integer> f18912d = new ArrayList();

        /* renamed from: f */
        private String f18914f = "";

        /* renamed from: a */
        public final String m682a() {
            return this.f18910b;
        }

        /* renamed from: b */
        public final List<Integer> m681b() {
            return this.f18911c;
        }

        /* renamed from: c */
        public final int m680c() {
            return this.f18911c.size();
        }

        /* renamed from: d */
        public final int m679d() {
            return this.f18911c.get(0).intValue();
        }

        /* renamed from: e */
        public final List<Integer> m678e() {
            return this.f18912d;
        }

        @Override // java.io.Externalizable
        public final void readExternal(ObjectInput objectInput) {
            if (objectInput.readBoolean()) {
                String readUTF = objectInput.readUTF();
                this.f18909a = true;
                this.f18910b = readUTF;
            }
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                this.f18911c.add(Integer.valueOf(objectInput.readInt()));
            }
            int readInt2 = objectInput.readInt();
            for (int i2 = 0; i2 < readInt2; i2++) {
                this.f18912d.add(Integer.valueOf(objectInput.readInt()));
            }
            if (objectInput.readBoolean()) {
                String readUTF2 = objectInput.readUTF();
                this.f18913e = true;
                this.f18914f = readUTF2;
            }
        }

        @Override // java.io.Externalizable
        public final void writeExternal(ObjectOutput objectOutput) {
            objectOutput.writeBoolean(this.f18909a);
            if (this.f18909a) {
                objectOutput.writeUTF(this.f18910b);
            }
            int c = m680c();
            objectOutput.writeInt(c);
            for (int i = 0; i < c; i++) {
                objectOutput.writeInt(this.f18911c.get(i).intValue());
            }
            int size = this.f18912d.size();
            objectOutput.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                objectOutput.writeInt(this.f18912d.get(i2).intValue());
            }
            objectOutput.writeBoolean(this.f18913e);
            if (this.f18913e) {
                objectOutput.writeUTF(this.f18914f);
            }
        }
    }
}
