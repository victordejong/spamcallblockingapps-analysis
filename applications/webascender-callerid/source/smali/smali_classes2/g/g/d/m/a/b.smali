.class public final Lg/g/d/m/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/d/f/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSpanId()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/y/d;->a(J)Lkotlin/y/c;

    move-result-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lkotlin/y/c;->g()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 3
    invoke-static {v1, v2}, Li/a/a/f/p;->a(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpanId.fromLong(id)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public generateTraceId()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/y/d;->a(J)Lkotlin/y/c;

    move-result-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lkotlin/y/c;->g()J

    move-result-wide v1

    .line 3
    invoke-virtual {v0}, Lkotlin/y/c;->g()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-nez v7, :cond_1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 4
    :cond_1
    invoke-static {v1, v2, v3, v4}, Li/a/a/f/u;->a(JJ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TraceId.fromLongs(idHi, idLo)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
