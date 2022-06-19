.class public final Le/a/c/c/f/f$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/f/f$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.insights.database.usecases.DuplicateLinkUseCases$handleDuplicateIds$1$1$1"
    f = "DuplicateLinkUseCases.kt"
    l = {
        0x17
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Le/a/c/c/f/f$a;

.field public final synthetic h:Lq3/a/i0;


# direct methods
.method public constructor <init>(Ljava/util/List;Ls1/w/d;Le/a/c/c/f/f$a;Lq3/a/i0;)V
    .locals 0

    iput-object p1, p0, Le/a/c/c/f/f$a$a;->f:Ljava/util/List;

    iput-object p3, p0, Le/a/c/c/f/f$a$a;->g:Le/a/c/c/f/f$a;

    iput-object p4, p0, Le/a/c/c/f/f$a$a;->h:Lq3/a/i0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/c/c/f/f$a$a;

    iget-object v0, p0, Le/a/c/c/f/f$a$a;->f:Ljava/util/List;

    iget-object v1, p0, Le/a/c/c/f/f$a$a;->g:Le/a/c/c/f/f$a;

    iget-object v2, p0, Le/a/c/c/f/f$a$a;->h:Lq3/a/i0;

    invoke-direct {p1, v0, p2, v1, v2}, Le/a/c/c/f/f$a$a;-><init>(Ljava/util/List;Ls1/w/d;Le/a/c/c/f/f$a;Lq3/a/i0;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/c/f/f$a$a;

    iget-object v0, p0, Le/a/c/c/f/f$a$a;->f:Ljava/util/List;

    iget-object v1, p0, Le/a/c/c/f/f$a$a;->g:Le/a/c/c/f/f$a;

    iget-object v2, p0, Le/a/c/c/f/f$a$a;->h:Lq3/a/i0;

    invoke-direct {p1, v0, p2, v1, v2}, Le/a/c/c/f/f$a$a;-><init>(Ljava/util/List;Ls1/w/d;Le/a/c/c/f/f$a;Lq3/a/i0;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/c/f/f$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/c/f/f$a$a;->e:I

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
    iget-object p1, p0, Le/a/c/c/f/f$a$a;->g:Le/a/c/c/f/f$a;

    iget-object p1, p1, Le/a/c/c/f/f$a;->g:Le/a/c/c/f/f;

    .line 5
    iget-object p1, p1, Le/a/c/c/f/f;->e:Le/a/c/c/f/g;

    .line 6
    iget-object v1, p0, Le/a/c/c/f/f$a$a;->f:Ljava/util/List;

    iput v2, p0, Le/a/c/c/f/f$a$a;->e:I

    invoke-interface {p1, v1, p0}, Le/a/c/c/f/g;->f(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
