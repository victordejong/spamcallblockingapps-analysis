.class public final Ls1/a/a/a/v0/k/b/e0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ls1/a/a/a/v0/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/c0;

.field public final synthetic c:Ls1/a/a/a/v0/e/q;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/c0;Ls1/a/a/a/v0/e/q;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/e0;->b:Ls1/a/a/a/v0/k/b/c0;

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/e0;->c:Ls1/a/a/a/v0/e/q;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Ls1/a/a/a/v0/b/e;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/e0;->b:Ls1/a/a/a/v0/k/b/c0;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 4
    invoke-static {v0, p1}, Ls1/a/a/a/v0/f/d;->k1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/a;

    move-result-object p1

    .line 5
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/e0;->c:Ls1/a/a/a/v0/e/q;

    new-instance v1, Ls1/a/a/a/v0/k/b/e0$b;

    invoke-direct {v1, p0}, Ls1/a/a/a/v0/k/b/e0$b;-><init>(Ls1/a/a/a/v0/k/b/e0;)V

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->d1(Ljava/lang/Object;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/k/b/e0$c;->b:Ls1/a/a/a/v0/k/b/e0$c;

    invoke-static {v0, v1}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    const-string v1, "$this$toMutableList"

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Ls1/e0/x;->q(Ls1/e0/k;Ljava/util/Collection;)Ljava/util/Collection;

    .line 8
    sget-object v0, Ls1/a/a/a/v0/k/b/e0$a;->j:Ls1/a/a/a/v0/k/b/e0$a;

    invoke-static {p1, v0}, Ls1/a/a/a/v0/f/d;->d1(Ljava/lang/Object;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    invoke-static {v0}, Ls1/e0/x;->c(Ls1/e0/k;)I

    move-result v0

    .line 9
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_0

    const/4 v2, 0x0

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/e0;->b:Ls1/a/a/a/v0/k/b/c0;

    .line 12
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 13
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 14
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->m:Ls1/a/a/a/v0/b/b0;

    .line 15
    invoke-virtual {v0, p1, v1}, Ls1/a/a/a/v0/b/b0;->a(Ls1/a/a/a/v0/f/a;Ljava/util/List;)Ls1/a/a/a/v0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/k/b/e0;->a(I)Ls1/a/a/a/v0/b/e;

    move-result-object p1

    return-object p1
.end method
