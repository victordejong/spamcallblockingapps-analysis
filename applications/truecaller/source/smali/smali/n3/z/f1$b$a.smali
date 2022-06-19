.class public final Ln3/z/f1$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/f1$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ln3/z/s0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/z/f1$b;

.field public final synthetic b:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Ln3/z/f1$b;Ls1/z/c/c0;)V
    .locals 0

    iput-object p1, p0, Ln3/z/f1$b$a;->a:Ln3/z/f1$b;

    iput-object p2, p0, Ln3/z/f1$b$a;->b:Ls1/z/c/c0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Ln3/z/f1$b$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/z/f1$b$a$a;

    iget v1, v0, Ln3/z/f1$b$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/f1$b$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/f1$b$a$a;

    invoke-direct {v0, p0, p2}, Ln3/z/f1$b$a$a;-><init>(Ln3/z/f1$b$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/z/f1$b$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/f1$b$a$a;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ln3/z/f1$b$a$a;->h:Ljava/lang/Object;

    check-cast p1, Ln3/z/s0;

    iget-object v0, v0, Ln3/z/f1$b$a$a;->g:Ljava/lang/Object;

    check-cast v0, Ln3/z/f1$b$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Ln3/z/f1$b$a$a;->h:Ljava/lang/Object;

    check-cast p1, Ln3/z/s0;

    iget-object v2, v0, Ln3/z/f1$b$a$a;->g:Ljava/lang/Object;

    check-cast v2, Ln3/z/f1$b$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Ln3/z/f1$b$a$a;->h:Ljava/lang/Object;

    check-cast p1, Ln3/z/s0;

    iget-object v2, v0, Ln3/z/f1$b$a$a;->g:Ljava/lang/Object;

    check-cast v2, Ln3/z/f1$b$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Ln3/z/s0;

    .line 5
    iget-object p2, p0, Ln3/z/f1$b$a;->b:Ls1/z/c/c0;

    iget-object p2, p2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p2, Ln3/z/s0;

    .line 6
    iget-object p2, p2, Ln3/z/s0;->a:Ln3/z/r0;

    iget-object v2, p1, Ln3/z/s0;->a:Ln3/z/r0;

    .line 7
    invoke-static {p2, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v5

    if-eqz p2, :cond_5

    .line 8
    iget-object p2, p0, Ln3/z/f1$b$a;->a:Ln3/z/f1$b;

    iget-object p2, p2, Ln3/z/f1$b;->g:Ln3/z/x0;

    sget-object v2, Ln3/z/t0;->a:Ln3/z/t0;

    .line 9
    iget-object v6, p1, Ln3/z/s0;->a:Ln3/z/r0;

    .line 10
    invoke-virtual {p2, v2, v5, v6}, Ln3/z/x0;->d(Ln3/z/t0;ZLn3/z/r0;)Z

    .line 11
    iget-object p2, p0, Ln3/z/f1$b$a;->a:Ln3/z/f1$b;

    iget-object p2, p2, Ln3/z/f1$b;->h:Ln3/z/f1$a;

    .line 12
    iget-object v6, p1, Ln3/z/s0;->a:Ln3/z/r0;

    .line 13
    iput-object p0, v0, Ln3/z/f1$b$a$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Ln3/z/f1$b$a$a;->h:Ljava/lang/Object;

    iput v5, v0, Ln3/z/f1$b$a$a;->e:I

    invoke-virtual {p2, v2, v6, v0}, Ln3/z/f1$a;->v(Ln3/z/t0;Ln3/z/r0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 14
    :goto_1
    iget-object p2, v2, Ln3/z/f1$b$a;->b:Ls1/z/c/c0;

    iget-object p2, p2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p2, Ln3/z/s0;

    .line 15
    iget-object p2, p2, Ln3/z/s0;->b:Ln3/z/r0;

    iget-object v6, p1, Ln3/z/s0;->b:Ln3/z/r0;

    .line 16
    invoke-static {p2, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v5

    if-eqz p2, :cond_6

    .line 17
    iget-object p2, v2, Ln3/z/f1$b$a;->a:Ln3/z/f1$b;

    iget-object p2, p2, Ln3/z/f1$b;->g:Ln3/z/x0;

    sget-object v6, Ln3/z/t0;->b:Ln3/z/t0;

    .line 18
    iget-object v7, p1, Ln3/z/s0;->b:Ln3/z/r0;

    .line 19
    invoke-virtual {p2, v6, v5, v7}, Ln3/z/x0;->d(Ln3/z/t0;ZLn3/z/r0;)Z

    .line 20
    iget-object p2, v2, Ln3/z/f1$b$a;->a:Ln3/z/f1$b;

    iget-object p2, p2, Ln3/z/f1$b;->h:Ln3/z/f1$a;

    .line 21
    iget-object v7, p1, Ln3/z/s0;->b:Ln3/z/r0;

    .line 22
    iput-object v2, v0, Ln3/z/f1$b$a$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Ln3/z/f1$b$a$a;->h:Ljava/lang/Object;

    iput v4, v0, Ln3/z/f1$b$a$a;->e:I

    invoke-virtual {p2, v6, v7, v0}, Ln3/z/f1$a;->v(Ln3/z/t0;Ln3/z/r0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    .line 23
    :cond_6
    :goto_2
    iget-object p2, v2, Ln3/z/f1$b$a;->b:Ls1/z/c/c0;

    iget-object p2, p2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p2, Ln3/z/s0;

    .line 24
    iget-object p2, p2, Ln3/z/s0;->c:Ln3/z/r0;

    iget-object v4, p1, Ln3/z/s0;->c:Ln3/z/r0;

    .line 25
    invoke-static {p2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v5

    if-eqz p2, :cond_8

    .line 26
    iget-object p2, v2, Ln3/z/f1$b$a;->a:Ln3/z/f1$b;

    iget-object p2, p2, Ln3/z/f1$b;->g:Ln3/z/x0;

    sget-object v4, Ln3/z/t0;->c:Ln3/z/t0;

    .line 27
    iget-object v6, p1, Ln3/z/s0;->c:Ln3/z/r0;

    .line 28
    invoke-virtual {p2, v4, v5, v6}, Ln3/z/x0;->d(Ln3/z/t0;ZLn3/z/r0;)Z

    .line 29
    iget-object p2, v2, Ln3/z/f1$b$a;->a:Ln3/z/f1$b;

    iget-object p2, p2, Ln3/z/f1$b;->h:Ln3/z/f1$a;

    .line 30
    iget-object v5, p1, Ln3/z/s0;->c:Ln3/z/r0;

    .line 31
    iput-object v2, v0, Ln3/z/f1$b$a$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Ln3/z/f1$b$a$a;->h:Ljava/lang/Object;

    iput v3, v0, Ln3/z/f1$b$a$a;->e:I

    invoke-virtual {p2, v4, v5, v0}, Ln3/z/f1$a;->v(Ln3/z/t0;Ln3/z/r0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, v2

    :goto_3
    move-object v2, v0

    .line 32
    :cond_8
    iget-object p2, v2, Ln3/z/f1$b$a;->b:Ls1/z/c/c0;

    iput-object p1, p2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 33
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
