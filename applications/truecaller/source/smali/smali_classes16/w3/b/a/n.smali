.class public final Lw3/b/a/n;
.super Lw3/b/a/e0/c;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/z;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lw3/b/a/e0/c;-><init>()V

    .line 2
    sget-object v0, Lw3/b/a/e;->a:Lw3/b/a/e$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lw3/b/a/n;->a:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lw3/b/a/e0/c;-><init>()V

    .line 5
    iput-wide p1, p0, Lw3/b/a/n;->a:J

    return-void
.end method


# virtual methods
.method public S1()Lw3/b/a/n;
    .locals 0

    return-object p0
.end method

.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lw3/b/a/n;->a:J

    return-wide v0
.end method

.method public l()Lw3/b/a/a;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/f0/t;->Q:Lw3/b/a/f0/t;

    return-object v0
.end method
