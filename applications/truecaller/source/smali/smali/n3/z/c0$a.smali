.class public final Ln3/z/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/c0;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic a:Ln3/z/c0;

.field public final synthetic b:Lq3/a/x2/g;

.field public final synthetic c:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Ln3/z/c0;Lq3/a/x2/g;Ls1/z/c/c0;)V
    .locals 0

    iput-object p1, p0, Ln3/z/c0$a;->a:Ln3/z/c0;

    iput-object p2, p0, Ln3/z/c0$a;->b:Lq3/a/x2/g;

    iput-object p3, p0, Ln3/z/c0$a;->c:Ls1/z/c/c0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Ln3/z/c0$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/z/c0$a$a;

    iget v1, v0, Ln3/z/c0$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/c0$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/c0$a$a;

    invoke-direct {v0, p0, p2}, Ln3/z/c0$a$a;-><init>(Ln3/z/c0$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/z/c0$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/c0$a$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

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
    iget-object p1, v0, Ln3/z/c0$a$a;->h:Ljava/lang/Object;

    check-cast p1, Ls1/z/c/c0;

    iget-object v2, v0, Ln3/z/c0$a$a;->g:Ljava/lang/Object;

    check-cast v2, Ln3/z/c0$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Ln3/z/c0$a;->c:Ls1/z/c/c0;

    iget-object v2, p0, Ln3/z/c0$a;->a:Ln3/z/c0;

    iget-object v2, v2, Ln3/z/c0;->j:Ls1/z/b/q;

    iget-object v5, p2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    iput-object p0, v0, Ln3/z/c0$a$a;->g:Ljava/lang/Object;

    iput-object p2, v0, Ln3/z/c0$a$a;->h:Ljava/lang/Object;

    iput v4, v0, Ln3/z/c0$a$a;->e:I

    invoke-interface {v2, v5, p1, v0}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    .line 5
    :goto_1
    iput-object p2, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 6
    iget-object p1, v2, Ln3/z/c0$a;->b:Lq3/a/x2/g;

    iget-object p2, v2, Ln3/z/c0$a;->c:Ls1/z/c/c0;

    iget-object p2, p2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Ln3/z/c0$a$a;->g:Ljava/lang/Object;

    iput-object v2, v0, Ln3/z/c0$a$a;->h:Ljava/lang/Object;

    iput v3, v0, Ln3/z/c0$a$a;->e:I

    invoke-interface {p1, p2, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 7
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
