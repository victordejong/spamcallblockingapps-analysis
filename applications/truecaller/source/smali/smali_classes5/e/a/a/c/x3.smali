.class public final Le/a/a/c/x3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/w3;


# instance fields
.field public final a:Le/a/a/c/x3$a;

.field public b:Le/a/a/c/w3$a;

.field public c:Z

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Le/a/a/g/l0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/a/c/x3$b;

.field public f:Le/a/a/g/j0/q;

.field public g:Le/a/a/g/l0/a;

.field public final h:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/x3;->h:Landroid/content/ContentResolver;

    .line 2
    new-instance p1, Le/a/a/c/x3$a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Le/a/a/c/x3$a;-><init>(Le/a/a/c/x3;Landroid/os/Handler;)V

    iput-object p1, p0, Le/a/a/c/x3;->a:Le/a/a/c/x3$a;

    .line 3
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/a/c/x3;->d:Ljava/util/List;

    .line 4
    new-instance p1, Le/a/a/c/x3$b;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Le/a/a/c/x3$b;-><init>(Le/a/a/c/x3;Landroid/os/Handler;)V

    iput-object p1, p0, Le/a/a/c/x3;->e:Le/a/a/c/x3$b;

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/Integer;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/c/x3;->f:Le/a/a/g/j0/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4
    invoke-interface {v0}, Le/a/a/g/j0/q;->u()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    iget-object p1, p0, Le/a/a/c/x3;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/a/g/l0/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/c/x3;->d:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Le/a/a/c/w3$a;)V
    .locals 3

    const-string v0, "messagesObserver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/a/c/x3;->b:Le/a/a/c/w3$a;

    .line 2
    iget-boolean p1, p0, Le/a/a/c/x3;->c:Z

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/a/c/x3;->h:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Le/a/a/c/x3;->a:Le/a/a/c/x3$a;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4
    iget-object p1, p0, Le/a/a/c/x3;->h:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Le/a/a/c/x3;->e:Le/a/a/c/x3$b;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5
    iput-boolean v2, p0, Le/a/a/c/x3;->c:Z

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/a/g/l0/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/a/c/x3;->d:Ljava/util/List;

    return-void
.end method

.method public e(Le/a/a/g/j0/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/x3;->f:Le/a/a/g/j0/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2
    :cond_0
    iput-object p1, p0, Le/a/a/c/x3;->f:Le/a/a/g/j0/q;

    return-void
.end method

.method public f()Le/a/a/g/j0/q;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/x3;->f:Le/a/a/g/j0/q;

    return-object v0
.end method

.method public g(J)I
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/c/x3;->d:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3
    check-cast v3, Le/a/a/g/l0/a;

    .line 4
    invoke-interface {v3}, Le/a/a/g/l0/a;->getId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_2
    return v2
.end method

.method public getCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/x3;->f:Le/a/a/g/j0/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v2, p0, Le/a/a/c/x3;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    .line 3
    iget-object v0, p0, Le/a/a/c/x3;->g:Le/a/a/g/l0/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    :cond_1
    return v1
.end method

.method public getItem(I)Le/a/a/g/l0/a;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/x3;->f:Le/a/a/g/j0/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v2, p0, Le/a/a/c/x3;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v0, p0, Le/a/a/c/x3;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/l0/a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v2, p0, Le/a/a/c/x3;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    if-lt p1, v2, :cond_1

    .line 4
    iget-object p1, p0, Le/a/a/c/x3;->g:Le/a/a/g/l0/a;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/a/c/x3;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 6
    iget-object v0, p0, Le/a/a/c/x3;->f:Le/a/a/g/j0/q;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 8
    invoke-interface {v0}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v1

    :cond_2
    move-object p1, v1

    :goto_0
    return-object p1

    :cond_3
    return-object v1
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/x3;->f:Le/a/a/g/j0/q;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/x3;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public j(Le/a/a/g/l0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/x3;->g:Le/a/a/g/l0/a;

    return-void
.end method

.method public n0()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/a/c/x3;->b:Le/a/a/c/w3$a;

    .line 2
    iget-boolean v0, p0, Le/a/a/c/x3;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/a/c/x3;->h:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/a/c/x3;->a:Le/a/a/c/x3$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4
    iget-object v0, p0, Le/a/a/c/x3;->h:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/a/c/x3;->e:Le/a/a/c/x3$b;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Le/a/a/c/x3;->c:Z

    return-void
.end method
