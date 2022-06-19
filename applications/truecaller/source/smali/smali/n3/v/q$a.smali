.class public final Ln3/v/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/v/q;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic a:Ln3/v/g0;


# direct methods
.method public constructor <init>(Ln3/v/g0;)V
    .locals 0

    iput-object p1, p0, Ln3/v/q$a;->a:Ln3/v/g0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Ln3/v/p;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/v/p;

    iget v1, v0, Ln3/v/p;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/v/p;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/v/p;

    invoke-direct {v0, p0, p2}, Ln3/v/p;-><init>(Ln3/v/q$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/v/p;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/v/p;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ln3/v/p;->i:Ljava/lang/Object;

    check-cast p1, Ls1/w/d;

    iget-object p1, v0, Ln3/v/p;->g:Ljava/lang/Object;

    check-cast p1, Ln3/v/q$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Ln3/v/q$a;->a:Ln3/v/g0;

    iput-object p0, v0, Ln3/v/p;->g:Ljava/lang/Object;

    iput-object p1, v0, Ln3/v/p;->h:Ljava/lang/Object;

    iput-object v0, v0, Ln3/v/p;->i:Ljava/lang/Object;

    iput-object p1, v0, Ln3/v/p;->j:Ljava/lang/Object;

    iput v3, v0, Ln3/v/p;->e:I

    invoke-interface {p2, p1, v0}, Ln3/v/g0;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
