.class public final Le/a/a/c/a/p$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/a/p;->e(Ljava/lang/String;J)V
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
    c = "com.truecaller.messaging.conversation.smartcards.UpdateCategoriesManagerImpl$updateCategoryFeedback$1"
    f = "UpdateCategoriesManager.kt"
    l = {
        0x99
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/a/p;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:J


# direct methods
.method public constructor <init>(Le/a/a/c/a/p;Ljava/lang/String;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/a/p$d;->f:Le/a/a/c/a/p;

    iput-object p2, p0, Le/a/a/c/a/p$d;->g:Ljava/lang/String;

    iput-wide p3, p0, Le/a/a/c/a/p$d;->h:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/a/c/a/p$d;

    iget-object v1, p0, Le/a/a/c/a/p$d;->f:Le/a/a/c/a/p;

    iget-object v2, p0, Le/a/a/c/a/p$d;->g:Ljava/lang/String;

    iget-wide v3, p0, Le/a/a/c/a/p$d;->h:J

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/a/c/a/p$d;-><init>(Le/a/a/c/a/p;Ljava/lang/String;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/a/p$d;

    iget-object v1, p0, Le/a/a/c/a/p$d;->f:Le/a/a/c/a/p;

    iget-object v2, p0, Le/a/a/c/a/p$d;->g:Ljava/lang/String;

    iget-wide v3, p0, Le/a/a/c/a/p$d;->h:J

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/a/c/a/p$d;-><init>(Le/a/a/c/a/p;Ljava/lang/String;JLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/a/p$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/a/p$d;->e:I

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
    iget-object p1, p0, Le/a/a/c/a/p$d;->f:Le/a/a/c/a/p;

    .line 5
    iget-object p1, p1, Le/a/a/c/a/p;->i:Le/a/c/b0/d;

    .line 6
    iget-object v1, p0, Le/a/a/c/a/p$d;->g:Ljava/lang/String;

    iget-wide v3, p0, Le/a/a/c/a/p$d;->h:J

    iput v2, p0, Le/a/a/c/a/p$d;->e:I

    invoke-interface {p1, v1, v3, v4, p0}, Le/a/c/b0/d;->c(Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/a/c/a/p$d;->f:Le/a/a/c/a/p;

    iget-wide v0, p0, Le/a/a/c/a/p$d;->h:J

    invoke-virtual {p1, v0, v1}, Le/a/a/c/a/p;->c(J)V

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
