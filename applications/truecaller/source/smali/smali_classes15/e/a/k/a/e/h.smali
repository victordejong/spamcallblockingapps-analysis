.class public final Le/a/k/a/e/h;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.ui.manageincomingvideo.ManageIncomingVideoSettingPresenter$onRemoveItemClicked$1"
    f = "ManageIncomingVideoSettingPresenter.kt"
    l = {
        0x42
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k/a/e/i;

.field public final synthetic g:Le/a/k/a/e/a;


# direct methods
.method public constructor <init>(Le/a/k/a/e/i;Le/a/k/a/e/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/e/h;->f:Le/a/k/a/e/i;

    iput-object p2, p0, Le/a/k/a/e/h;->g:Le/a/k/a/e/a;

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

    new-instance p1, Le/a/k/a/e/h;

    iget-object v0, p0, Le/a/k/a/e/h;->f:Le/a/k/a/e/i;

    iget-object v1, p0, Le/a/k/a/e/h;->g:Le/a/k/a/e/a;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/a/e/h;-><init>(Le/a/k/a/e/i;Le/a/k/a/e/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/a/e/h;

    iget-object v0, p0, Le/a/k/a/e/h;->f:Le/a/k/a/e/i;

    iget-object v1, p0, Le/a/k/a/e/h;->g:Le/a/k/a/e/a;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/a/e/h;-><init>(Le/a/k/a/e/i;Le/a/k/a/e/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/a/e/h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/k/a/e/h;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

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
    iget-object p1, p0, Le/a/k/a/e/h;->f:Le/a/k/a/e/i;

    .line 5
    iget-object p1, p1, Le/a/k/a/e/i;->d:Le/a/k/n/e/a;

    .line 6
    iget-object v2, p0, Le/a/k/a/e/h;->g:Le/a/k/a/e/a;

    .line 7
    new-instance v5, Lcom/truecaller/videocallerid/db/hiddencontacts/HiddenContact;

    .line 8
    iget-object v2, v2, Le/a/k/a/e/a;->b:Ljava/lang/String;

    .line 9
    invoke-direct {v5, v2}, Lcom/truecaller/videocallerid/db/hiddencontacts/HiddenContact;-><init>(Ljava/lang/String;)V

    .line 10
    iput v4, p0, Le/a/k/a/e/h;->e:I

    check-cast p1, Le/a/k/n/e/b;

    .line 11
    iget-object v2, p1, Le/a/k/n/e/b;->b:Ls1/w/f;

    new-instance v4, Le/a/k/n/e/c;

    invoke-direct {v4, p1, v5, v3}, Le/a/k/n/e/c;-><init>(Le/a/k/n/e/b;Lcom/truecaller/videocallerid/db/hiddencontacts/HiddenContact;Ls1/w/d;)V

    invoke-static {v2, v4, p0}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-ne p1, v1, :cond_3

    return-object v1

    .line 12
    :cond_3
    :goto_1
    iget-object v4, p0, Le/a/k/a/e/h;->f:Le/a/k/a/e/i;

    .line 13
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v7, Le/a/k/a/e/f;

    invoke-direct {v7, v4, v3}, Le/a/k/a/e/f;-><init>(Le/a/k/a/e/i;Ls1/w/d;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v0
.end method
