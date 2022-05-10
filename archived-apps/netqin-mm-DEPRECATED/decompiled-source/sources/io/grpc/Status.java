package io.grpc;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;
import p131c.p161d.p266c.p267a.C4916c;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p267a.C4942t;
import p530d.p531a.C9260k0;
/* loaded from: classes2-dex2jar.jar:io/grpc/Status.class */
public final class Status {

    /* renamed from: d */
    public static final boolean f37986d = Boolean.parseBoolean(System.getProperty("io.grpc.Status.failOnEqualsForTest", "false"));

    /* renamed from: e */
    public static final List<Status> f37987e = m600h();

    /* renamed from: f */
    public static final Status f37988f = Code.OK.toStatus();

    /* renamed from: g */
    public static final Status f37989g = Code.CANCELLED.toStatus();

    /* renamed from: h */
    public static final Status f37990h = Code.UNKNOWN.toStatus();

    /* renamed from: i */
    public static final Status f37991i = Code.DEADLINE_EXCEEDED.toStatus();

    /* renamed from: j */
    public static final Status f37992j = Code.PERMISSION_DENIED.toStatus();

    /* renamed from: k */
    public static final Status f37993k = Code.UNAUTHENTICATED.toStatus();

    /* renamed from: l */
    public static final Status f37994l = Code.RESOURCE_EXHAUSTED.toStatus();

    /* renamed from: m */
    public static final Status f37995m = Code.INTERNAL.toStatus();

    /* renamed from: n */
    public static final Status f37996n = Code.UNAVAILABLE.toStatus();

    /* renamed from: o */
    public static final C9260k0.AbstractC9266f<Status> f37997o = C9260k0.AbstractC9266f.m3044a("grpc-status", false, (C9260k0.AbstractC9269i) new C10305b());

    /* renamed from: p */
    public static final C9260k0.AbstractC9269i<String> f37998p;

    /* renamed from: q */
    public static final C9260k0.AbstractC9266f<String> f37999q;

    /* renamed from: a */
    public final Code f38000a;

    /* renamed from: b */
    public final String f38001b;

    /* renamed from: c */
    public final Throwable f38002c;

    /* loaded from: classes2-dex2jar.jar:io/grpc/Status$Code.class */
    public enum Code {
        OK(0),
        CANCELLED(1),
        UNKNOWN(2),
        INVALID_ARGUMENT(3),
        DEADLINE_EXCEEDED(4),
        NOT_FOUND(5),
        ALREADY_EXISTS(6),
        PERMISSION_DENIED(7),
        RESOURCE_EXHAUSTED(8),
        FAILED_PRECONDITION(9),
        ABORTED(10),
        OUT_OF_RANGE(11),
        UNIMPLEMENTED(12),
        INTERNAL(13),
        UNAVAILABLE(14),
        DATA_LOSS(15),
        UNAUTHENTICATED(16);
        
        public final int value;
        public final byte[] valueAscii;

        Code(int i) {
            this.value = i;
            this.valueAscii = Integer.toString(i).getBytes(C4916c.f17555a);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte[] valueAscii() {
            return this.valueAscii;
        }

        public Status toStatus() {
            return (Status) Status.f37987e.get(this.value);
        }

        public int value() {
            return this.value;
        }
    }

    /* renamed from: io.grpc.Status$b */
    /* loaded from: classes2-dex2jar.jar:io/grpc/Status$b.class */
    public static final class C10305b implements C9260k0.AbstractC9269i<Status> {
        public C10305b() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p530d.p531a.C9260k0.AbstractC9269i
        /* renamed from: a */
        public Status mo518a(byte[] bArr) {
            return Status.m607b(bArr);
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public byte[] mo519a(Status status) {
            return status.m604d().valueAscii();
        }
    }

    /* renamed from: io.grpc.Status$c */
    /* loaded from: classes2-dex2jar.jar:io/grpc/Status$c.class */
    public static final class C10306c implements C9260k0.AbstractC9269i<String> {

        /* renamed from: a */
        public static final byte[] f38004a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};

        public C10306c() {
        }

        /* renamed from: a */
        public static boolean m598a(byte b) {
            return b < 32 || b >= 126 || b == 37;
        }

        /* renamed from: a */
        public static byte[] m596a(byte[] bArr, int i) {
            byte[] bArr2 = new byte[((bArr.length - i) * 3) + i];
            if (i != 0) {
                System.arraycopy(bArr, 0, bArr2, 0, i);
            }
            int i2 = i;
            for (int i3 = i; i3 < bArr.length; i3++) {
                byte b = bArr[i3];
                if (m598a(b)) {
                    bArr2[i2] = (byte) 37;
                    byte[] bArr3 = f38004a;
                    bArr2[i2 + 1] = bArr3[(b >> 4) & 15];
                    bArr2[i2 + 2] = bArr3[b & 15];
                    i2 += 3;
                } else {
                    bArr2[i2] = b;
                    i2++;
                }
            }
            byte[] bArr4 = new byte[i2];
            System.arraycopy(bArr2, 0, bArr4, 0, i2);
            return bArr4;
        }

        /* renamed from: b */
        public static String m595b(byte[] bArr) {
            ByteBuffer allocate = ByteBuffer.allocate(bArr.length);
            int i = 0;
            while (i < bArr.length) {
                if (bArr[i] == 37 && i + 2 < bArr.length) {
                    try {
                        allocate.put((byte) Integer.parseInt(new String(bArr, i + 1, 2, C4916c.f17555a), 16));
                        i += 3;
                    } catch (NumberFormatException e) {
                    }
                }
                allocate.put(bArr[i]);
                i++;
            }
            return new String(allocate.array(), 0, allocate.position(), C4916c.f17556b);
        }

        @Override // p530d.p531a.C9260k0.AbstractC9269i
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public String mo518a(byte[] bArr) {
            for (int i = 0; i < bArr.length; i++) {
                byte b = bArr[i];
                if (b < 32 || b >= 126 || (b == 37 && i + 2 < bArr.length)) {
                    return m595b(bArr);
                }
            }
            return new String(bArr, 0);
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public byte[] mo519a(String str) {
            byte[] bytes = str.getBytes(C4916c.f17556b);
            for (int i = 0; i < bytes.length; i++) {
                if (m598a(bytes[i])) {
                    return m596a(bytes, i);
                }
            }
            return bytes;
        }
    }

    static {
        Code.INVALID_ARGUMENT.toStatus();
        Code.NOT_FOUND.toStatus();
        Code.ALREADY_EXISTS.toStatus();
        Code.FAILED_PRECONDITION.toStatus();
        Code.ABORTED.toStatus();
        Code.OUT_OF_RANGE.toStatus();
        Code.UNIMPLEMENTED.toStatus();
        Code.DATA_LOSS.toStatus();
        C10306c cVar = new C10306c();
        f37998p = cVar;
        f37999q = C9260k0.AbstractC9266f.m3044a("grpc-message", false, (C9260k0.AbstractC9269i) cVar);
    }

    public Status(Code code) {
        this(code, null, null);
    }

    public Status(Code code, String str, Throwable th) {
        C4933n.m24794a(code, "code");
        this.f38000a = code;
        this.f38001b = str;
        this.f38002c = th;
    }

    /* renamed from: a */
    public static Status m616a(int i) {
        if (i >= 0 && i <= f37987e.size()) {
            return f37987e.get(i);
        }
        Status status = f37990h;
        return status.m609b("Unknown code " + i);
    }

    /* renamed from: a */
    public static String m614a(Status status) {
        if (status.f38001b == null) {
            return status.f38000a.toString();
        }
        return status.f38000a + ": " + status.f38001b;
    }

    /* renamed from: b */
    public static Status m608b(Throwable th) {
        C4933n.m24794a(th, "t");
        for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
            if (th2 instanceof StatusException) {
                return ((StatusException) th2).getStatus();
            }
            if (th2 instanceof StatusRuntimeException) {
                return ((StatusRuntimeException) th2).getStatus();
            }
        }
        return f37990h.m612a(th);
    }

    /* renamed from: b */
    public static Status m607b(byte[] bArr) {
        return (bArr.length == 1 && bArr[0] == 48) ? f37988f : m605c(bArr);
    }

    /* renamed from: c */
    public static Status m605c(byte[] bArr) {
        int i;
        int length = bArr.length;
        char c = 1;
        int i2 = 0;
        if (length != 1) {
            if (length == 2 && bArr[0] >= 48 && bArr[0] <= 57) {
                i2 = 0 + ((bArr[0] - 48) * 10);
            }
            Status status = f37990h;
            return status.m609b("Unknown code " + new String(bArr, C4916c.f17555a));
        }
        c = 0;
        if (bArr[c] >= 48 && bArr[c] <= 57 && (i = i2 + (bArr[c] - 48)) < f37987e.size()) {
            return f37987e.get(i);
        }
        Status status2 = f37990h;
        return status2.m609b("Unknown code " + new String(bArr, C4916c.f17555a));
    }

    /* renamed from: h */
    public static List<Status> m600h() {
        Code[] values;
        Status status;
        TreeMap treeMap = new TreeMap();
        for (Code code : Code.values()) {
            if (((Status) treeMap.put(Integer.valueOf(code.value()), new Status(code))) != null) {
                throw new IllegalStateException("Code value duplication between " + status.m604d().name() + " & " + code.name());
            }
        }
        return Collections.unmodifiableList(new ArrayList(treeMap.values()));
    }

    /* renamed from: a */
    public Status m613a(String str) {
        if (str == null) {
            return this;
        }
        if (this.f38001b == null) {
            return new Status(this.f38000a, str, this.f38002c);
        }
        Code code = this.f38000a;
        return new Status(code, this.f38001b + "\n" + str, this.f38002c);
    }

    /* renamed from: a */
    public Status m612a(Throwable th) {
        return C4928k.m24808a(this.f38002c, th) ? this : new Status(this.f38000a, this.f38001b, th);
    }

    /* renamed from: a */
    public StatusException m617a() {
        return new StatusException(this);
    }

    /* renamed from: a */
    public StatusRuntimeException m615a(C9260k0 k0Var) {
        return new StatusRuntimeException(this, k0Var);
    }

    /* renamed from: b */
    public Status m609b(String str) {
        return C4928k.m24808a(this.f38001b, str) ? this : new Status(this.f38000a, str, this.f38002c);
    }

    /* renamed from: b */
    public StatusRuntimeException m610b() {
        return new StatusRuntimeException(this);
    }

    /* renamed from: c */
    public Throwable m606c() {
        return this.f38002c;
    }

    /* renamed from: d */
    public Code m604d() {
        return this.f38000a;
    }

    /* renamed from: e */
    public String m603e() {
        return this.f38001b;
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* renamed from: f */
    public boolean m602f() {
        return Code.OK == this.f38000a;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24813a("code", this.f38000a.name());
        a.m24813a("description", this.f38001b);
        Throwable th = this.f38002c;
        Object obj = th;
        if (th != null) {
            obj = C4942t.m24751a(th);
        }
        a.m24813a("cause", obj);
        return a.toString();
    }
}
