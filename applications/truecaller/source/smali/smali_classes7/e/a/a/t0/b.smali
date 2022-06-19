.class public final Le/a/a/t0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/t0/a;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/a/g/g;

.field public final c:Le/a/a/g/x;

.field public final d:Le/a/c/z/d;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/a/g/x;Le/a/c/z/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorsFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otpUseCases"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/t0/b;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/a/t0/b;->b:Le/a/a/g/g;

    iput-object p3, p0, Le/a/a/t0/b;->c:Le/a/a/g/x;

    iput-object p4, p0, Le/a/a/t0/b;->d:Le/a/c/z/d;

    return-void
.end method


# virtual methods
.method public a(JJLs1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Le/a/a/t0/b$a;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Le/a/a/t0/b$a;

    iget v1, v0, Le/a/a/t0/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/t0/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/t0/b$a;

    invoke-direct {v0, p0, p5}, Le/a/a/t0/b$a;-><init>(Le/a/a/t0/b;Ls1/w/d;)V

    :goto_0
    iget-object p5, v0, Le/a/a/t0/b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/t0/b$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p5, p0, Le/a/a/t0/b;->d:Le/a/c/z/d;

    iput v3, v0, Le/a/a/t0/b$a;->e:I

    .line 5
    iget-object p5, p5, Le/a/c/z/d;->a:Le/a/c/c/d/d0;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p5, v2, p3, p4, v0}, Le/a/c/c/d/d0;->A(Ljava/util/Date;JLs1/w/d;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    check-cast p5, Ljava/util/List;

    .line 7
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    .line 8
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2
.end method

.method public b(JLs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/a/t0/b$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/a/t0/b$b;

    iget v1, v0, Le/a/a/t0/b$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/t0/b$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/t0/b$b;

    invoke-direct {v0, p0, p3}, Le/a/a/t0/b$b;-><init>(Le/a/a/t0/b;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/a/t0/b$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/t0/b$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/a/t0/b$b;->g:Ljava/lang/Object;

    check-cast p1, Le/a/a/t0/b;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/a/t0/b;->d:Le/a/c/z/d;

    iput-object p0, v0, Le/a/a/t0/b$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/a/t0/b$b;->e:I

    .line 5
    iget-object p3, p3, Le/a/c/z/d;->a:Le/a/c/c/d/d0;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v2, v0}, Le/a/c/c/d/d0;->B(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 6
    :goto_1
    check-cast p3, Ljava/util/List;

    .line 7
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 8
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_4
    const/16 p2, 0x3e7

    .line 9
    invoke-static {p3, p2}, Ls1/u/i;->k(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p2

    .line 10
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, v0

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 11
    iget-object v2, p1, Le/a/a/t0/b;->a:Landroid/content/ContentResolver;

    .line 12
    invoke-static {v1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Le/a/b0/q/g0;->k(Ljava/util/Set;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "TruecallerContract.Inbox\u2026etContentUri(ids.toSet())"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "COUNT()"

    .line 13
    invoke-static {v2, v1, v4, v3, v3}, Le/a/p5/s0/f;->D(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    add-int/2addr p3, v1

    goto :goto_2

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p3}, Ljava/lang/Integer;-><init>(I)V

    return-object p1
.end method

.method public c(JLs1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    instance-of v1, p3, Le/a/a/t0/b$c;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Le/a/a/t0/b$c;

    iget v2, v1, Le/a/a/t0/b$c;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/a/t0/b$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/a/t0/b$c;

    invoke-direct {v1, p0, p3}, Le/a/a/t0/b$c;-><init>(Le/a/a/t0/b;Ls1/w/d;)V

    :goto_0
    iget-object p3, v1, Le/a/a/t0/b$c;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/a/t0/b$c;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/a/t0/b$c;->g:Ljava/lang/Object;

    check-cast p1, Le/a/a/t0/b;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/a/t0/b;->d:Le/a/c/z/d;

    iput-object p0, v1, Le/a/a/t0/b$c;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/a/t0/b$c;->e:I

    .line 5
    iget-object p3, p3, Le/a/c/z/d;->a:Le/a/c/c/d/d0;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v3, v1}, Le/a/c/c/d/d0;->B(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_3

    return-object v2

    :cond_3
    move-object p1, p0

    .line 6
    :goto_1
    check-cast p3, Ljava/util/List;

    .line 7
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    return-object v0

    .line 8
    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x3e7

    .line 9
    invoke-static {p3, v1}, Ls1/u/i;->k(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p3

    .line 10
    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 11
    iget-object v2, p1, Le/a/a/t0/b;->a:Landroid/content/ContentResolver;

    .line 12
    invoke-static {v1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Le/a/b0/q/g0;->k(Ljava/util/Set;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 13
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 14
    iget-object v2, p1, Le/a/a/t0/b;->b:Le/a/a/g/g;

    invoke-interface {v2, v1}, Le/a/a/g/g;->i(Landroid/database/Cursor;)Le/a/a/g/j0/q;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    .line 15
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17
    invoke-interface {v1}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v4

    const-string v5, "message"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 18
    :cond_5
    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v1, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    move-object v3, v0

    .line 20
    :goto_4
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_7
    return-object p2
.end method

.method public d(JLs1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Le/a/a/t0/b;->a:Landroid/content/ContentResolver;

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1, p1, p2}, Le/a/b0/q/g0;->i(JJ)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "TruecallerContract.Inbox\u2026tContentUri(0, timestamp)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/t0/b;->c:Le/a/a/g/x;

    sget-object v0, Lcom/truecaller/messaging/data/types/InboxTab;->PROMOTIONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {p2, v0}, Le/a/a/g/x;->a(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "COUNT()"

    const/4 v1, 0x0

    .line 4
    invoke-static {p3, p1, v0, p2, v1}, Le/a/p5/s0/f;->D(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2
.end method

.method public e(JLs1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Le/a/a/t0/b;->a:Landroid/content/ContentResolver;

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1, p1, p2}, Le/a/b0/q/g0;->p(JJ)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "TruecallerContract.Inbox\u2026tContentUri(0, timestamp)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/t0/b;->c:Le/a/a/g/x;

    sget-object v0, Lcom/truecaller/messaging/data/types/InboxTab;->SPAM:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {p2, v0}, Le/a/a/g/x;->a(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "COUNT()"

    const/4 v1, 0x0

    .line 4
    invoke-static {p3, p1, v0, p2, v1}, Le/a/p5/s0/f;->D(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2
.end method
