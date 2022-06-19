.class public final Ln3/z/a3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/z/a3$a;,
        Ln3/z/a3$b;
    }
.end annotation


# instance fields
.field public final a:Ln3/z/a3$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/z/a3$b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ln3/z/a3$b;-><init>(Ln3/z/a3;Z)V

    iput-object v0, p0, Ln3/z/a3;->a:Ln3/z/a3$b;

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    move p1, v0

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p2, Ln3/z/a3$b;

    invoke-direct {p2, p0, p1}, Ln3/z/a3$b;-><init>(Ln3/z/a3;Z)V

    iput-object p2, p0, Ln3/z/a3;->a:Ln3/z/a3$b;

    return-void
.end method


# virtual methods
.method public final a(ILs1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls1/z/b/l<",
            "-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Ln3/z/a3$c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ln3/z/a3$c;

    iget v1, v0, Ln3/z/a3$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/a3$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/a3$c;

    invoke-direct {v0, p0, p3}, Ln3/z/a3$c;-><init>(Ln3/z/a3;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Ln3/z/a3$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/a3$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ln3/z/a3$c;->g:Ljava/lang/Object;

    check-cast p1, Ln3/z/a3;

    :try_start_0
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ln3/z/a3$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    new-instance p3, Ln3/z/a3$d;

    const/4 v2, 0x0

    invoke-direct {p3, p0, p1, p2, v2}, Ln3/z/a3$d;-><init>(Ln3/z/a3;ILs1/z/b/l;Ls1/w/d;)V

    iput-object p0, v0, Ln3/z/a3$c;->g:Ljava/lang/Object;

    iput v3, v0, Ln3/z/a3$c;->e:I

    invoke-static {p3, v0}, Ls1/a/a/a/v0/f/d;->o0(Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ln3/z/a3$a; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v1, :cond_3

    return-object v1

    :catch_1
    move-exception p1

    move-object p2, p1

    move-object p1, p0

    .line 5
    :goto_1
    iget-object p3, p2, Ln3/z/a3$a;->a:Ln3/z/a3;

    if-ne p3, p1, :cond_4

    .line 6
    :cond_3
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 7
    :cond_4
    throw p2
.end method
