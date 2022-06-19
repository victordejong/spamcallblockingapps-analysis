.class public final Le/a/a/o/m$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/o/m;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.messaging.storagemanager.StorageManagerPresenter$loadStorageUsageData$1$1"
    f = "StorageManagerPresenter.kt"
    l = {
        0x29,
        0x2a,
        0x2d,
        0x2e,
        0x2f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/a/o/m;

.field public final synthetic h:Ls1/z/c/b0;

.field public final synthetic i:Ls1/z/c/b0;

.field public final synthetic j:Ls1/z/c/b0;

.field public final synthetic k:Ls1/z/c/b0;

.field public final synthetic l:Ls1/z/c/b0;

.field public final synthetic m:Ls1/z/c/b0;


# direct methods
.method public constructor <init>(Le/a/a/o/m;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/o/m$a;->g:Le/a/a/o/m;

    iput-object p2, p0, Le/a/a/o/m$a;->h:Ls1/z/c/b0;

    iput-object p3, p0, Le/a/a/o/m$a;->i:Ls1/z/c/b0;

    iput-object p4, p0, Le/a/a/o/m$a;->j:Ls1/z/c/b0;

    iput-object p5, p0, Le/a/a/o/m$a;->k:Ls1/z/c/b0;

    iput-object p6, p0, Le/a/a/o/m$a;->l:Ls1/z/c/b0;

    iput-object p7, p0, Le/a/a/o/m$a;->m:Ls1/z/c/b0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 9
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

    new-instance p1, Le/a/a/o/m$a;

    iget-object v1, p0, Le/a/a/o/m$a;->g:Le/a/a/o/m;

    iget-object v2, p0, Le/a/a/o/m$a;->h:Ls1/z/c/b0;

    iget-object v3, p0, Le/a/a/o/m$a;->i:Ls1/z/c/b0;

    iget-object v4, p0, Le/a/a/o/m$a;->j:Ls1/z/c/b0;

    iget-object v5, p0, Le/a/a/o/m$a;->k:Ls1/z/c/b0;

    iget-object v6, p0, Le/a/a/o/m$a;->l:Ls1/z/c/b0;

    iget-object v7, p0, Le/a/a/o/m$a;->m:Ls1/z/c/b0;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Le/a/a/o/m$a;-><init>(Le/a/a/o/m;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/o/m$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/o/m$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/o/m$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/o/m$a;->f:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/a/o/m$a;->e:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/b0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/a/o/m$a;->e:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/b0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Le/a/a/o/m$a;->e:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/b0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Le/a/a/o/m$a;->e:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/b0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Le/a/a/o/m$a;->h:Ls1/z/c/b0;

    iget-object p1, p0, Le/a/a/o/m$a;->g:Le/a/a/o/m;

    iget-object p1, p1, Le/a/a/o/m;->m:Le/a/a/o/o;

    .line 5
    iget-object p1, p1, Le/a/a/o/o;->e:Le/a/a/o/f;

    .line 6
    iput-object v1, p0, Le/a/a/o/m$a;->e:Ljava/lang/Object;

    iput v6, p0, Le/a/a/o/m$a;->f:I

    invoke-interface {p1, p0}, Le/a/a/o/f;->f(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    iput-wide v6, v1, Ls1/z/c/b0;->a:J

    .line 7
    iget-object p1, p0, Le/a/a/o/m$a;->g:Le/a/a/o/m;

    iget-object p1, p1, Le/a/a/o/m;->m:Le/a/a/o/o;

    .line 8
    iget-object p1, p1, Le/a/a/o/o;->e:Le/a/a/o/f;

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Le/a/a/o/m$a;->e:Ljava/lang/Object;

    iput v5, p0, Le/a/a/o/m$a;->f:I

    invoke-interface {p1, p0}, Le/a/a/o/f;->j(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 10
    :cond_7
    :goto_1
    check-cast p1, Ls1/k;

    .line 11
    iget-object v1, p0, Le/a/a/o/m$a;->i:Ls1/z/c/b0;

    .line 12
    iget-object v5, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 13
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    iput-wide v5, v1, Ls1/z/c/b0;->a:J

    .line 14
    iget-object v1, p0, Le/a/a/o/m$a;->j:Ls1/z/c/b0;

    .line 15
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 16
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    iput-wide v5, v1, Ls1/z/c/b0;->a:J

    .line 17
    iget-object v1, p0, Le/a/a/o/m$a;->k:Ls1/z/c/b0;

    iget-object p1, p0, Le/a/a/o/m$a;->g:Le/a/a/o/m;

    iget-object p1, p1, Le/a/a/o/m;->m:Le/a/a/o/o;

    .line 18
    iget-object p1, p1, Le/a/a/o/o;->e:Le/a/a/o/f;

    .line 19
    iput-object v1, p0, Le/a/a/o/m$a;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/a/o/m$a;->f:I

    invoke-interface {p1, p0}, Le/a/a/o/f;->g(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Ls1/z/c/b0;->a:J

    .line 20
    iget-object v1, p0, Le/a/a/o/m$a;->l:Ls1/z/c/b0;

    iget-object p1, p0, Le/a/a/o/m$a;->g:Le/a/a/o/m;

    iget-object p1, p1, Le/a/a/o/m;->m:Le/a/a/o/o;

    .line 21
    iget-object p1, p1, Le/a/a/o/o;->e:Le/a/a/o/f;

    .line 22
    iput-object v1, p0, Le/a/a/o/m$a;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/a/o/m$a;->f:I

    invoke-interface {p1, p0}, Le/a/a/o/f;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iput-wide v3, v1, Ls1/z/c/b0;->a:J

    .line 23
    iget-object p1, p0, Le/a/a/o/m$a;->m:Ls1/z/c/b0;

    iget-object v1, p0, Le/a/a/o/m$a;->g:Le/a/a/o/m;

    iget-object v1, v1, Le/a/a/o/m;->m:Le/a/a/o/o;

    .line 24
    iget-object v1, v1, Le/a/a/o/o;->e:Le/a/a/o/f;

    .line 25
    iput-object p1, p0, Le/a/a/o/m$a;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/a/o/m$a;->f:I

    invoke-interface {v1, p0}, Le/a/a/o/f;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_a

    return-object v0

    :cond_a
    move-object v0, p1

    move-object p1, v1

    :goto_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Ls1/z/c/b0;->a:J

    .line 26
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
