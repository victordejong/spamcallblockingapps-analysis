.class public final Ln3/z/e1$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/e1;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lq3/a/x2/g<",
        "-",
        "Ln3/z/b2<",
        "TValue;>;>;",
        "Ln3/z/d1$a<",
        "TKey;TValue;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.PageFetcher$flow$1$invokeSuspend$$inlined$simpleMapLatest$1"
    f = "PageFetcher.kt"
    l = {
        0x69
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Ln3/z/e1;

.field public final synthetic i:Ln3/z/q2;


# direct methods
.method public constructor <init>(Ls1/w/d;Ln3/z/e1;Ln3/z/q2;)V
    .locals 0

    iput-object p2, p0, Ln3/z/e1$d;->h:Ln3/z/e1;

    iput-object p3, p0, Ln3/z/e1$d;->i:Ln3/z/q2;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lq3/a/x2/g;

    check-cast p3, Ls1/w/d;

    const-string v0, "$this$create"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/e1$d;

    iget-object v1, p0, Ln3/z/e1$d;->h:Ln3/z/e1;

    iget-object v2, p0, Ln3/z/e1$d;->i:Ln3/z/q2;

    invoke-direct {v0, p3, v1, v2}, Ln3/z/e1$d;-><init>(Ls1/w/d;Ln3/z/e1;Ln3/z/q2;)V

    iput-object p1, v0, Ln3/z/e1$d;->e:Ljava/lang/Object;

    iput-object p2, v0, Ln3/z/e1$d;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/e1$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/e1$d;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Ln3/z/e1$d;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    iget-object v1, p0, Ln3/z/e1$d;->f:Ljava/lang/Object;

    .line 4
    check-cast v1, Ln3/z/d1$a;

    .line 5
    iget-object v3, p0, Ln3/z/e1$d;->h:Ln3/z/e1;

    iget-object v3, v3, Ln3/z/e1;->g:Ln3/z/d1;

    .line 6
    iget-object v4, v1, Ln3/z/d1$a;->a:Ln3/z/g1;

    .line 7
    iget-object v5, p0, Ln3/z/e1$d;->i:Ln3/z/q2;

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 9
    iget-object v3, v4, Ln3/z/g1;->g:Lq3/a/x2/f;

    goto :goto_0

    .line 10
    :cond_2
    new-instance v3, Ln3/z/f1;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ln3/z/f1;-><init>(Ln3/z/g1;Ln3/z/q2;Ls1/w/d;)V

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->A1(Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object v3

    .line 11
    :goto_0
    new-instance v4, Ln3/z/b2;

    .line 12
    new-instance v5, Ln3/z/d1$b;

    iget-object v6, p0, Ln3/z/e1$d;->h:Ln3/z/e1;

    iget-object v6, v6, Ln3/z/e1;->g:Ln3/z/d1;

    .line 13
    iget-object v1, v1, Ln3/z/d1$a;->a:Ln3/z/g1;

    .line 14
    iget-object v7, v6, Ln3/z/d1;->b:Ln3/z/s;

    .line 15
    invoke-direct {v5, v6, v1, v7}, Ln3/z/d1$b;-><init>(Ln3/z/d1;Ln3/z/g1;Ln3/z/s;)V

    .line 16
    invoke-direct {v4, v3, v5}, Ln3/z/b2;-><init>(Lq3/a/x2/f;Ln3/z/h3;)V

    iput v2, p0, Ln3/z/e1$d;->g:I

    invoke-interface {p1, v4, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
