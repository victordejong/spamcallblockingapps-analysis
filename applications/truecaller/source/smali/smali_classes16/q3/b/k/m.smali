.class public final Lq3/b/k/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq3/b/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lq3/b/i/d;

.field public final b:Lq3/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/b/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b/b<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/b/k/m;->b:Lq3/b/b;

    .line 2
    new-instance v0, Lq3/b/k/s;

    invoke-interface {p1}, Lq3/b/b;->a()Lq3/b/i/d;

    move-result-object p1

    invoke-direct {v0, p1}, Lq3/b/k/s;-><init>(Lq3/b/i/d;)V

    iput-object v0, p0, Lq3/b/k/m;->a:Lq3/b/i/d;

    return-void
.end method


# virtual methods
.method public a()Lq3/b/i/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/k/m;->a:Lq3/b/i/d;

    return-object v0
.end method

.method public b(Lq3/b/j/e;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b/j/e;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p1}, Lq3/b/j/e;->p()V

    .line 2
    iget-object v0, p0, Lq3/b/k/m;->b:Lq3/b/b;

    invoke-interface {p1, v0, p2}, Lq3/b/j/e;->d(Lq3/b/g;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lq3/b/j/e;->o()V

    :goto_0
    return-void
.end method

.method public d(Lq3/b/j/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b/j/d;",
            ")TT;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lq3/b/j/d;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq3/b/k/m;->b:Lq3/b/b;

    invoke-interface {p1, v0}, Lq3/b/j/d;->w(Lq3/b/a;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lq3/b/j/d;->f()Ljava/lang/Void;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lq3/b/k/m;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lq3/b/k/m;

    .line 3
    iget-object v2, p0, Lq3/b/k/m;->b:Lq3/b/b;

    iget-object p1, p1, Lq3/b/k/m;->b:Lq3/b/b;

    invoke-static {v2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/k/m;->b:Lq3/b/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
