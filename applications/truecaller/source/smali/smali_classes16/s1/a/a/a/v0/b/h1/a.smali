.class public Ls1/a/a/a/v0/b/h1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/m/l1/e;",
        "Ls1/a/a/a/v0/m/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/b/h1/b$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/a;->a:Ls1/a/a/a/v0/b/h1/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ls1/a/a/a/v0/m/l1/e;

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/a;->a:Ls1/a/a/a/v0/b/h1/b$a;

    iget-object v0, v0, Ls1/a/a/a/v0/b/h1/b$a;->a:Ls1/a/a/a/v0/b/h1/b;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/m/l1/e;->e(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/h;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Ls1/a/a/a/v0/b/h1/a;->a:Ls1/a/a/a/v0/b/h1/b$a;

    iget-object p1, p1, Ls1/a/a/a/v0/b/h1/b$a;->a:Ls1/a/a/a/v0/b/h1/b;

    iget-object p1, p1, Ls1/a/a/a/v0/b/h1/b;->b:Ls1/a/a/a/v0/l/i;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/l0;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Ls1/a/a/a/v0/b/v0;

    if-eqz v1, :cond_1

    .line 5
    move-object p1, v0

    check-cast p1, Ls1/a/a/a/v0/b/v0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/m/f1;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/a/a/a/v0/m/f0;->b(Ls1/a/a/a/v0/b/v0;Ljava/util/List;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    instance-of v1, v0, Ls1/a/a/a/v0/b/h1/v;

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v0}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    invoke-interface {v1, p1}, Ls1/a/a/a/v0/m/v0;->a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    .line 8
    check-cast v0, Ls1/a/a/a/v0/b/h1/v;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/b/h1/v;->b0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;

    move-result-object p1

    invoke-static {v1, p1, p0}, Ls1/a/a/a/v0/m/f1;->o(Ls1/a/a/a/v0/m/v0;Ls1/a/a/a/v0/j/y/i;Ls1/z/b/l;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v0}, Ls1/a/a/a/v0/b/h;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    :goto_0
    return-object p1
.end method
