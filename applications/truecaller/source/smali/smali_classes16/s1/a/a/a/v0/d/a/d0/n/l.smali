.class public final Ls1/a/a/a/v0/d/a/d0/n/l;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/j/t/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/k;

.field public final synthetic c:Ls1/a/a/a/v0/d/a/f0/n;

.field public final synthetic d:Ls1/a/a/a/v0/b/h1/e0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/k;Ls1/a/a/a/v0/d/a/f0/n;Ls1/a/a/a/v0/b/h1/e0;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/l;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/l;->c:Ls1/a/a/a/v0/d/a/f0/n;

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/d0/n/l;->d:Ls1/a/a/a/v0/b/h1/e0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/l;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->h:Ls1/a/a/a/v0/d/a/b0/f;

    .line 5
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/l;->c:Ls1/a/a/a/v0/d/a/f0/n;

    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/l;->d:Ls1/a/a/a/v0/b/h1/e0;

    invoke-interface {v0, v1, v2}, Ls1/a/a/a/v0/d/a/b0/f;->a(Ls1/a/a/a/v0/d/a/f0/n;Ls1/a/a/a/v0/b/k0;)Ls1/a/a/a/v0/j/t/g;

    move-result-object v0

    return-object v0
.end method
