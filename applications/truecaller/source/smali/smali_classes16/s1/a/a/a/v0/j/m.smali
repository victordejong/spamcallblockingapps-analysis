.class public final Ls1/a/a/a/v0/j/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/b/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/j/m;->a:Ls1/a/a/a/v0/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/b;

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/b/q;->e(Ls1/a/a/a/v0/b/r;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/j/m;->a:Ls1/a/a/a/v0/b/e;

    invoke-static {p1, v0}, Ls1/a/a/a/v0/b/q;->f(Ls1/a/a/a/v0/b/o;Ls1/a/a/a/v0/b/k;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
