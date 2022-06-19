.class public final Le/a/a/f/f;
.super Le/a/a/f/d;
.source "SourceFile"


# instance fields
.field public b:Z

.field public final c:Le/a/a/f/f$a;

.field public final d:Le/a/r2/j;

.field public final e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

.field public final f:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/p5/c0;

.field public final h:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/o5/x;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/a/a/k/a/a/q;

.field public final j:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/y0/q;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Le/a/q2/a;

.field public final m:Le/a/a/i0;

.field public final n:Landroid/content/ContentResolver;

.field public final o:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Le/a/r2/j;Lcom/truecaller/messaging/data/types/ImGroupInfo;Le/a/r2/f;Le/a/p5/c0;Le/a/r2/f;Le/a/a/k/a/a/q;Le/a/r2/f;Le/a/r2/f;Le/a/q2/a;Le/a/a/i0;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Le/a/r2/j;
        .annotation runtime Ljavax/inject/Named;
            value = "ui_thread"
        .end annotation
    .end param
    .param p12    # Landroid/net/Uri;
        .annotation runtime Ljavax/inject/Named;
            value = "im_group_info_uri"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/j;",
            "Lcom/truecaller/messaging/data/types/ImGroupInfo;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;",
            "Le/a/p5/c0;",
            "Le/a/r2/f<",
            "Le/a/o5/x;",
            ">;",
            "Le/a/a/k/a/a/q;",
            "Le/a/r2/f<",
            "Le/a/a/y0/q;",
            ">;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/q2/a;",
            "Le/a/a/i0;",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiThread"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupInfo"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactsManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingNotificationsManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupInfoUri"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/a/f/d;-><init>()V

    iput-object p1, p0, Le/a/a/f/f;->d:Le/a/r2/j;

    iput-object p2, p0, Le/a/a/f/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    iput-object p3, p0, Le/a/a/f/f;->f:Le/a/r2/f;

    iput-object p4, p0, Le/a/a/f/f;->g:Le/a/p5/c0;

    iput-object p5, p0, Le/a/a/f/f;->h:Le/a/r2/f;

    iput-object p6, p0, Le/a/a/f/f;->i:Le/a/a/k/a/a/q;

    iput-object p7, p0, Le/a/a/f/f;->j:Le/a/r2/f;

    iput-object p8, p0, Le/a/a/f/f;->k:Le/a/r2/f;

    iput-object p9, p0, Le/a/a/f/f;->l:Le/a/q2/a;

    iput-object p10, p0, Le/a/a/f/f;->m:Le/a/a/i0;

    iput-object p11, p0, Le/a/a/f/f;->n:Landroid/content/ContentResolver;

    iput-object p12, p0, Le/a/a/f/f;->o:Landroid/net/Uri;

    .line 2
    new-instance p1, Le/a/a/f/f$a;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Le/a/a/f/f$a;-><init>(Le/a/a/f/f;Landroid/os/Handler;)V

    iput-object p1, p0, Le/a/a/f/f;->c:Le/a/a/f/f$a;

    return-void
.end method


# virtual methods
.method public Hj()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/f/f;->f:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/a/m;

    .line 2
    iget-object v1, p0, Le/a/a/f/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 3
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    const/4 v2, 0x1

    .line 4
    invoke-interface {v0, v1, v2}, Le/a/a/k/a/a/m;->v(Ljava/lang/String;Z)Le/a/r2/x;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/a/a/f/f;->d:Le/a/r2/j;

    new-instance v2, Le/a/a/f/f$c;

    invoke-direct {v2, p0}, Le/a/a/f/f$c;-><init>(Le/a/a/f/f;)V

    new-instance v3, Le/a/a/f/g;

    invoke-direct {v3, v2}, Le/a/a/f/g;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v0, v1, v3}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    return-void
.end method

.method public Ij()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/f/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Le/a/a/f/e;->Im(Z)V

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Le/a/a/f/e;->h(Z)V

    .line 4
    iget-object v0, p0, Le/a/a/f/f;->f:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/a/m;

    .line 5
    iget-object v1, p0, Le/a/a/f/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 6
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 7
    invoke-interface {v0, v1}, Le/a/a/k/a/a/m;->e(Ljava/lang/String;)Le/a/r2/x;

    move-result-object v0

    .line 8
    iget-object v1, p0, Le/a/a/f/f;->d:Le/a/r2/j;

    new-instance v2, Le/a/a/f/f$e;

    invoke-direct {v2, p0}, Le/a/a/f/f$e;-><init>(Le/a/a/f/f;)V

    new-instance v3, Le/a/a/f/g;

    invoke-direct {v3, v2}, Le/a/a/f/g;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v0, v1, v3}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_0
    return-void
.end method

.method public final Jj()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/f/f;->f:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/a/m;

    .line 2
    iget-object v1, p0, Le/a/a/f/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 3
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1}, Le/a/a/k/a/a/m;->w(Ljava/lang/String;)Le/a/r2/x;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/a/a/f/f;->d:Le/a/r2/j;

    new-instance v2, Le/a/a/f/f$b;

    invoke-direct {v2, p0}, Le/a/a/f/f$b;-><init>(Le/a/a/f/f;)V

    new-instance v3, Le/a/a/f/g;

    invoke-direct {v3, v2}, Le/a/a/f/g;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v0, v1, v3}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    return-void
.end method

.method public final Kj(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/f/e;

    if-eqz v0, :cond_7

    .line 2
    invoke-static {p1}, Le/a/c/p/a;->a1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Le/a/a/f/e;->finish()V

    .line 4
    invoke-interface {v0}, Le/a/a/f/e;->w0()V

    return-void

    .line 5
    :cond_1
    invoke-static {p1}, Le/a/c/p/a;->t1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    iget-boolean v0, p0, Le/a/a/f/f;->b:Z

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Le/a/a/f/f;->Lj(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V

    :cond_2
    return-void

    .line 8
    :cond_3
    iget-object v1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, v2

    .line 9
    :goto_0
    invoke-interface {v0, v1}, Le/a/a/f/e;->I4(Ljava/lang/String;)V

    .line 10
    iget-object v1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 11
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, v1}, Le/a/a/f/e;->u(Landroid/net/Uri;)V

    .line 12
    iget-object v1, p0, Le/a/a/f/f;->g:Le/a/p5/c0;

    const v3, 0x7f1202eb

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 13
    iget-object v6, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    if-eqz v6, :cond_6

    move-object v2, v6

    :cond_6
    aput-object v2, v4, v5

    .line 14
    invoke-interface {v1, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026roupInfo.title.orEmpty())"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/a/f/e;->setTitle(Ljava/lang/String;)V

    .line 15
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->e:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 16
    iget-object v0, p0, Le/a/a/f/f;->h:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o5/x;

    .line 17
    invoke-interface {v0, p1}, Le/a/o5/x;->b(Ljava/lang/String;)Le/a/r2/x;

    move-result-object p1

    .line 18
    iget-object v0, p0, Le/a/a/f/f;->d:Le/a/r2/j;

    new-instance v1, Le/a/a/f/f$d;

    invoke-direct {v1, p0}, Le/a/a/f/f$d;-><init>(Le/a/a/f/f;)V

    new-instance v2, Le/a/a/f/h;

    invoke-direct {v2, v1}, Le/a/a/f/h;-><init>(Ls1/z/b/l;)V

    invoke-virtual {p1, v0, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_7
    return-void
.end method

.method public final Lj(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/a/f/f;->b:Z

    .line 2
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 3
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 4
    iput-object p1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p1

    const-string v0, "Participant.Builder(Part\u2026pId)\n            .build()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/f/e;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Le/a/a/f/e;->finish()V

    .line 8
    invoke-interface {v0, p1}, Le/a/a/f/e;->s0(Lcom/truecaller/data/entity/messaging/Participant;)V

    :cond_0
    return-void
.end method

.method public final Mj(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2
    invoke-static {}, Le/a/l5/a/s0;->a()Le/a/l5/a/s0$b;

    move-result-object p2

    .line 3
    iget-object v0, p0, Le/a/a/f/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 4
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p2, v0}, Le/a/l5/a/s0$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 6
    iget-object v0, p0, Le/a/a/f/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 7
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->e:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 8
    :goto_0
    invoke-virtual {p2, v0}, Le/a/l5/a/s0$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 9
    iget-object v0, p0, Le/a/a/f/f;->m:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    invoke-virtual {p2, v1}, Le/a/l5/a/s0$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 10
    invoke-virtual {p2, p1}, Le/a/l5/a/s0$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 11
    iget-object p1, p0, Le/a/a/f/f;->k:Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a0;

    invoke-virtual {p2}, Le/a/l5/a/s0$b;->a()Le/a/l5/a/s0;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_2
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/a/f/e;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/a/f/f;->j:Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/y0/q;

    iget-object v0, p0, Le/a/a/f/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    invoke-interface {p1, v0}, Le/a/a/y0/q;->i(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V

    .line 5
    iget-object p1, p0, Le/a/a/f/f;->f:Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/k/a/a/m;

    iget-object v0, p0, Le/a/a/f/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 6
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    const-string v1, "conversation"

    .line 7
    invoke-interface {p1, v0, v1}, Le/a/a/k/a/a/m;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Le/a/a/f/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    invoke-virtual {p0, p1}, Le/a/a/f/f;->Kj(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/f/f;->n:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/a/f/f;->c:Le/a/a/f/f$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/f/f;->n:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/a/f/f;->o:Landroid/net/Uri;

    iget-object v2, p0, Le/a/a/f/f;->c:Le/a/a/f/f$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2
    invoke-virtual {p0}, Le/a/a/f/f;->Jj()V

    return-void
.end method

.method public r0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/f/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/f/e;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
