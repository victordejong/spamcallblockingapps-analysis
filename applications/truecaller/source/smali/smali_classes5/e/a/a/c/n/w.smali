.class public Le/a/a/c/n/w;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/n/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/c/n/v;",
        ">;",
        "Le/a/a/c/n/u;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/a/g/l0/b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/a/g/l0/b;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public final g:Le/a/a/c/n/w$e;

.field public final h:Le/a/a/c/n/w$f;

.field public final i:Lcom/truecaller/messaging/data/types/Message;

.field public final j:Ljava/lang/String;

.field public final k:Le/a/r2/j;

.field public final l:Ls1/w/f;

.field public final m:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Landroid/content/ContentResolver;

.field public final o:Landroid/net/Uri;

.field public final p:Landroid/net/Uri;

.field public final q:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Le/a/a/c/w3;

.field public final s:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Le/a/r2/j;Ls1/w/f;Le/a/r2/f;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Le/a/r2/f;Le/a/a/c/w3;Lo3/a;)V
    .locals 1
    .param p1    # Lcom/truecaller/messaging/data/types/Message;
        .annotation runtime Ljavax/inject/Named;
            value = "message"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "im_group_id"
        .end annotation
    .end param
    .param p3    # Le/a/r2/j;
        .annotation runtime Ljavax/inject/Named;
            value = "ui_thread"
        .end annotation
    .end param
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p7    # Landroid/net/Uri;
        .annotation runtime Ljavax/inject/Named;
            value = "messages_uri"
        .end annotation
    .end param
    .param p8    # Landroid/net/Uri;
        .annotation runtime Ljavax/inject/Named;
            value = "reports_uri"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "Ljava/lang/String;",
            "Le/a/r2/j;",
            "Ls1/w/f;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/c0;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;",
            "Le/a/a/c/w3;",
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiThread"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imReactionManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesUri"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportsUri"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSource"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p4}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/c/n/w;->i:Lcom/truecaller/messaging/data/types/Message;

    iput-object p2, p0, Le/a/a/c/n/w;->j:Ljava/lang/String;

    iput-object p3, p0, Le/a/a/c/n/w;->k:Le/a/r2/j;

    iput-object p4, p0, Le/a/a/c/n/w;->l:Ls1/w/f;

    iput-object p5, p0, Le/a/a/c/n/w;->m:Le/a/r2/f;

    iput-object p6, p0, Le/a/a/c/n/w;->n:Landroid/content/ContentResolver;

    iput-object p7, p0, Le/a/a/c/n/w;->o:Landroid/net/Uri;

    iput-object p8, p0, Le/a/a/c/n/w;->p:Landroid/net/Uri;

    iput-object p9, p0, Le/a/a/c/n/w;->q:Le/a/r2/f;

    iput-object p10, p0, Le/a/a/c/n/w;->r:Le/a/a/c/w3;

    iput-object p11, p0, Le/a/a/c/n/w;->s:Lo3/a;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/c/n/w;->d:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/c/n/w;->e:Ljava/util/List;

    .line 4
    new-instance p1, Le/a/a/c/n/w$e;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Le/a/a/c/n/w$e;-><init>(Le/a/a/c/n/w;Landroid/os/Handler;)V

    iput-object p1, p0, Le/a/a/c/n/w;->g:Le/a/a/c/n/w$e;

    .line 5
    new-instance p1, Le/a/a/c/n/w$f;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Le/a/a/c/n/w$f;-><init>(Le/a/a/c/n/w;Landroid/os/Handler;)V

    iput-object p1, p0, Le/a/a/c/n/w;->h:Le/a/a/c/n/w$f;

    return-void
.end method


# virtual methods
.method public final Ij()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/c/n/w;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/c/n/w;->q:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/a/m;

    iget-object v1, p0, Le/a/a/c/n/w;->j:Ljava/lang/String;

    iget-object v2, p0, Le/a/a/c/n/w;->i:Lcom/truecaller/messaging/data/types/Message;

    iget-wide v2, v2, Lcom/truecaller/messaging/data/types/Message;->C:J

    invoke-interface {v0, v1, v2, v3}, Le/a/a/k/a/a/m;->n(Ljava/lang/String;J)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/a/c/n/w;->k:Le/a/r2/j;

    new-instance v2, Le/a/a/c/n/w$a;

    invoke-direct {v2, p0}, Le/a/a/c/n/w$a;-><init>(Le/a/a/c/n/w;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_0
    return-void
.end method

.method public final Jj()V
    .locals 6

    .line 1
    new-instance v3, Le/a/a/c/n/w$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/a/c/n/w$b;-><init>(Le/a/a/c/n/w;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 2
    iget-object v0, p0, Le/a/a/c/n/w;->i:Lcom/truecaller/messaging/data/types/Message;

    iget v0, v0, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/a/c/n/w;->m:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/c0;

    iget-object v1, p0, Le/a/a/c/n/w;->i:Lcom/truecaller/messaging/data/types/Message;

    .line 4
    iget-wide v1, v1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 5
    invoke-interface {v0, v1, v2}, Le/a/a/k/a/c0;->c(J)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/a/c/n/w;->k:Le/a/r2/j;

    new-instance v2, Le/a/a/c/n/w$c;

    invoke-direct {v2, p0}, Le/a/a/c/n/w$c;-><init>(Le/a/a/c/n/w;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/a/c/n/w;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Le/a/a/c/n/w;->q:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/a/m;

    iget-object v1, p0, Le/a/a/c/n/w;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/a/k/a/a/m;->l(Ljava/lang/String;)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/a/c/n/w;->k:Le/a/r2/j;

    new-instance v2, Le/a/a/c/n/w$d;

    invoke-direct {v2, p0}, Le/a/a/c/n/w$d;-><init>(Le/a/a/c/n/w;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_1
    return-void
.end method

.method public final Kj()V
    .locals 6

    .line 1
    iget v0, p0, Le/a/a/c/n/w;->f:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    iget v3, p0, Le/a/a/c/n/w;->f:I

    sub-int/2addr v3, v1

    iget-object v4, p0, Le/a/a/c/n/w;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3
    iget-object v4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/a/c/n/v;

    if-eqz v4, :cond_0

    iget-object v5, p0, Le/a/a/c/n/w;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    invoke-interface {v4, v5, v0}, Le/a/a/c/n/v;->gA(ZI)V

    .line 4
    :cond_0
    iget-object v4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/a/c/n/v;

    if-eqz v4, :cond_1

    iget-object v5, p0, Le/a/a/c/n/w;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    invoke-interface {v4, v5, v3}, Le/a/a/c/n/v;->ym(ZI)V

    .line 5
    :cond_1
    iget-object v4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/a/c/n/v;

    if-eqz v4, :cond_4

    iget-object v5, p0, Le/a/a/c/n/w;->j:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Le/a/a/c/n/w;->i:Lcom/truecaller/messaging/data/types/Message;

    invoke-static {v5}, Le/a/c/p/a;->x1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Le/a/a/c/n/w;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v1

    if-nez v5, :cond_2

    if-lez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    invoke-interface {v4, v0}, Le/a/a/c/n/v;->io(Z)V

    .line 6
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/n/v;

    if-eqz v0, :cond_6

    iget-object v4, p0, Le/a/a/c/n/w;->j:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Le/a/a/c/n/w;->i:Lcom/truecaller/messaging/data/types/Message;

    invoke-static {v4}, Le/a/c/p/a;->x1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-lez v3, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    invoke-interface {v0, v3}, Le/a/a/c/n/v;->rb(Z)V

    .line 7
    :cond_6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/n/v;

    if-eqz v0, :cond_8

    iget-object v3, p0, Le/a/a/c/n/w;->i:Lcom/truecaller/messaging/data/types/Message;

    iget v3, v3, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    invoke-interface {v0, v1}, Le/a/a/c/n/v;->ds(Z)V

    :cond_8
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/a/c/n/v;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Le/a/a/c/n/w;->Jj()V

    .line 5
    invoke-virtual {p0}, Le/a/a/c/n/w;->Ij()V

    return-void
.end method

.method public cb(Lcom/truecaller/messaging/conversation/messageDetails/GroupReportsItemMvp$Type;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/conversation/messageDetails/GroupReportsItemMvp$Type;",
            ")",
            "Ljava/util/List<",
            "Le/a/a/g/l0/b;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Le/a/a/c/n/w;->e:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/a/c/n/w;->d:Ljava/util/List;

    :goto_0
    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/c/n/w;->n:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/a/c/n/w;->o:Landroid/net/Uri;

    iget-object v2, p0, Le/a/a/c/n/w;->g:Le/a/a/c/n/w$e;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2
    iget-object v0, p0, Le/a/a/c/n/w;->n:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/a/c/n/w;->p:Landroid/net/Uri;

    iget-object v2, p0, Le/a/a/c/n/w;->h:Le/a/a/c/n/w$f;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/n/w;->n:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/a/c/n/w;->g:Le/a/a/c/n/w$e;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2
    iget-object v0, p0, Le/a/a/c/n/w;->n:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/a/c/n/w;->h:Le/a/a/c/n/w$f;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public r0()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/n/v;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/c/n/v;->finish()V

    :cond_0
    return-void
.end method
