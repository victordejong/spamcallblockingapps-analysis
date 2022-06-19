.class public final Ls1/a/a/a/v0/b/h1/l0$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/b/h1/l0;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/v0;Ls1/a/a/a/v0/b/d;Ls1/a/a/a/v0/b/h1/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/b/h1/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/b/h1/l0;

.field public final synthetic c:Ls1/a/a/a/v0/b/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/l0;Ls1/a/a/a/v0/b/d;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/l0$b;->b:Ls1/a/a/a/v0/b/h1/l0;

    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/l0$b;->c:Ls1/a/a/a/v0/b/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v8, Ls1/a/a/a/v0/b/h1/l0;

    .line 2
    iget-object v4, p0, Ls1/a/a/a/v0/b/h1/l0$b;->b:Ls1/a/a/a/v0/b/h1/l0;

    .line 3
    iget-object v1, v4, Ls1/a/a/a/v0/b/h1/l0;->E:Ls1/a/a/a/v0/l/m;

    .line 4
    iget-object v2, v4, Ls1/a/a/a/v0/b/h1/l0;->J:Ls1/a/a/a/v0/b/v0;

    .line 5
    iget-object v3, p0, Ls1/a/a/a/v0/b/h1/l0$b;->c:Ls1/a/a/a/v0/b/d;

    .line 6
    invoke-interface {v3}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v5

    .line 7
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/l0$b;->c:Ls1/a/a/a/v0/b/d;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/b;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v6

    const-string v0, "underlyingConstructorDescriptor.kind"

    invoke-static {v6, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/l0$b;->b:Ls1/a/a/a/v0/b/h1/l0;

    .line 9
    iget-object v0, v0, Ls1/a/a/a/v0/b/h1/l0;->J:Ls1/a/a/a/v0/b/v0;

    .line 10
    invoke-interface {v0}, Ls1/a/a/a/v0/b/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object v7

    const-string v0, "typeAliasDescriptor.source"

    invoke-static {v7, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v8

    .line 11
    invoke-direct/range {v0 .. v7}, Ls1/a/a/a/v0/b/h1/l0;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/v0;Ls1/a/a/a/v0/b/d;Ls1/a/a/a/v0/b/h1/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)V

    .line 12
    sget-object v0, Ls1/a/a/a/v0/b/h1/l0;->L:Ls1/a/a/a/v0/b/h1/l0$a;

    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/l0$b;->b:Ls1/a/a/a/v0/b/h1/l0;

    .line 13
    iget-object v1, v1, Ls1/a/a/a/v0/b/h1/l0;->J:Ls1/a/a/a/v0/b/v0;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {v1}, Ls1/a/a/a/v0/b/v0;->m()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {v1}, Ls1/a/a/a/v0/b/v0;->g0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/m/d1;->d(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/d1;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 17
    iget-object v3, p0, Ls1/a/a/a/v0/b/h1/l0$b;->c:Ls1/a/a/a/v0/b/d;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/a;->k0()Ls1/a/a/a/v0/b/n0;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, v0}, Ls1/a/a/a/v0/b/n0;->c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/n0;

    move-result-object v0

    move-object v2, v0

    .line 18
    :cond_1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/l0$b;->b:Ls1/a/a/a/v0/b/h1/l0;

    .line 19
    iget-object v0, v0, Ls1/a/a/a/v0/b/h1/l0;->J:Ls1/a/a/a/v0/b/v0;

    .line 20
    invoke-interface {v0}, Ls1/a/a/a/v0/b/i;->u()Ljava/util/List;

    move-result-object v3

    .line 21
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/l0$b;->b:Ls1/a/a/a/v0/b/h1/l0;

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/r;->i()Ljava/util/List;

    move-result-object v4

    .line 22
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/l0$b;->b:Ls1/a/a/a/v0/b/h1/l0;

    .line 23
    iget-object v5, v0, Ls1/a/a/a/v0/b/h1/r;->g:Ls1/a/a/a/v0/m/e0;

    .line 24
    invoke-static {v5}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 25
    sget-object v6, Ls1/a/a/a/v0/b/y;->a:Ls1/a/a/a/v0/b/y;

    .line 26
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/l0$b;->b:Ls1/a/a/a/v0/b/h1/l0;

    .line 27
    iget-object v0, v0, Ls1/a/a/a/v0/b/h1/l0;->J:Ls1/a/a/a/v0/b/v0;

    .line 28
    invoke-interface {v0}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v7

    move-object v0, v8

    .line 29
    invoke-virtual/range {v0 .. v7}, Ls1/a/a/a/v0/b/h1/r;->Q0(Ls1/a/a/a/v0/b/n0;Ls1/a/a/a/v0/b/n0;Ljava/util/List;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;)Ls1/a/a/a/v0/b/h1/r;

    goto :goto_1

    :cond_2
    move-object v8, v2

    :goto_1
    return-object v8
.end method
