.class public final Lw3/b/a/i;
.super Lw3/b/a/e0/f;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/y;
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Lw3/b/a/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lw3/b/a/i;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lw3/b/a/i;-><init>(J)V

    sput-object v0, Lw3/b/a/i;->b:Lw3/b/a/i;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lw3/b/a/e0/f;-><init>(J)V

    return-void
.end method

.method public static a(J)Lw3/b/a/i;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1
    sget-object p0, Lw3/b/a/i;->b:Lw3/b/a/i;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lw3/b/a/i;

    const v1, 0x5265c00

    invoke-static {p0, p1, v1}, Ls1/a/a/a/v0/f/d;->e3(JI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lw3/b/a/i;-><init>(J)V

    return-object v0
.end method

.method public static c(J)Lw3/b/a/i;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1
    sget-object p0, Lw3/b/a/i;->b:Lw3/b/a/i;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lw3/b/a/i;

    const v1, 0x36ee80

    invoke-static {p0, p1, v1}, Ls1/a/a/a/v0/f/d;->e3(JI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lw3/b/a/i;-><init>(J)V

    return-object v0
.end method

.method public static d(J)Lw3/b/a/i;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1
    sget-object p0, Lw3/b/a/i;->b:Lw3/b/a/i;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lw3/b/a/i;

    const v1, 0xea60

    invoke-static {p0, p1, v1}, Ls1/a/a/a/v0/f/d;->e3(JI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lw3/b/a/i;-><init>(J)V

    return-object v0
.end method

.method public static e(J)Lw3/b/a/i;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1
    sget-object p0, Lw3/b/a/i;->b:Lw3/b/a/i;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lw3/b/a/i;

    const/16 v1, 0x3e8

    invoke-static {p0, p1, v1}, Ls1/a/a/a/v0/f/d;->e3(JI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lw3/b/a/i;-><init>(J)V

    return-object v0
.end method
