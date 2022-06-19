.class public final Lq3/b/k/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/i/d;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lq3/b/i/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq3/b/i/c;)V
    .locals 1

    const-string v0, "serialName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/b/k/r;->a:Ljava/lang/String;

    iput-object p2, p0, Lq3/b/k/r;->b:Lq3/b/i/c;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lq3/b/k/r;->g()Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1
.end method

.method public c(I)Lq3/b/i/d;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq3/b/k/r;->g()Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq3/b/k/r;->g()Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/k/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/Void;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Primitive descriptor does not have elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKind()Lq3/b/i/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/k/r;->b:Lq3/b/i/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "PrimitiveDescriptor("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lq3/b/k/r;->a:Ljava/lang/String;

    const/16 v2, 0x29

    .line 3
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
