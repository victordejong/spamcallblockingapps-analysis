.class public final Le/a/a/p0/g;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.categorizer.UnclassifiedMessagesSyncHelper$classify$1$1$resolvedLanguage$1"
    f = "UnclassifiedMessagesSyncHelper.kt"
    l = {
        0x70
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Landroid/database/Cursor;

.field public final synthetic i:Le/a/a/p0/k;

.field public final synthetic j:Ls1/z/c/c0;

.field public final synthetic k:Ls1/z/c/c0;

.field public final synthetic l:Ljava/util/Set;

.field public final synthetic m:Le/a/c/c/e/a;

.field public final synthetic n:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Landroid/database/Cursor;Ls1/w/d;Le/a/a/p0/k;Ls1/z/c/c0;Ls1/z/c/c0;Ljava/util/Set;Le/a/c/c/e/a;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Le/a/a/p0/g;->f:Ljava/lang/String;

    iput-object p2, p0, Le/a/a/p0/g;->g:Ljava/util/List;

    iput-object p3, p0, Le/a/a/p0/g;->h:Landroid/database/Cursor;

    iput-object p5, p0, Le/a/a/p0/g;->i:Le/a/a/p0/k;

    iput-object p6, p0, Le/a/a/p0/g;->j:Ls1/z/c/c0;

    iput-object p7, p0, Le/a/a/p0/g;->k:Ls1/z/c/c0;

    iput-object p8, p0, Le/a/a/p0/g;->l:Ljava/util/Set;

    iput-object p9, p0, Le/a/a/p0/g;->m:Le/a/c/c/e/a;

    iput-object p10, p0, Le/a/a/p0/g;->n:Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 11
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

    new-instance p1, Le/a/a/p0/g;

    iget-object v1, p0, Le/a/a/p0/g;->f:Ljava/lang/String;

    iget-object v2, p0, Le/a/a/p0/g;->g:Ljava/util/List;

    iget-object v3, p0, Le/a/a/p0/g;->h:Landroid/database/Cursor;

    iget-object v5, p0, Le/a/a/p0/g;->i:Le/a/a/p0/k;

    iget-object v6, p0, Le/a/a/p0/g;->j:Ls1/z/c/c0;

    iget-object v7, p0, Le/a/a/p0/g;->k:Ls1/z/c/c0;

    iget-object v8, p0, Le/a/a/p0/g;->l:Ljava/util/Set;

    iget-object v9, p0, Le/a/a/p0/g;->m:Le/a/c/c/e/a;

    iget-object v10, p0, Le/a/a/p0/g;->n:Ljava/util/ArrayList;

    move-object v0, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v10}, Le/a/a/p0/g;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/database/Cursor;Ls1/w/d;Le/a/a/p0/k;Ls1/z/c/c0;Ls1/z/c/c0;Ljava/util/Set;Le/a/c/c/e/a;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/p0/g;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/p0/g;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/p0/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/p0/g;->e:I

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
    iget-object p1, p0, Le/a/a/p0/g;->i:Le/a/a/p0/k;

    .line 5
    iget-object p1, p1, Le/a/a/p0/k;->g:Le/a/a/g1/b;

    .line 6
    iget-object v1, p0, Le/a/a/p0/g;->f:Ljava/lang/String;

    iput v2, p0, Le/a/a/p0/g;->e:I

    invoke-interface {p1, v1, p0}, Le/a/a/g1/b;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Le/a/a/g1/a;

    .line 8
    iget-object v0, p0, Le/a/a/p0/g;->g:Ljava/util/List;

    new-instance v1, Ls1/k;

    .line 9
    iget-object v2, p1, Le/a/a/g1/a;->a:Ljava/lang/String;

    .line 10
    iget v3, p1, Le/a/a/g1/a;->b:F

    .line 11
    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v3}, Ljava/lang/Float;-><init>(F)V

    .line 12
    invoke-direct {v1, v2, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Le/a/a/p0/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Le/a/a/p0/g;->h:Landroid/database/Cursor;

    const-string v1, "it"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    :cond_3
    iget-object v0, p0, Le/a/a/p0/g;->i:Le/a/a/p0/k;

    .line 15
    iget-object v1, v0, Le/a/a/p0/k;->i:Le/a/q2/a;

    .line 16
    iget-object v2, p0, Le/a/a/p0/g;->g:Ljava/util/List;

    .line 17
    iget-object v0, v0, Le/a/a/p0/k;->g:Le/a/a/g1/b;

    .line 18
    invoke-interface {v0}, Le/a/a/g1/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Le/a/c/p/a;->K1(Le/a/q2/a;Ljava/util/List;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Le/a/a/p0/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 20
    :cond_4
    iget-object p1, p1, Le/a/a/g1/a;->a:Ljava/lang/String;

    return-object p1
.end method
