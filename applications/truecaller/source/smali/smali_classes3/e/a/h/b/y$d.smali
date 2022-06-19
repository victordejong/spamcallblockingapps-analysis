.class public final Le/a/h/b/y$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/y;->wb(I)V
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
    c = "com.truecaller.calling.dialer.DialerPresenter$refetchContactIfNeeded$1"
    f = "DialerPresenter.kt"
    l = {
        0x269
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/h/b/y;

.field public final synthetic g:Ls1/z/c/c0;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Le/a/h/b/y;Ls1/z/c/c0;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/y$d;->f:Le/a/h/b/y;

    iput-object p2, p0, Le/a/h/b/y$d;->g:Ls1/z/c/c0;

    iput p3, p0, Le/a/h/b/y$d;->h:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/h/b/y$d;

    iget-object v0, p0, Le/a/h/b/y$d;->f:Le/a/h/b/y;

    iget-object v1, p0, Le/a/h/b/y$d;->g:Ls1/z/c/c0;

    iget v2, p0, Le/a/h/b/y$d;->h:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/h/b/y$d;-><init>(Le/a/h/b/y;Ls1/z/c/c0;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/b/y$d;

    iget-object v0, p0, Le/a/h/b/y$d;->f:Le/a/h/b/y;

    iget-object v1, p0, Le/a/h/b/y$d;->g:Ls1/z/c/c0;

    iget v2, p0, Le/a/h/b/y$d;->h:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/h/b/y$d;-><init>(Le/a/h/b/y;Ls1/z/c/c0;ILs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/b/y$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/h/b/y$d;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

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
    iget-object p1, p0, Le/a/h/b/y$d;->f:Le/a/h/b/y;

    .line 5
    iget-object p1, p1, Le/a/h/b/y;->M:Ls1/w/f;

    .line 6
    new-instance v1, Le/a/h/b/y$d$a;

    invoke-direct {v1, p0, v2}, Le/a/h/b/y$d$a;-><init>(Le/a/h/b/y$d;Ls1/w/d;)V

    iput v3, p0, Le/a/h/b/y$d;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_8

    .line 7
    iget-object v0, p0, Le/a/h/b/y$d;->f:Le/a/h/b/y;

    .line 8
    iget-object v0, v0, Le/a/h/b/y;->x:Ls1/k;

    .line 9
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 10
    instance-of v1, v0, Le/a/h/b/y0/a/d$a;

    if-nez v1, :cond_3

    move-object v0, v2

    :cond_3
    check-cast v0, Le/a/h/b/y0/a/d$a;

    if-eqz v0, :cond_7

    iget v1, p0, Le/a/h/b/y$d;->h:I

    const-string v4, "refreshedContact"

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "newContact"

    .line 11
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, v0, Le/a/h/b/y0/a/d$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    move-object v2, v0

    :cond_5
    if-eqz v2, :cond_7

    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/b/y0/a/a;

    .line 14
    iget-object v4, v0, Le/a/h/b/y0/a/a;->a:Lcom/truecaller/data/entity/Contact;

    .line 15
    invoke-virtual {v4}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    move-object v4, v0

    move-object v5, p1

    .line 16
    invoke-static/range {v4 .. v9}, Le/a/h/b/y0/a/a;->a(Le/a/h/b/y0/a/a;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/lang/Long;Lcom/truecaller/blocking/FilterMatch;I)Le/a/h/b/y0/a/a;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T9 Replaced contact at pos: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": id: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Took "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 18
    iget-object p1, v0, Le/a/h/b/y0/a/a;->c:Ljava/lang/Long;

    if-eqz p1, :cond_6

    .line 19
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_6
    const-wide/16 v0, 0x0

    :goto_2
    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    :cond_7
    iget-object p1, p0, Le/a/h/b/y$d;->f:Le/a/h/b/y;

    .line 21
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/v;

    if-eqz p1, :cond_8

    .line 22
    iget v0, p0, Le/a/h/b/y$d;->h:I

    invoke-interface {p1, v0, v3}, Le/a/h/b/v;->Fe(II)V

    .line 23
    :cond_8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
