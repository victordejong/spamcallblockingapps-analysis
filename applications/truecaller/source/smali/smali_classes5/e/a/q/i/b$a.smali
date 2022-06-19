.class public final Le/a/q/i/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q/i/b;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contactfeedback.utils.CommentFeedbackProcessorBridgeImpl$saveComments$1"
    f = "CommentFeedbackProcessorBridge.kt"
    l = {
        0x1b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/q/i/b;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/q/i/b;Ljava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q/i/b$a;->f:Le/a/q/i/b;

    iput-object p2, p0, Le/a/q/i/b$a;->g:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/q/i/b$a;

    iget-object v0, p0, Le/a/q/i/b$a;->f:Le/a/q/i/b;

    iget-object v1, p0, Le/a/q/i/b$a;->g:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Le/a/q/i/b$a;-><init>(Le/a/q/i/b;Ljava/util/List;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/q/i/b$a;

    iget-object v0, p0, Le/a/q/i/b$a;->f:Le/a/q/i/b;

    iget-object v1, p0, Le/a/q/i/b$a;->g:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Le/a/q/i/b$a;-><init>(Le/a/q/i/b;Ljava/util/List;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/q/i/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/q/i/b$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/q/i/b$a;->f:Le/a/q/i/b;

    .line 5
    iget-object p1, p1, Le/a/q/i/b;->b:Le/a/q/g/e;

    .line 6
    iget-object v1, p0, Le/a/q/i/b$a;->g:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/truecaller/contactfeedback/db/CommentFeedback;

    .line 7
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Lcom/truecaller/contactfeedback/db/CommentFeedback;

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/truecaller/contactfeedback/db/CommentFeedback;

    iput v2, p0, Le/a/q/i/b$a;->e:I

    .line 8
    check-cast p1, Le/a/q/g/f;

    invoke-virtual {p1, v1, p0}, Le/a/q/g/f;->h([Lcom/truecaller/contactfeedback/db/CommentFeedback;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/q/i/b$a;->f:Le/a/q/i/b;

    .line 10
    iget-object p1, p1, Le/a/q/i/b;->a:Landroid/content/Context;

    const-string v0, "context"

    .line 11
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p1

    .line 13
    sget-object v0, Ln3/m0/h;->a:Ln3/m0/h;

    .line 14
    new-instance v1, Ln3/m0/r$a;

    const-class v2, Lcom/truecaller/contactfeedback/workers/CommentFeedbackUploadWorker;

    invoke-direct {v1, v2}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 15
    new-instance v2, Ln3/m0/d$a;

    invoke-direct {v2}, Ln3/m0/d$a;-><init>()V

    sget-object v3, Ln3/m0/q;->b:Ln3/m0/q;

    .line 16
    iput-object v3, v2, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 17
    new-instance v3, Ln3/m0/d;

    invoke-direct {v3, v2}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 18
    iget-object v2, v1, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v3, v2, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 19
    invoke-virtual {v1}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v1

    const-string v2, "OneTimeWorkRequest.Build\u2026d())\n            .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ln3/m0/r;

    const-string v2, "CommentFeedbackUploadWorker"

    .line 20
    invoke-virtual {p1, v2, v0, v1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 21
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
