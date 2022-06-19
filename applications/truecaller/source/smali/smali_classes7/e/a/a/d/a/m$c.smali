.class public final Le/a/a/d/a/m$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/d/a/m;->Jj()V
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
    c = "com.truecaller.messaging.newconversation.newimgroup.NewImGroupPresenter$onDoneClicked$1"
    f = "NewImGroupPresenter.kt"
    l = {
        0x6d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/a/d/a/m;

.field public final synthetic h:Le/a/a/d/a/g;


# direct methods
.method public constructor <init>(Le/a/a/d/a/m;Le/a/a/d/a/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/d/a/m$c;->g:Le/a/a/d/a/m;

    iput-object p2, p0, Le/a/a/d/a/m$c;->h:Le/a/a/d/a/g;

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

    new-instance p1, Le/a/a/d/a/m$c;

    iget-object v0, p0, Le/a/a/d/a/m$c;->g:Le/a/a/d/a/m;

    iget-object v1, p0, Le/a/a/d/a/m$c;->h:Le/a/a/d/a/g;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/d/a/m$c;-><init>(Le/a/a/d/a/m;Le/a/a/d/a/g;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/d/a/m$c;

    iget-object v0, p0, Le/a/a/d/a/m$c;->g:Le/a/a/d/a/m;

    iget-object v1, p0, Le/a/a/d/a/m$c;->h:Le/a/a/d/a/g;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/d/a/m$c;-><init>(Le/a/a/d/a/m;Le/a/a/d/a/g;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/d/a/m$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/d/a/m$c;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Le/a/a/d/a/m$c;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

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
    iget-object p1, p0, Le/a/a/d/a/m$c;->g:Le/a/a/d/a/m;

    .line 5
    iget-object v1, p1, Le/a/a/d/a/m;->g:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 6
    iput-object v1, p0, Le/a/a/d/a/m$c;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/a/d/a/m$c;->f:I

    .line 7
    new-instance v3, Ls1/z/c/c0;

    invoke-direct {v3}, Ls1/z/c/c0;-><init>()V

    iget-object v4, p1, Le/a/a/d/a/m;->h:Landroid/net/Uri;

    if-eqz v4, :cond_2

    iput-object v4, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 8
    iget-object v4, p1, Le/a/a/d/a/m;->i:Ls1/w/f;

    new-instance v5, Le/a/a/d/a/l;

    invoke-direct {v5, p1, v3, v2}, Le/a/a/d/a/l;-><init>(Le/a/a/d/a/m;Ls1/z/c/c0;Ls1/w/d;)V

    invoke-static {v4, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_0
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, v1

    .line 9
    :goto_1
    check-cast p1, Landroid/net/Uri;

    .line 10
    iget-object v1, p0, Le/a/a/d/a/m$c;->h:Le/a/a/d/a/g;

    iget-object v3, p0, Le/a/a/d/a/m$c;->g:Le/a/a/d/a/m;

    .line 11
    iget-object v3, v3, Le/a/a/d/a/f;->d:[Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v3, :cond_4

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v2}, Le/q/f/a/d/a;->b3([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    :cond_4
    invoke-interface {v1, v0, p1, v2}, Le/a/a/d/a/g;->Vb(Ljava/lang/String;Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 13
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
