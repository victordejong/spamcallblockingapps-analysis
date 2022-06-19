.class public final Le/a/o/a/b/g$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/b/g;->Ij()Lq3/a/p1;
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
    c = "com.truecaller.contextcall.ui.hiddencontacts.HiddenContactsPresenter$fetchAndShowHiddenContacts$1"
    f = "HiddenContactsPresenter.kt"
    l = {
        0x2a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/o/a/b/g;


# direct methods
.method public constructor <init>(Le/a/o/a/b/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/b/g$a;->f:Le/a/o/a/b/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/o/a/b/g$a;

    iget-object v0, p0, Le/a/o/a/b/g$a;->f:Le/a/o/a/b/g;

    invoke-direct {p1, v0, p2}, Le/a/o/a/b/g$a;-><init>(Le/a/o/a/b/g;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/o/a/b/g$a;

    iget-object v0, p0, Le/a/o/a/b/g$a;->f:Le/a/o/a/b/g;

    invoke-direct {p1, v0, p2}, Le/a/o/a/b/g$a;-><init>(Le/a/o/a/b/g;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/o/a/b/g$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/o/a/b/g$a;->e:I

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
    iget-object p1, p0, Le/a/o/a/b/g$a;->f:Le/a/o/a/b/g;

    .line 5
    iget-object p1, p1, Le/a/o/a/b/g;->e:Le/a/o/p/b/d;

    .line 6
    iput v2, p0, Le/a/o/a/b/g$a;->e:I

    .line 7
    invoke-interface {p1, p0}, Le/a/o/p/b/d;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Le/a/o/p/b/a;

    .line 12
    new-instance v9, Le/a/o/a/b/j;

    .line 13
    iget-object v4, v1, Le/a/o/p/b/a;->a:Ljava/lang/String;

    .line 14
    iget-object v5, v1, Le/a/o/p/b/a;->b:Ljava/lang/String;

    .line 15
    iget-object v6, v1, Le/a/o/p/b/a;->c:Ljava/lang/String;

    .line 16
    iget-object v7, v1, Le/a/o/p/b/a;->d:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 17
    iget-boolean v8, v1, Le/a/o/p/b/a;->e:Z

    move-object v3, v9

    .line 18
    invoke-direct/range {v3 .. v8}, Le/a/o/a/b/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/common/ui/avatar/AvatarXConfig;Z)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p0, Le/a/o/a/b/g$a;->f:Le/a/o/a/b/g;

    .line 21
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/b/f;

    if-eqz p1, :cond_5

    .line 22
    invoke-interface {p1, v0}, Le/a/o/a/b/f;->g4(Ljava/util/List;)V

    goto :goto_2

    .line 23
    :cond_4
    iget-object p1, p0, Le/a/o/a/b/g$a;->f:Le/a/o/a/b/g;

    .line 24
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/b/f;

    if-eqz p1, :cond_5

    .line 25
    invoke-interface {p1}, Le/a/o/a/b/f;->t()V

    .line 26
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
