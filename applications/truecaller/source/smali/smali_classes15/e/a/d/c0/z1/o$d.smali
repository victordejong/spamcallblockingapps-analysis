.class public final Le/a/d/c0/z1/o$d;
.super Le/a/d/c0/z1/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/c0/z1/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "trimmedVoipId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/d/c0/z1/o;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/d/c0/z1/o$d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Le/a/d/c0/z1/o;)Z
    .locals 3

    const-string v0, "handle"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/d/c0/z1/o$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/d/c0/z1/o$d;->a:Ljava/lang/String;

    check-cast p1, Le/a/d/c0/z1/o$d;

    iget-object p1, p1, Le/a/d/c0/z1/o$d;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Le/a/d/c0/z1/o$b;

    if-eqz v0, :cond_1

    check-cast p1, Le/a/d/c0/z1/o$b;

    .line 3
    iget-object p1, p1, Le/a/d/c0/z1/o$b;->a:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Le/a/d/c0/z1/o$d;->a:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public b(Le/a/d/c0/z1/p;)Z
    .locals 3

    const-string v0, "peerInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/d/c0/z1/p;->a:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/d/c0/z1/o$d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/d/c0/z1/o$d;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/d/c0/z1/o$d;

    iget-object v0, p0, Le/a/d/c0/z1/o$d;->a:Ljava/lang/String;

    iget-object p1, p1, Le/a/d/c0/z1/o$d;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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
    .locals 1

    iget-object v0, p0, Le/a/d/c0/z1/o$d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "TrimmedVoipId(trimmedVoipId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/d/c0/z1/o$d;->a:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
