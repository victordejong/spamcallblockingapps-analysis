.class public final Ln3/z/h$a$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/h$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ls1/u/w<",
        "+",
        "Ln3/z/c1<",
        "TT;>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/z/h$a$a;


# direct methods
.method public constructor <init>(Ln3/z/h$a$a;)V
    .locals 0

    iput-object p1, p0, Ln3/z/h$a$a$c;->a:Ln3/z/h$a$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Ln3/z/h$a$a$c$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/z/h$a$a$c$a;

    iget v1, v0, Ln3/z/h$a$a$c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/h$a$a$c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/h$a$a$c$a;

    invoke-direct {v0, p0, p2}, Ln3/z/h$a$a$c$a;-><init>(Ln3/z/h$a$a$c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/z/h$a$a$c$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/h$a$a$c$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Ln3/z/h$a$a$c$a;->h:Ljava/lang/Object;

    check-cast p1, Ls1/u/w;

    iget-object v2, v0, Ln3/z/h$a$a$c$a;->g:Ljava/lang/Object;

    check-cast v2, Ln3/z/h$a$a$c;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Ls1/u/w;

    .line 5
    iget-object p2, p0, Ln3/z/h$a$a$c;->a:Ln3/z/h$a$a;

    iget-object p2, p2, Ln3/z/h$a$a;->h:Ln3/z/e3;

    .line 6
    iget-object p2, p2, Ln3/z/e3;->a:Lq3/a/w2/j;

    invoke-static {p2, v4, v5, v4}, Ls1/a/a/a/v0/f/d;->f0(Lq3/a/w2/d0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 7
    iget-object p2, p0, Ln3/z/h$a$a$c;->a:Ln3/z/h$a$a;

    iget-object p2, p2, Ln3/z/h$a$a;->i:Lq3/a/p1;

    iput-object p0, v0, Ln3/z/h$a$a$c$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Ln3/z/h$a$a$c$a;->h:Ljava/lang/Object;

    iput v5, v0, Ln3/z/h$a$a$c$a;->e:I

    invoke-interface {p2, v0}, Lq3/a/p1;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 8
    :goto_1
    iget p2, p1, Ls1/u/w;->a:I

    .line 9
    iget-object v2, v2, Ln3/z/h$a$a$c;->a:Ln3/z/h$a$a;

    iget-object v5, v2, Ln3/z/h$a$a;->j:Ls1/z/c/a0;

    iget v5, v5, Ls1/z/c/a0;->a:I

    if-le p2, v5, :cond_5

    .line 10
    iget-object p2, v2, Ln3/z/h$a$a;->g:Ln3/z/y2;

    .line 11
    iget-object p1, p1, Ls1/u/w;->b:Ljava/lang/Object;

    .line 12
    iput-object v4, v0, Ln3/z/h$a$a$c$a;->g:Ljava/lang/Object;

    iput-object v4, v0, Ln3/z/h$a$a$c$a;->h:Ljava/lang/Object;

    iput v3, v0, Ln3/z/h$a$a$c$a;->e:I

    invoke-interface {p2, p1, v0}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 13
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
