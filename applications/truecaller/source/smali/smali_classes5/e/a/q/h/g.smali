.class public final Le/a/q/h/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q/h/f;


# static fields
.field public static final g:J


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/q/g/e;

.field public final c:Le/a/q/f/k;

.field public final d:Le/a/q/f/a;

.field public final e:Le/a/p5/c;

.field public final f:Le/a/p5/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Le/a/q/h/g;->g:J

    return-void
.end method

.method public constructor <init>(Le/a/q/g/e;Le/a/q/f/k;Le/a/q/f/a;Le/a/p5/c;Le/a/p5/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "dbManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactFeedbackRestApiManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentFeedbackGrpcApiManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q/h/g;->b:Le/a/q/g/e;

    iput-object p2, p0, Le/a/q/h/g;->c:Le/a/q/f/k;

    iput-object p3, p0, Le/a/q/h/g;->d:Le/a/q/f/a;

    iput-object p4, p0, Le/a/q/h/g;->e:Le/a/p5/c;

    iput-object p5, p0, Le/a/q/h/g;->f:Le/a/p5/g;

    .line 2
    new-instance p1, Le/a/q/h/g$a;

    invoke-direct {p1, p0}, Le/a/q/h/g$a;-><init>(Le/a/q/h/g;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/q/h/g;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/q/h/g$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/q/h/g$b;

    iget v1, v0, Le/a/q/h/g$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q/h/g$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q/h/g$b;

    invoke-direct {v0, p0, p1}, Le/a/q/h/g$b;-><init>(Le/a/q/h/g;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/q/h/g$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q/h/g$b;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Le/a/q/h/g$b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Le/a/q/h/g$b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/q/h/g$b;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v4, v0, Le/a/q/h/g$b;->g:Ljava/lang/Object;

    check-cast v4, Le/a/q/h/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Le/a/q/h/g$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/q/h/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/q/h/g;->b:Le/a/q/g/e;

    iput-object p0, v0, Le/a/q/h/g$b;->g:Ljava/lang/Object;

    iput v5, v0, Le/a/q/h/g$b;->e:I

    check-cast p1, Le/a/q/g/f;

    invoke-virtual {p1, v0}, Le/a/q/g/f;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 8
    :cond_6
    iget-object v6, v2, Le/a/q/h/g;->d:Le/a/q/f/a;

    iput-object v2, v0, Le/a/q/h/g$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/q/h/g$b;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/q/h/g$b;->e:I

    check-cast v6, Le/a/q/f/g;

    .line 9
    iget-object v4, v6, Le/a/q/f/g;->a:Ls1/w/f;

    new-instance v7, Le/a/q/f/f;

    const/4 v8, 0x0

    invoke-direct {v7, v6, p1, v8}, Le/a/q/f/f;-><init>(Le/a/q/f/g;Ljava/util/List;Ls1/w/d;)V

    invoke-static {v4, v7, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_7

    return-object v1

    :cond_7
    move-object v9, v2

    move-object v2, p1

    move-object p1, v4

    move-object v4, v9

    .line 10
    :goto_2
    check-cast p1, Ljava/util/List;

    .line 11
    iget-object v4, v4, Le/a/q/h/g;->b:Le/a/q/g/e;

    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/truecaller/contactfeedback/db/SyncState;->SENT:Lcom/truecaller/contactfeedback/db/SyncState;

    iput-object v2, v0, Le/a/q/h/g$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/q/h/g$b;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/q/h/g$b;->e:I

    check-cast v4, Le/a/q/g/f;

    invoke-virtual {v4, v6, v7, v0}, Le/a/q/g/f;->k(Ljava/util/List;Lcom/truecaller/contactfeedback/db/SyncState;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    return-object v1

    :cond_8
    move-object v1, p1

    move-object v0, v2

    .line 12
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploaded items = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    .line 14
    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/q/h/g$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/q/h/g$c;

    iget v1, v0, Le/a/q/h/g$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q/h/g$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q/h/g$c;

    invoke-direct {v0, p0, p1}, Le/a/q/h/g$c;-><init>(Le/a/q/h/g;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/q/h/g$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q/h/g$c;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean v0, v0, Le/a/q/h/g$c;->i:Z

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-boolean v0, v0, Le/a/q/h/g$c;->i:Z

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v2, v0, Le/a/q/h/g$c;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v5, v0, Le/a/q/h/g$c;->g:Ljava/lang/Object;

    check-cast v5, Le/a/q/h/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Le/a/q/h/g$c;->g:Ljava/lang/Object;

    check-cast v2, Le/a/q/h/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/q/h/g;->e:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v7

    sget-wide v9, Le/a/q/h/g;->g:J

    sub-long/2addr v7, v9

    .line 5
    iget-object p1, p0, Le/a/q/h/g;->b:Le/a/q/g/e;

    .line 6
    iget-object v2, p0, Le/a/q/h/g;->a:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 7
    iput-object p0, v0, Le/a/q/h/g$c;->g:Ljava/lang/Object;

    iput v6, v0, Le/a/q/h/g$c;->e:I

    check-cast p1, Le/a/q/g/f;

    invoke-virtual {p1, v7, v8, v2, v0}, Le/a/q/g/f;->j(JILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    .line 8
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "feedback to upload = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    iget-object v6, v2, Le/a/q/h/g;->c:Le/a/q/f/k;

    iput-object v2, v0, Le/a/q/h/g$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/q/h/g$c;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/q/h/g$c;->e:I

    check-cast v6, Le/a/q/f/l;

    invoke-virtual {v6, p1, v0}, Le/a/q/f/l;->a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_7

    return-object v1

    :cond_7
    move-object v11, v2

    move-object v2, p1

    move-object p1, v5

    move-object v5, v11

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_9

    .line 11
    iget-object v2, v5, Le/a/q/h/g;->b:Le/a/q/g/e;

    iput-object v6, v0, Le/a/q/h/g$c;->g:Ljava/lang/Object;

    iput-object v6, v0, Le/a/q/h/g$c;->h:Ljava/lang/Object;

    iput-boolean p1, v0, Le/a/q/h/g$c;->i:Z

    iput v4, v0, Le/a/q/h/g$c;->e:I

    check-cast v2, Le/a/q/g/f;

    invoke-virtual {v2, v0}, Le/a/q/g/f;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    return-object v1

    :cond_8
    move-object v11, v0

    move v0, p1

    move-object p1, v11

    :goto_3
    check-cast p1, Ljava/lang/Integer;

    goto :goto_6

    .line 12
    :cond_9
    iget-object v4, v5, Le/a/q/h/g;->b:Le/a/q/g/e;

    .line 13
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 15
    check-cast v7, Lcom/truecaller/contactfeedback/db/ContactFeedback;

    .line 16
    invoke-virtual {v7}, Lcom/truecaller/contactfeedback/db/ContactFeedback;->getId()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 17
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 18
    :cond_b
    iput-object v6, v0, Le/a/q/h/g$c;->g:Ljava/lang/Object;

    iput-object v6, v0, Le/a/q/h/g$c;->h:Ljava/lang/Object;

    iput-boolean p1, v0, Le/a/q/h/g$c;->i:Z

    iput v3, v0, Le/a/q/h/g$c;->e:I

    .line 19
    check-cast v4, Le/a/q/g/f;

    invoke-virtual {v4, v5, v0}, Le/a/q/g/f;->b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    return-object v1

    :cond_c
    move-object v11, v0

    move v0, p1

    move-object p1, v11

    .line 20
    :goto_5
    check-cast p1, Ljava/lang/Integer;

    .line 21
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleted feedback count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
