.class public final Ln3/z/j3/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ln3/z/j3/c<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln3/z/j3/g;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Ln3/z/j3/g;I)V
    .locals 0

    iput-object p1, p0, Ln3/z/j3/e;->b:Ln3/z/j3/g;

    iput p2, p0, Ln3/z/j3/e;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v7, Ln3/z/j3/c;

    .line 2
    iget-object v0, p0, Ln3/z/j3/e;->b:Ln3/z/j3/g;

    .line 3
    iget-object v1, v0, Ln3/z/j3/g;->c:Lq3/a/i0;

    .line 4
    iget v2, p0, Ln3/z/j3/e;->c:I

    .line 5
    iget-object v6, v0, Ln3/z/j3/g;->d:Lq3/a/x2/f;

    .line 6
    iget-boolean v3, v0, Ln3/z/j3/g;->e:Z

    .line 7
    iget-object v4, v0, Ln3/z/j3/g;->f:Ls1/z/b/p;

    .line 8
    iget-boolean v5, v0, Ln3/z/j3/g;->g:Z

    move-object v0, v7

    .line 9
    invoke-direct/range {v0 .. v6}, Ln3/z/j3/c;-><init>(Lq3/a/i0;IZLs1/z/b/p;ZLq3/a/x2/f;)V

    return-object v7
.end method
