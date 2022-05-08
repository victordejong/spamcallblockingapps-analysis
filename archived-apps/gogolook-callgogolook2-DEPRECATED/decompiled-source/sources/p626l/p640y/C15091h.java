package p626l.p640y;

import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.Metadata;
import p626l.C14976h;
import p626l.C14989s;
import p626l.C14990t;
import p626l.p630d0.AbstractC14921e;
import p626l.p632u.AbstractC14996c;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0006\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001a\u001b\u001cB\u0019\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0089\u0001\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\b\u00128\u0010\f\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0096\u0002J\u000e\u0010\u0013\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020\u0014J\u001a\u0010\u0007\u001a\u00020��2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\bJ \u0010\f\u001a\u00020��2\u0018\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\rJ\u001a\u0010\n\u001a\u00020��2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n��R@\u0010\f\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rX\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001d"}, m815d2 = {"Lkotlin/io/FileTreeWalk;", "Lkotlin/sequences/Sequence;", "Ljava/io/File;", "start", "direction", "Lkotlin/io/FileWalkDirection;", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V", "onEnter", "Lkotlin/Function1;", "", "onLeave", "", "onFail", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "f", "Ljava/io/IOException;", "e", "maxDepth", "", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V", "iterator", "", "depth", "function", "DirectoryState", "FileTreeWalkIterator", "WalkState", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.y.h */
/* loaded from: classes3-dex2jar.jar:l/y/h.class */
public final class C15091h implements AbstractC14921e<File> {

    /* renamed from: a */
    public final File f33106a;

    /* renamed from: b */
    public final EnumC15099j f33107b;

    /* renamed from: c */
    public final AbstractC15118l<File, Boolean> f33108c;

    /* renamed from: d */
    public final AbstractC15118l<File, C14989s> f33109d;

    /* renamed from: e */
    public final AbstractC15122p<File, IOException, C14989s> f33110e;

    /* renamed from: f */
    public final int f33111f;

    /* renamed from: l.y.h$a */
    /* loaded from: classes3-dex2jar.jar:l/y/h$a.class */
    public static abstract class AbstractC15092a extends AbstractC15097c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AbstractC15092a(File file) {
            super(file);
            C15149k.m377b(file, "rootDir");
            if (C14990t.f33023a) {
                boolean isDirectory = file.isDirectory();
                if (C14990t.f33023a && !isDirectory) {
                    throw new AssertionError("rootDir must be verified to be directory beforehand.");
                }
            }
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\r\u000e\u000fB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\bH\u0014J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0082\u0010R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, m815d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;", "Lkotlin/collections/AbstractIterator;", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk;)V", IapProductRealmObject.STATE, "Ljava/util/ArrayDeque;", "Lkotlin/io/FileTreeWalk$WalkState;", "computeNext", "", "directoryState", "Lkotlin/io/FileTreeWalk$DirectoryState;", "root", "gotoNext", "BottomUpDirectoryState", "SingleFileState", "TopDownDirectoryState", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
    /* renamed from: l.y.h$b */
    /* loaded from: classes3-dex2jar.jar:l/y/h$b.class */
    public final class C15093b extends AbstractC14996c<File> {

        /* renamed from: c */
        public final ArrayDeque<AbstractC15097c> f33112c = new ArrayDeque<>();

        /* renamed from: l.y.h$b$a */
        /* loaded from: classes3-dex2jar.jar:l/y/h$b$a.class */
        public final class C15094a extends AbstractC15092a {

            /* renamed from: b */
            public boolean f33114b;

            /* renamed from: c */
            public File[] f33115c;

            /* renamed from: d */
            public int f33116d;

            /* renamed from: e */
            public boolean f33117e;

            /* renamed from: f */
            public final /* synthetic */ C15093b f33118f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15094a(C15093b bVar, File file) {
                super(file);
                C15149k.m377b(file, "rootDir");
                this.f33118f = bVar;
            }

            @Override // p626l.p640y.C15091h.AbstractC15097c
            /* renamed from: b */
            public File mo433b() {
                if (!this.f33117e && this.f33115c == null) {
                    AbstractC15118l lVar = C15091h.this.f33108c;
                    if (lVar != null && !((Boolean) lVar.invoke(m434a())).booleanValue()) {
                        return null;
                    }
                    this.f33115c = m434a().listFiles();
                    if (this.f33115c == null) {
                        AbstractC15122p pVar = C15091h.this.f33110e;
                        if (pVar != null) {
                            C14989s sVar = (C14989s) pVar.invoke(m434a(), new C15084a(m434a(), null, "Cannot list files in a directory", 2, null));
                        }
                        this.f33117e = true;
                    }
                }
                File[] fileArr = this.f33115c;
                if (fileArr != null) {
                    int i = this.f33116d;
                    if (fileArr == null) {
                        C15149k.m378b();
                        throw null;
                    } else if (i < fileArr.length) {
                        if (fileArr != null) {
                            this.f33116d = i + 1;
                            return fileArr[i];
                        }
                        C15149k.m378b();
                        throw null;
                    }
                }
                if (!this.f33114b) {
                    this.f33114b = true;
                    return m434a();
                }
                AbstractC15118l lVar2 = C15091h.this.f33109d;
                if (lVar2 == null) {
                    return null;
                }
                C14989s sVar2 = (C14989s) lVar2.invoke(m434a());
                return null;
            }
        }

        /* renamed from: l.y.h$b$b */
        /* loaded from: classes3-dex2jar.jar:l/y/h$b$b.class */
        public final class C15095b extends AbstractC15097c {

            /* renamed from: b */
            public boolean f33119b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15095b(C15093b bVar, File file) {
                super(file);
                C15149k.m377b(file, "rootFile");
                if (C14990t.f33023a) {
                    boolean isFile = file.isFile();
                    if (C14990t.f33023a && !isFile) {
                        throw new AssertionError("rootFile must be verified to be file beforehand.");
                    }
                }
            }

            @Override // p626l.p640y.C15091h.AbstractC15097c
            /* renamed from: b */
            public File mo433b() {
                if (this.f33119b) {
                    return null;
                }
                this.f33119b = true;
                return m434a();
            }
        }

        /* renamed from: l.y.h$b$c */
        /* loaded from: classes3-dex2jar.jar:l/y/h$b$c.class */
        public final class C15096c extends AbstractC15092a {

            /* renamed from: b */
            public boolean f33120b;

            /* renamed from: c */
            public File[] f33121c;

            /* renamed from: d */
            public int f33122d;

            /* renamed from: e */
            public final /* synthetic */ C15093b f33123e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15096c(C15093b bVar, File file) {
                super(file);
                C15149k.m377b(file, "rootDir");
                this.f33123e = bVar;
            }

            /* JADX WARN: Code restructure failed: missing block: B:35:0x00c9, code lost:
                if (r0.length == 0) goto L_0x00d4;
             */
            @Override // p626l.p640y.C15091h.AbstractC15097c
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.io.File mo433b() {
                /*
                    Method dump skipped, instructions count: 273
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p626l.p640y.C15091h.C15093b.C15096c.mo433b():java.io.File");
            }
        }

        public C15093b() {
            if (C15091h.this.f33106a.isDirectory()) {
                this.f33112c.push(m436a(C15091h.this.f33106a));
            } else if (C15091h.this.f33106a.isFile()) {
                this.f33112c.push(new C15095b(this, C15091h.this.f33106a));
            } else {
                m642b();
            }
        }

        /* renamed from: a */
        public final AbstractC15092a m436a(File file) {
            AbstractC15092a aVar;
            int i = C15098i.f33125a[C15091h.this.f33107b.ordinal()];
            if (i == 1) {
                aVar = new C15096c(this, file);
            } else if (i == 2) {
                aVar = new C15094a(this, file);
            } else {
                throw new C14976h();
            }
            return aVar;
        }

        @Override // p626l.p632u.AbstractC14996c
        /* renamed from: a */
        public void mo437a() {
            File d = m435d();
            if (d != null) {
                m643a((C15093b) d);
            } else {
                m642b();
            }
        }

        /* renamed from: d */
        public final File m435d() {
            File b;
            while (true) {
                AbstractC15097c peek = this.f33112c.peek();
                if (peek == null) {
                    return null;
                }
                b = peek.mo433b();
                if (b == null) {
                    this.f33112c.pop();
                } else if (C15149k.m384a(b, peek.m434a()) || !b.isDirectory() || this.f33112c.size() >= C15091h.this.f33111f) {
                    break;
                } else {
                    this.f33112c.push(m436a(b));
                }
            }
            return b;
        }
    }

    /* renamed from: l.y.h$c */
    /* loaded from: classes3-dex2jar.jar:l/y/h$c.class */
    public static abstract class AbstractC15097c {

        /* renamed from: a */
        public final File f33124a;

        public AbstractC15097c(File file) {
            C15149k.m377b(file, "root");
            this.f33124a = file;
        }

        /* renamed from: a */
        public final File m434a() {
            return this.f33124a;
        }

        /* renamed from: b */
        public abstract File mo433b();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C15091h(File file, EnumC15099j jVar) {
        this(file, jVar, null, null, null, 0, 32, null);
        C15149k.m377b(file, "start");
        C15149k.m377b(jVar, "direction");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C15091h(File file, EnumC15099j jVar, AbstractC15118l<? super File, Boolean> lVar, AbstractC15118l<? super File, C14989s> lVar2, AbstractC15122p<? super File, ? super IOException, C14989s> pVar, int i) {
        this.f33106a = file;
        this.f33107b = jVar;
        this.f33108c = lVar;
        this.f33109d = lVar2;
        this.f33110e = pVar;
        this.f33111f = i;
    }

    public /* synthetic */ C15091h(File file, EnumC15099j jVar, AbstractC15118l lVar, AbstractC15118l lVar2, AbstractC15122p pVar, int i, int i2, C15145g gVar) {
        this(file, (i2 & 2) != 0 ? EnumC15099j.TOP_DOWN : jVar, lVar, lVar2, pVar, (i2 & 32) != 0 ? Integer.MAX_VALUE : i);
    }

    @Override // p626l.p630d0.AbstractC14921e
    public Iterator<File> iterator() {
        return new C15093b();
    }
}
