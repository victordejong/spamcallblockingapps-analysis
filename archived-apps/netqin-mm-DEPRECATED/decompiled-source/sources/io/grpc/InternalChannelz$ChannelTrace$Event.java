package io.grpc;

import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9224d0;
/* loaded from: classes2-dex2jar.jar:io/grpc/InternalChannelz$ChannelTrace$Event.class */
public final class InternalChannelz$ChannelTrace$Event {

    /* renamed from: a */
    public final String f37957a;

    /* renamed from: b */
    public final Severity f37958b;

    /* renamed from: c */
    public final long f37959c;

    /* renamed from: d */
    public final AbstractC9224d0 f37960d;

    /* renamed from: e */
    public final AbstractC9224d0 f37961e;

    /* loaded from: classes2-dex2jar.jar:io/grpc/InternalChannelz$ChannelTrace$Event$Severity.class */
    public enum Severity {
        CT_UNKNOWN,
        CT_INFO,
        CT_WARNING,
        CT_ERROR
    }

    /* renamed from: io.grpc.InternalChannelz$ChannelTrace$Event$a */
    /* loaded from: classes2-dex2jar.jar:io/grpc/InternalChannelz$ChannelTrace$Event$a.class */
    public static final class C10296a {

        /* renamed from: a */
        public String f37962a;

        /* renamed from: b */
        public Severity f37963b;

        /* renamed from: c */
        public Long f37964c;

        /* renamed from: d */
        public AbstractC9224d0 f37965d;

        /* renamed from: e */
        public AbstractC9224d0 f37966e;

        /* renamed from: a */
        public C10296a m647a(long j) {
            this.f37964c = Long.valueOf(j);
            return this;
        }

        /* renamed from: a */
        public C10296a m646a(AbstractC9224d0 d0Var) {
            this.f37966e = d0Var;
            return this;
        }

        /* renamed from: a */
        public C10296a m645a(Severity severity) {
            this.f37963b = severity;
            return this;
        }

        /* renamed from: a */
        public C10296a m644a(String str) {
            this.f37962a = str;
            return this;
        }

        /* renamed from: a */
        public InternalChannelz$ChannelTrace$Event m648a() {
            C4933n.m24794a(this.f37962a, "description");
            C4933n.m24794a(this.f37963b, "severity");
            C4933n.m24794a(this.f37964c, "timestampNanos");
            C4933n.m24775b(this.f37965d == null || this.f37966e == null, "at least one of channelRef and subchannelRef must be null");
            return new InternalChannelz$ChannelTrace$Event(this.f37962a, this.f37963b, this.f37964c.longValue(), this.f37965d, this.f37966e);
        }
    }

    public InternalChannelz$ChannelTrace$Event(String str, Severity severity, long j, AbstractC9224d0 d0Var, AbstractC9224d0 d0Var2) {
        this.f37957a = str;
        C4933n.m24794a(severity, "severity");
        this.f37958b = severity;
        this.f37959c = j;
        this.f37960d = d0Var;
        this.f37961e = d0Var2;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof InternalChannelz$ChannelTrace$Event) {
            InternalChannelz$ChannelTrace$Event internalChannelz$ChannelTrace$Event = (InternalChannelz$ChannelTrace$Event) obj;
            z = false;
            if (C4928k.m24808a(this.f37957a, internalChannelz$ChannelTrace$Event.f37957a)) {
                z = false;
                if (C4928k.m24808a(this.f37958b, internalChannelz$ChannelTrace$Event.f37958b)) {
                    z = false;
                    if (this.f37959c == internalChannelz$ChannelTrace$Event.f37959c) {
                        z = false;
                        if (C4928k.m24808a(this.f37960d, internalChannelz$ChannelTrace$Event.f37960d)) {
                            z = false;
                            if (C4928k.m24808a(this.f37961e, internalChannelz$ChannelTrace$Event.f37961e)) {
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return C4928k.m24807a(this.f37957a, this.f37958b, Long.valueOf(this.f37959c), this.f37960d, this.f37961e);
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24813a("description", this.f37957a);
        a.m24813a("severity", this.f37958b);
        a.m24814a("timestampNanos", this.f37959c);
        a.m24813a("channelRef", this.f37960d);
        a.m24813a("subchannelRef", this.f37961e);
        return a.toString();
    }
}
