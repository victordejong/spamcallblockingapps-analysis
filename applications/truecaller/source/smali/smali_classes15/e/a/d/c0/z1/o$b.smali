.class public final Le/a/d/c0/z1/o$b;
.super Le/a/d/c0/z1/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/c0/z1/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "voipId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/d/c0/z1/o;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/d/c0/z1/o$b;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/d/c0/z1/o$b;->b:Ljava/lang/String;

    iput p3, p0, Le/a/d/c0/z1/o$b;->c:I

    iput-boolean p4, p0, Le/a/d/c0/z1/o$b;->d:Z

    return-void
.end method


# virtual methods
.method public a(Le/a/d/c0/z1/o;)Z
    .locals 3

    const-string v0, "handle"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/d/c0/z1/o$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/d/c0/z1/o$b;->a:Ljava/lang/String;

    check-cast p1, Le/a/d/c0/z1/o$b;

    iget-object p1, p1, Le/a/d/c0/z1/o$b;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Le/a/d/c0/z1/o$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/d/c0/z1/o$b;->b:Ljava/lang/String;

    check-cast p1, Le/a/d/c0/z1/o$a;

    .line 3
    iget-object p1, p1, Le/a/d/c0/z1/o$a;->a:Ljava/lang/String;

    .line 4
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, Le/a/d/c0/z1/o$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/d/c0/z1/o$b;->a:Ljava/lang/String;

    check-cast p1, Le/a/d/c0/z1/o$d;

    .line 6
    iget-object p1, p1, Le/a/d/c0/z1/o$d;->a:Ljava/lang/String;

    const/4 v2, 0x2

    .line 7
    invoke-static {v0, p1, v1, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    goto :goto_0

    .line 8
    :cond_2
    instance-of v0, p1, Le/a/d/c0/z1/o$c;

    if-eqz v0, :cond_4

    iget v0, p0, Le/a/d/c0/z1/o$b;->c:I

    check-cast p1, Le/a/d/c0/z1/o$c;

    .line 9
    iget p1, p1, Le/a/d/c0/z1/o$c;->a:I

    if-ne v0, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1

    .line 10
    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public b(Le/a/d/c0/z1/p;)Z
    .locals 1

    const-string v0, "peerInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/d/c0/z1/p;->a:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/d/c0/z1/o$b;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/d/c0/z1/o$b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/d/c0/z1/o$b;

    iget-object v0, p0, Le/a/d/c0/z1/o$b;->a:Ljava/lang/String;

    iget-object v1, p1, Le/a/d/c0/z1/o$b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/d/c0/z1/o$b;->b:Ljava/lang/String;

    iget-object v1, p1, Le/a/d/c0/z1/o$b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/d/c0/z1/o$b;->c:I

    iget v1, p1, Le/a/d/c0/z1/o$b;->c:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/d/c0/z1/o$b;->d:Z

    iget-boolean p1, p1, Le/a/d/c0/z1/o$b;->d:Z

    if-ne v0, p1, :cond_0

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

    iget-object v0, p0, Le/a/d/c0/z1/o$b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/d/c0/z1/o$b;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/d/c0/z1/o$b;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/d/c0/z1/o$b;->d:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Resolved(voipId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/d/c0/z1/o$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d/c0/z1/o$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rtcUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/d/c0/z1/o$b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isStale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/d/c0/z1/o$b;->d:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
