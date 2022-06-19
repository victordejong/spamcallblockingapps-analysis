.class public final Ln3/z/j3/i$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/j3/i$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/z/j3/i$a;


# direct methods
.method public constructor <init>(Ln3/z/j3/i$a;)V
    .locals 0

    iput-object p1, p0, Ln3/z/j3/i$a$b;->a:Ln3/z/j3/i$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Ln3/z/j3/i$a$b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/z/j3/i$a$b$a;

    iget v1, v0, Ln3/z/j3/i$a$b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/j3/i$a$b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/j3/i$a$b$a;

    invoke-direct {v0, p0, p2}, Ln3/z/j3/i$a$b$a;-><init>(Ln3/z/j3/i$a$b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/z/j3/i$a$b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/j3/i$a$b$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

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
    iget-object p1, v0, Ln3/z/j3/i$a$b$a;->g:Ljava/lang/Object;

    check-cast p1, Lq3/a/w;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-static {v3, v5}, Ls1/a/a/a/v0/f/d;->g(Lq3/a/p1;I)Lq3/a/w;

    move-result-object p2

    .line 5
    iget-object v2, p0, Ln3/z/j3/i$a$b;->a:Ln3/z/j3/i$a;

    iget-object v2, v2, Ln3/z/j3/i$a;->f:Ln3/z/j3/i;

    .line 6
    iget-object v2, v2, Ln3/z/j3/i;->d:Ls1/z/b/p;

    .line 7
    new-instance v6, Ln3/z/j3/c$c$b$c;

    invoke-direct {v6, p1, p2}, Ln3/z/j3/c$c$b$c;-><init>(Ljava/lang/Object;Lq3/a/w;)V

    iput-object p2, v0, Ln3/z/j3/i$a$b$a;->g:Ljava/lang/Object;

    iput v5, v0, Ln3/z/j3/i$a$b$a;->e:I

    invoke-interface {v2, v6, v0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p2

    .line 8
    :goto_1
    iput-object v3, v0, Ln3/z/j3/i$a$b$a;->g:Ljava/lang/Object;

    iput v4, v0, Ln3/z/j3/i$a$b$a;->e:I

    invoke-interface {p1, v0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 9
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
