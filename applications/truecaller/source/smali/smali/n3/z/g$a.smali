.class public final Ln3/z/g$a;
.super Ln3/z/g2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/g;-><init>(Ln3/b0/a/h$e;Ln3/b0/a/q;Lq3/a/g0;Lq3/a/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/z/g2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic l:Ln3/z/g;


# direct methods
.method public constructor <init>(Ln3/z/g;Ln3/z/x;Lq3/a/g0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/x;",
            "Lq3/a/g0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln3/z/g$a;->l:Ln3/z/g;

    invoke-direct {p0, p2, p3}, Ln3/z/g2;-><init>(Ln3/z/x;Lq3/a/g0;)V

    return-void
.end method


# virtual methods
.method public b(Ln3/z/z0;Ln3/z/z0;Ln3/z/q;ILs1/z/b/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/z0<",
            "TT;>;",
            "Ln3/z/z0<",
            "TT;>;",
            "Ln3/z/q;",
            "I",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p3, p6, Ln3/z/g$a$a;

    if-eqz p3, :cond_0

    move-object p3, p6

    check-cast p3, Ln3/z/g$a$a;

    iget v0, p3, Ln3/z/g$a$a;->e:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p3, Ln3/z/g$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance p3, Ln3/z/g$a$a;

    invoke-direct {p3, p0, p6}, Ln3/z/g$a$a;-><init>(Ln3/z/g$a;Ls1/w/d;)V

    :goto_0
    iget-object p6, p3, Ln3/z/g$a$a;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p3, Ln3/z/g$a$a;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget p4, p3, Ln3/z/g$a$a;->k:I

    iget-object p1, p3, Ln3/z/g$a$a;->j:Ljava/lang/Object;

    move-object p5, p1

    check-cast p5, Ls1/z/b/a;

    iget-object p1, p3, Ln3/z/g$a$a;->i:Ljava/lang/Object;

    check-cast p1, Ln3/z/z0;

    iget-object p2, p3, Ln3/z/g$a$a;->h:Ljava/lang/Object;

    check-cast p2, Ln3/z/z0;

    iget-object p3, p3, Ln3/z/g$a$a;->g:Ljava/lang/Object;

    check-cast p3, Ln3/z/g$a;

    invoke-static {p6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Ln3/z/o1;

    invoke-virtual {p1}, Ln3/z/o1;->a()I

    move-result p6

    const/4 v1, 0x0

    if-nez p6, :cond_3

    .line 5
    check-cast p5, Ln3/z/h2$a$a$a;

    invoke-virtual {p5}, Ln3/z/h2$a$a$a;->invoke()Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Ln3/z/g$a;->l:Ln3/z/g;

    .line 7
    iget-object p1, p1, Ln3/z/g;->a:Ln3/z/x;

    .line 8
    check-cast p2, Ln3/z/o1;

    invoke-virtual {p2}, Ln3/z/o1;->a()I

    move-result p2

    invoke-interface {p1, v1, p2}, Ln3/z/x;->onInserted(II)V

    goto :goto_2

    .line 9
    :cond_3
    check-cast p2, Ln3/z/o1;

    invoke-virtual {p2}, Ln3/z/o1;->a()I

    move-result p6

    if-nez p6, :cond_4

    .line 10
    check-cast p5, Ln3/z/h2$a$a$a;

    invoke-virtual {p5}, Ln3/z/h2$a$a$a;->invoke()Ljava/lang/Object;

    .line 11
    iget-object p2, p0, Ln3/z/g$a;->l:Ln3/z/g;

    .line 12
    iget-object p2, p2, Ln3/z/g;->a:Ln3/z/x;

    .line 13
    invoke-interface {p1}, Ln3/z/z0;->a()I

    move-result p1

    invoke-interface {p2, v1, p1}, Ln3/z/x;->onRemoved(II)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object p6, p0, Ln3/z/g$a;->l:Ln3/z/g;

    .line 15
    iget-object p6, p6, Ln3/z/g;->i:Lq3/a/g0;

    .line 16
    new-instance v1, Ln3/z/g$a$b;

    invoke-direct {v1, p0, p1, p2, v3}, Ln3/z/g$a$b;-><init>(Ln3/z/g$a;Ln3/z/z0;Ln3/z/z0;Ls1/w/d;)V

    iput-object p0, p3, Ln3/z/g$a$a;->g:Ljava/lang/Object;

    iput-object p1, p3, Ln3/z/g$a$a;->h:Ljava/lang/Object;

    iput-object p2, p3, Ln3/z/g$a$a;->i:Ljava/lang/Object;

    iput-object p5, p3, Ln3/z/g$a$a;->j:Ljava/lang/Object;

    iput p4, p3, Ln3/z/g$a$a;->k:I

    iput v2, p3, Ln3/z/g$a$a;->e:I

    invoke-static {p6, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v0, :cond_5

    return-object v0

    :cond_5
    move-object p3, p0

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    .line 17
    :goto_1
    check-cast p6, Ln3/z/y0;

    .line 18
    invoke-interface {p5}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    .line 19
    iget-object p3, p3, Ln3/z/g$a;->l:Ln3/z/g;

    .line 20
    iget-object p3, p3, Ln3/z/g;->g:Ln3/b0/a/q;

    .line 21
    invoke-static {p2, p3, p1, p6}, Landroid/support/v4/media/session/MediaSessionCompat;->V(Ln3/z/z0;Ln3/b0/a/q;Ln3/z/z0;Ln3/z/y0;)V

    .line 22
    invoke-static {p2, p6, p1, p4}, Landroid/support/v4/media/session/MediaSessionCompat;->G1(Ln3/z/z0;Ln3/z/y0;Ln3/z/z0;I)I

    move-result p1

    .line 23
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    :goto_2
    return-object v3
.end method
