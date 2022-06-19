.class public final Le/a/k0/h$e;
.super Le/a/k0/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Lw3/b/a/b;

.field public final b:J


# direct methods
.method public constructor <init>(Lw3/b/a/b;J)V
    .locals 1

    const-string v0, "startTime"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/k0/h;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/k0/h$e;->a:Lw3/b/a/b;

    iput-wide p2, p0, Le/a/k0/h$e;->b:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/k0/h$e;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/k0/h$e;

    iget-object v0, p0, Le/a/k0/h$e;->a:Lw3/b/a/b;

    iget-object v1, p1, Le/a/k0/h$e;->a:Lw3/b/a/b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le/a/k0/h$e;->b:J

    iget-wide v2, p1, Le/a/k0/h$e;->b:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Le/a/k0/h$e;->a:Lw3/b/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw3/b/a/e0/c;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/a/k0/h$e;->b:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Started(startTime="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/k0/h$e;->a:Lw3/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startTimeBase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/k0/h$e;->b:J

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
