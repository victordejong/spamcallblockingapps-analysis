.class public final Ls1/a/a/a/v0/d/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/b/o;->a:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ls1/a/a/a/v0/d/b/o;
    .locals 2

    const-string v0, "name"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/b/o;

    const/16 v1, 0x23

    invoke-static {p0, v1, p1}, Le/d/c/a/a;->h2(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/d/b/o;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    return-object v0
.end method

.method public static final b(Ls1/a/a/a/v0/e/a0/b/e;)Ls1/a/a/a/v0/d/b/o;
    .locals 1

    const-string v0, "signature"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Ls1/a/a/a/v0/e/a0/b/e$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ls1/a/a/a/v0/e/a0/b/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ls1/a/a/a/v0/e/a0/b/e;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ls1/a/a/a/v0/d/b/o;->c(Ljava/lang/String;Ljava/lang/String;)Ls1/a/a/a/v0/d/b/o;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Ls1/a/a/a/v0/e/a0/b/e$a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ls1/a/a/a/v0/e/a0/b/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ls1/a/a/a/v0/e/a0/b/e;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ls1/a/a/a/v0/d/b/o;->a(Ljava/lang/String;Ljava/lang/String;)Ls1/a/a/a/v0/d/b/o;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;)Ls1/a/a/a/v0/d/b/o;
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/b/o;

    invoke-static {p0, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/d/b/o;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ls1/a/a/a/v0/d/b/o;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/d/b/o;

    iget-object v0, p0, Ls1/a/a/a/v0/d/b/o;->a:Ljava/lang/String;

    iget-object p1, p1, Ls1/a/a/a/v0/d/b/o;->a:Ljava/lang/String;

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

    iget-object v0, p0, Ls1/a/a/a/v0/d/b/o;->a:Ljava/lang/String;

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

    const-string v0, "MemberSignature(signature="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/d/b/o;->a:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
