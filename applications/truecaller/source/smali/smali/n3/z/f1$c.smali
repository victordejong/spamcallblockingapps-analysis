.class public final Ln3/z/f1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/f1;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ln3/z/c1<",
        "TValue;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/z/f1;

.field public final synthetic b:Ln3/z/y2;

.field public final synthetic c:Ln3/z/x0;


# direct methods
.method public constructor <init>(Ln3/z/f1;Ln3/z/y2;Ln3/z/x0;)V
    .locals 0

    iput-object p1, p0, Ln3/z/f1$c;->a:Ln3/z/f1;

    iput-object p2, p0, Ln3/z/f1$c;->b:Ln3/z/y2;

    iput-object p3, p0, Ln3/z/f1$c;->c:Ln3/z/x0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Ln3/z/f1$c$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/z/f1$c$a;

    iget v1, v0, Ln3/z/f1$c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/f1$c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/f1$c$a;

    invoke-direct {v0, p0, p2}, Ln3/z/f1$c$a;-><init>(Ln3/z/f1$c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/z/f1$c$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/f1$c$a;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :goto_1
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Ln3/z/c1;

    .line 5
    instance-of p2, p1, Ln3/z/c1$b;

    if-eqz p2, :cond_4

    .line 6
    iget-object p2, p0, Ln3/z/f1$c;->c:Ln3/z/x0;

    .line 7
    check-cast p1, Ln3/z/c1$b;

    .line 8
    iget-object v2, p1, Ln3/z/c1$b;->e:Ln3/z/q;

    .line 9
    iget-object v2, v2, Ln3/z/q;->d:Ln3/z/s0;

    .line 10
    iget-object v3, p0, Ln3/z/f1$c;->a:Ln3/z/f1;

    iget-object v3, v3, Ln3/z/f1;->h:Ln3/z/q2;

    invoke-interface {v3}, Ln3/z/q2;->getState()Lq3/a/x2/i1;

    move-result-object v3

    invoke-interface {v3}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/z/s0;

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sourceLoadStates"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object v2, p2, Ln3/z/x0;->d:Ln3/z/s0;

    .line 13
    iput-object v3, p2, Ln3/z/x0;->e:Ln3/z/s0;

    .line 14
    invoke-virtual {p2}, Ln3/z/x0;->f()V

    .line 15
    iget-object p2, p0, Ln3/z/f1$c;->b:Ln3/z/y2;

    iget-object v2, p0, Ln3/z/f1$c;->c:Ln3/z/x0;

    invoke-virtual {v2}, Ln3/z/x0;->e()Ln3/z/q;

    move-result-object v11

    .line 16
    iget-object v7, p1, Ln3/z/c1$b;->a:Ln3/z/t0;

    iget-object v8, p1, Ln3/z/c1$b;->b:Ljava/util/List;

    iget v9, p1, Ln3/z/c1$b;->c:I

    iget v10, p1, Ln3/z/c1$b;->d:I

    .line 17
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "loadType"

    invoke-static {v7, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pages"

    invoke-static {v8, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "combinedLoadStates"

    invoke-static {v11, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/c1$b;

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Ln3/z/c1$b;-><init>(Ln3/z/t0;Ljava/util/List;IILn3/z/q;)V

    .line 18
    iput v5, v0, Ln3/z/f1$c$a;->e:I

    invoke-interface {p2, p1, v0}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 19
    :cond_4
    instance-of p2, p1, Ln3/z/c1$a;

    if-eqz p2, :cond_5

    .line 20
    iget-object p2, p0, Ln3/z/f1$c;->c:Ln3/z/x0;

    .line 21
    move-object v2, p1

    check-cast v2, Ln3/z/c1$a;

    .line 22
    iget-object v2, v2, Ln3/z/c1$a;->a:Ln3/z/t0;

    const/4 v3, 0x0

    .line 23
    sget-object v5, Ln3/z/r0$c;->c:Ln3/z/r0$c;

    .line 24
    invoke-virtual {p2, v2, v3, v5}, Ln3/z/x0;->d(Ln3/z/t0;ZLn3/z/r0;)Z

    .line 25
    iget-object p2, p0, Ln3/z/f1$c;->b:Ln3/z/y2;

    iput v4, v0, Ln3/z/f1$c$a;->e:I

    invoke-interface {p2, p1, v0}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 26
    :cond_5
    instance-of p2, p1, Ln3/z/c1$c;

    if-eqz p2, :cond_6

    .line 27
    iget-object p2, p0, Ln3/z/f1$c;->c:Ln3/z/x0;

    .line 28
    move-object v2, p1

    check-cast v2, Ln3/z/c1$c;

    .line 29
    iget-object v4, v2, Ln3/z/c1$c;->a:Ln3/z/t0;

    .line 30
    iget-boolean v5, v2, Ln3/z/c1$c;->b:Z

    .line 31
    iget-object v2, v2, Ln3/z/c1$c;->c:Ln3/z/r0;

    .line 32
    invoke-virtual {p2, v4, v5, v2}, Ln3/z/x0;->d(Ln3/z/t0;ZLn3/z/r0;)Z

    .line 33
    iget-object p2, p0, Ln3/z/f1$c;->b:Ln3/z/y2;

    iput v3, v0, Ln3/z/f1$c$a;->e:I

    invoke-interface {p2, p1, v0}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 34
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
