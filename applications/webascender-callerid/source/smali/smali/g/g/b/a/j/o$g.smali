.class final Lg/g/b/a/j/o$g;
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

    iput-object p1, p0, Lg/g/b/a/j/o$g;->f:Lg/g/b/a/j/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/a/i/o/y;",
            ")",
            "Li/c/b0/b/v<",
            "Lkotlin/l<",
            "Ljava/lang/Boolean;",
            "Lg/g/a/a/i/o/y;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/b/a/j/o$g;->f:Lg/g/b/a/j/o;

    invoke-static {v0}, Lg/g/b/a/j/o;->b(Lg/g/b/a/j/o;)Lg/g/a/a/g/h/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lg/g/a/a/g/h/c;->b(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lg/g/b/a/j/o$g$a;

    invoke-direct {v1, p1}, Lg/g/b/a/j/o$g$a;-><init>(Lg/g/a/a/i/o/y;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lg/g/b/a/j/o$g$b;

    invoke-direct {v1, p1}, Lg/g/b/a/j/o$g$b;-><init>(Lg/g/a/a/i/o/y;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->onErrorReturn(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/a/a/i/o/y;

    invoke-virtual {p0, p1}, Lg/g/b/a/j/o$g;->a(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
