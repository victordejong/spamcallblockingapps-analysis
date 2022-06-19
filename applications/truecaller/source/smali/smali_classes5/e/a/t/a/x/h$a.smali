.class public final Le/a/t/a/x/h$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t/a/x/h;->Ij(Ljava/lang/CharSequence;)V
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
    c = "com.truecaller.android.truemoji.search.EmojiSearchPresenter$onSearchTextChanged$1"
    f = "EmojiSearchPresenter.kt"
    l = {
        0x34
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/t/a/x/h;

.field public final synthetic g:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Le/a/t/a/x/h;Ljava/lang/CharSequence;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/x/h$a;->f:Le/a/t/a/x/h;

    iput-object p2, p0, Le/a/t/a/x/h$a;->g:Ljava/lang/CharSequence;

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

    new-instance p1, Le/a/t/a/x/h$a;

    iget-object v0, p0, Le/a/t/a/x/h$a;->f:Le/a/t/a/x/h;

    iget-object v1, p0, Le/a/t/a/x/h$a;->g:Ljava/lang/CharSequence;

    invoke-direct {p1, v0, v1, p2}, Le/a/t/a/x/h$a;-><init>(Le/a/t/a/x/h;Ljava/lang/CharSequence;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/t/a/x/h$a;

    iget-object v0, p0, Le/a/t/a/x/h$a;->f:Le/a/t/a/x/h;

    iget-object v1, p0, Le/a/t/a/x/h$a;->g:Ljava/lang/CharSequence;

    invoke-direct {p1, v0, v1, p2}, Le/a/t/a/x/h$a;-><init>(Le/a/t/a/x/h;Ljava/lang/CharSequence;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/t/a/x/h$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/t/a/x/h$a;->e:I

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
    iget-object p1, p0, Le/a/t/a/x/h$a;->f:Le/a/t/a/x/h;

    .line 5
    iget-object p1, p1, Le/a/t/a/x/h;->g:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t/a/e;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Le/a/t/a/x/h$a;->g:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x14

    iput v2, p0, Le/a/t/a/x/h$a;->e:I

    invoke-interface {p1, v1, v3, p0}, Le/a/t/a/e;->b(Ljava/lang/String;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    const-string v3, "value"

    .line 12
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    const/4 v5, 0x0

    if-eqz v3, :cond_5

    goto :goto_4

    .line 14
    :cond_5
    sget-object v3, Le/a/t/a/u/i;->a:Ljava/util/concurrent/FutureTask;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/t/a/u/f;

    if-eqz v3, :cond_8

    .line 15
    iget-object v3, v3, Le/a/t/a/u/f;->a:Le/a/t/a/u/c;

    .line 16
    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 17
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v4, v7, :cond_6

    .line 19
    iget-object v1, v3, Le/a/t/a/u/c;->a:Ljava/util/Map;

    .line 20
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Le/a/t/a/u/d;

    goto :goto_4

    .line 21
    :cond_6
    iget-object v3, v3, Le/a/t/a/u/c;->b:Ljava/util/Map;

    .line 22
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/t/a/u/c;

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v5, :cond_3

    .line 23
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Emoji data loader has not been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_9
    iget-object p1, p0, Le/a/t/a/x/h$a;->f:Le/a/t/a/x/h;

    .line 26
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/t/a/x/g;

    if-eqz p1, :cond_a

    .line 27
    invoke-interface {p1, v0}, Le/a/t/a/x/g;->B1(Ljava/util/List;)V

    .line 28
    :cond_a
    iget-object p1, p0, Le/a/t/a/x/h$a;->f:Le/a/t/a/x/h;

    .line 29
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/t/a/x/g;

    if-eqz p1, :cond_b

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/t/a/x/g;->A1(Z)V

    .line 31
    :cond_b
    iget-object p1, p0, Le/a/t/a/x/h$a;->f:Le/a/t/a/x/h;

    iget-object v0, p0, Le/a/t/a/x/h$a;->g:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 32
    iput v0, p1, Le/a/t/a/x/h;->e:I

    .line 33
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
