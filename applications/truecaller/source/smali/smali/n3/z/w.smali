.class public final Ln3/z/w;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ln3/z/k2<",
        "TKey;TValue;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln3/z/v$b;

.field public final synthetic c:Lq3/a/g0;


# direct methods
.method public constructor <init>(Ln3/z/v$b;Lq3/a/g0;)V
    .locals 0

    iput-object p1, p0, Ln3/z/w;->b:Ln3/z/v$b;

    iput-object p2, p0, Ln3/z/w;->c:Lq3/a/g0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ln3/z/n0;

    iget-object v1, p0, Ln3/z/w;->c:Lq3/a/g0;

    iget-object v2, p0, Ln3/z/w;->b:Ln3/z/v$b;

    invoke-virtual {v2}, Ln3/z/v$b;->a()Ln3/z/v;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ln3/z/n0;-><init>(Lq3/a/g0;Ln3/z/v;)V

    return-object v0
.end method
