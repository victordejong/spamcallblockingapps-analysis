.class public final Le/a/q2/b1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:[B


# direct methods
.method public constructor <init>(J[B)V
    .locals 1

    const-string v0, "record"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le/a/q2/b1/c;->a:J

    iput-object p3, p0, Le/a/q2/b1/c;->b:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Le/a/q2/b1/c;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/q2/b1/c;

    iget-wide v0, p1, Le/a/q2/b1/c;->a:J

    iget-wide v2, p0, Le/a/q2/b1/c;->a:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Le/a/q2/b1/c;->a:J

    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    return v0
.end method
