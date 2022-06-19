.class public final Le/a/g/j/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/j/h;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/l0/g;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/w/f;


# direct methods
.method public constructor <init>(Lo3/a;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/l0/g;",
            ">;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callLogManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/j/i;->a:Lo3/a;

    iput-object p2, p0, Le/a/g/j/i;->b:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/g/j/i$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/g/j/i$a;

    iget v1, v0, Le/a/g/j/i$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/g/j/i$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/g/j/i$a;

    invoke-direct {v0, p0, p2}, Le/a/g/j/i$a;-><init>(Le/a/g/j/i;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/g/j/i$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/g/j/i$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

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

    iget-object p2, p0, Le/a/g/j/i;->b:Ls1/w/f;

    new-instance v2, Le/a/g/j/i$b;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Le/a/g/j/i$b;-><init>(Le/a/g/j/i;Ljava/lang/String;Ls1/w/d;)V

    iput v3, v0, Le/a/g/j/i$a;->e:I

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p1, "withContext(ioContext) {\u2026(number).get() ?: 0\n    }"

    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
