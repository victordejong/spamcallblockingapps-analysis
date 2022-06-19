.class public final Lw3/b/a/d0;
.super Lw3/b/a/g;
.source "SourceFile"


# static fields
.field public static final f:Lw3/b/a/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/d0;

    invoke-direct {v0}, Lw3/b/a/d0;-><init>()V

    sput-object v0, Lw3/b/a/d0;->f:Lw3/b/a/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UTC"

    .line 1
    invoke-direct {p0, v0}, Lw3/b/a/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lw3/b/a/d0;

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/g;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public k(J)Ljava/lang/String;
    .locals 0

    const-string p1, "UTC"

    return-object p1
.end method

.method public m(J)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public n(J)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public p(J)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public r(J)J
    .locals 0

    return-wide p1
.end method

.method public s(J)J
    .locals 0

    return-wide p1
.end method
