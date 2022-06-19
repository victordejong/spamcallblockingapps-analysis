.class final Lg/g/b/a/j/o$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/j/o;->a(Ljava/lang/String;Ljava/lang/String;ILg/g/b/a/j/m;Lg/g/b/c/n;Lg/g/a/a/i/o/u;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;",
        "Li/c/b0/b/a0<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/j/o;


# direct methods
.method constructor <init>(Lg/g/b/a/j/o;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/j/o$h;->f:Lg/g/b/a/j/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/l;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/l<",
            "Ljava/lang/Boolean;",
            "+",
            "Lg/g/a/a/i/o/y;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lkotlin/l<",
            "Ljava/lang/Boolean;",
            "Lg/g/a/a/i/o/y;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/g/b/a/j/o$h;->f:Lg/g/b/a/j/o;

    invoke-static {v0}, Lg/g/b/a/j/o;->e(Lg/g/b/a/j/o;)Lh/a;

    move-result-object v0

    invoke-interface {v0}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/b/d/g/a;

    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "it.second"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lg/g/a/a/i/o/y;

    invoke-virtual {v0, v1}, Lg/g/b/d/g/a;->d(Lg/g/a/a/i/o/y;)Li/c/b0/b/e;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Li/c/b0/b/e;->z()Li/c/b0/b/e;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object v0

    .line 5
    :goto_0
    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/b/e;->f(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/l;

    invoke-virtual {p0, p1}, Lg/g/b/a/j/o$h;->a(Lkotlin/l;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
