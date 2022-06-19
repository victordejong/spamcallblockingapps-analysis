.class public final Ls1/a/a/a/v0/k/b/v$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/v;->l(Ljava/util/List;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Ls1/a/a/a/v0/b/f1/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/a/a/a/v0/e/u;

.field public final synthetic d:Ls1/a/a/a/v0/k/b/v;

.field public final synthetic e:Ls1/a/a/a/v0/k/b/y;

.field public final synthetic f:Ls1/a/a/a/v0/h/p;

.field public final synthetic g:Ls1/a/a/a/v0/k/b/b;

.field public final synthetic h:Ls1/a/a/a/v0/b/a;


# direct methods
.method public constructor <init>(ILs1/a/a/a/v0/e/u;Ls1/a/a/a/v0/k/b/v;Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;Ls1/a/a/a/v0/b/a;)V
    .locals 0

    iput p1, p0, Ls1/a/a/a/v0/k/b/v$d;->b:I

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/v$d;->c:Ls1/a/a/a/v0/e/u;

    iput-object p3, p0, Ls1/a/a/a/v0/k/b/v$d;->d:Ls1/a/a/a/v0/k/b/v;

    iput-object p4, p0, Ls1/a/a/a/v0/k/b/v$d;->e:Ls1/a/a/a/v0/k/b/y;

    iput-object p5, p0, Ls1/a/a/a/v0/k/b/v$d;->f:Ls1/a/a/a/v0/h/p;

    iput-object p6, p0, Ls1/a/a/a/v0/k/b/v$d;->g:Ls1/a/a/a/v0/k/b/b;

    iput-object p7, p0, Ls1/a/a/a/v0/k/b/v$d;->h:Ls1/a/a/a/v0/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/v$d;->d:Ls1/a/a/a/v0/k/b/v;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/v;->b:Ls1/a/a/a/v0/k/b/l;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 4
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/j;->f:Ls1/a/a/a/v0/k/b/c;

    .line 5
    iget-object v2, p0, Ls1/a/a/a/v0/k/b/v$d;->e:Ls1/a/a/a/v0/k/b/y;

    iget-object v3, p0, Ls1/a/a/a/v0/k/b/v$d;->f:Ls1/a/a/a/v0/h/p;

    iget-object v4, p0, Ls1/a/a/a/v0/k/b/v$d;->g:Ls1/a/a/a/v0/k/b/b;

    iget v5, p0, Ls1/a/a/a/v0/k/b/v$d;->b:I

    iget-object v6, p0, Ls1/a/a/a/v0/k/b/v$d;->c:Ls1/a/a/a/v0/e/u;

    invoke-interface/range {v1 .. v6}, Ls1/a/a/a/v0/k/b/c;->a(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;ILs1/a/a/a/v0/e/u;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
