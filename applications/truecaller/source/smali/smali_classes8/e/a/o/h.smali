.class public final Le/a/o/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/f;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/w/f;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lcom/truecaller/calling/initiate_call/InitiateCallHelper;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/k3/j/b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ls1/w/f;Lo3/a;Lo3/a;Landroid/content/Context;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Lo3/a<",
            "Lcom/truecaller/calling/initiate_call/InitiateCallHelper;",
            ">;",
            "Lo3/a<",
            "Le/a/k3/j/b;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initiateCallHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/h;->c:Ls1/w/f;

    iput-object p2, p0, Le/a/o/h;->d:Lo3/a;

    iput-object p3, p0, Le/a/o/h;->e:Lo3/a;

    iput-object p4, p0, Le/a/o/h;->f:Landroid/content/Context;

    .line 2
    new-instance p1, Le/a/o/h$b;

    invoke-direct {p1, p0}, Le/a/o/h$b;-><init>(Le/a/o/h;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/o/h;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/o/h$a;

    invoke-direct {p1, p0}, Le/a/o/h$a;-><init>(Le/a/o/h;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/o/h;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V
    .locals 1

    const-string v0, "callOptions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o/h;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    invoke-interface {v0, p1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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

    instance-of v0, p2, Le/a/o/h$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/o/h$c;

    iget v1, v0, Le/a/o/h$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/o/h$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/o/h$c;

    invoke-direct {v0, p0, p2}, Le/a/o/h$c;-><init>(Le/a/o/h;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/o/h$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/o/h$c;->e:I

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

    iget-object p2, p0, Le/a/o/h;->c:Ls1/w/f;

    new-instance v2, Le/a/o/h$d;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Le/a/o/h$d;-><init>(Le/a/o/h;Ljava/lang/String;Ls1/w/d;)V

    iput v3, v0, Le/a/o/h$c;->e:I

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p1, "withContext(ioContext) {\u2026dNumber).get() ?: 0\n    }"

    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
