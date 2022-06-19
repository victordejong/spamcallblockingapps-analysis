.class public final Ls1/a/a/a/v0/b/h1/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/m/l1/e;",
        "Ls1/a/a/a/v0/m/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/b/h1/f;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/f;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/e;->b:Ls1/a/a/a/v0/b/h1/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/m/l1/e;

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/e;->b:Ls1/a/a/a/v0/b/h1/f;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/m/l1/e;->e(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/h;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ls1/a/a/a/v0/b/h;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
