.class public final Le/a/a/h/i;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/h/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/h/h;",
        ">;",
        "Le/a/a/h/g;"
    }
.end annotation


# instance fields
.field public d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

.field public e:Le/a/a/k/a/a/o;

.field public final f:Le/a/a/h/i$a;

.field public g:Z

.field public h:Z

.field public final i:Le/a/a/h/i$b;

.field public final j:Lcom/truecaller/messaging/data/types/Conversation;

.field public final k:Le/a/r2/j;

.field public final l:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Landroid/content/ContentResolver;

.field public final n:Landroid/net/Uri;

.field public final o:Le/a/a/k/a/a/q;

.field public final p:Le/a/q2/a;

.field public final q:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Le/a/a/i0;

.field public final s:Le/a/p5/c0;

.field public final t:Le/a/a/n/h;

.field public final u:Ls1/w/f;

.field public final v:Le/a/u3/g;

.field public final w:Le/a/a/h/c;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/Conversation;Le/a/r2/j;Le/a/r2/f;Landroid/content/ContentResolver;Landroid/net/Uri;Le/a/a/k/a/a/q;Le/a/q2/a;Le/a/r2/f;Le/a/a/i0;Le/a/p5/c0;Le/a/a/n/h;Ls1/w/f;Le/a/u3/g;Le/a/a/h/c;)V
    .locals 1
    .param p2    # Le/a/r2/j;
        .annotation runtime Ljavax/inject/Named;
            value = "ui_thread"
        .end annotation
    .end param
    .param p5    # Landroid/net/Uri;
        .annotation runtime Ljavax/inject/Named;
            value = "im_group_info_uri"
        .end annotation
    .end param
    .param p12    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "Le/a/r2/j;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Le/a/a/k/a/a/q;",
            "Le/a/q2/a;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/a/i0;",
            "Le/a/p5/c0;",
            "Le/a/a/n/h;",
            "Ls1/w/f;",
            "Le/a/u3/g;",
            "Le/a/a/h/c;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiThread"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupInfoUri"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageAttachmentFetcher"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataProvider"

    invoke-static {p14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p12}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/h/i;->j:Lcom/truecaller/messaging/data/types/Conversation;

    iput-object p2, p0, Le/a/a/h/i;->k:Le/a/r2/j;

    iput-object p3, p0, Le/a/a/h/i;->l:Le/a/r2/f;

    iput-object p4, p0, Le/a/a/h/i;->m:Landroid/content/ContentResolver;

    iput-object p5, p0, Le/a/a/h/i;->n:Landroid/net/Uri;

    iput-object p6, p0, Le/a/a/h/i;->o:Le/a/a/k/a/a/q;

    iput-object p7, p0, Le/a/a/h/i;->p:Le/a/q2/a;

    iput-object p8, p0, Le/a/a/h/i;->q:Le/a/r2/f;

    iput-object p9, p0, Le/a/a/h/i;->r:Le/a/a/i0;

    iput-object p10, p0, Le/a/a/h/i;->s:Le/a/p5/c0;

    iput-object p11, p0, Le/a/a/h/i;->t:Le/a/a/n/h;

    iput-object p12, p0, Le/a/a/h/i;->u:Ls1/w/f;

    iput-object p13, p0, Le/a/a/h/i;->v:Le/a/u3/g;

    iput-object p14, p0, Le/a/a/h/i;->w:Le/a/a/h/c;

    .line 2
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    iput-object p1, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 3
    new-instance p1, Le/a/a/h/i$a;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Le/a/a/h/i$a;-><init>(Le/a/a/h/i;Landroid/os/Handler;)V

    iput-object p1, p0, Le/a/a/h/i;->f:Le/a/a/h/i$a;

    .line 4
    new-instance p1, Le/a/a/h/i$b;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Le/a/a/h/i$b;-><init>(Le/a/a/h/i;Landroid/os/Handler;)V

    iput-object p1, p0, Le/a/a/h/i;->i:Le/a/a/h/i$b;

    return-void
.end method

.method public static final Ij(Le/a/a/h/i;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Le/a/a/h/i;->Lj(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p0, Le/a/a/h/h;

    if-eqz p0, :cond_1

    const p1, 0x7f12027f

    invoke-interface {p0, p1}, Le/a/a/h/h;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public Ag()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/h/h;

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 4
    :goto_0
    invoke-interface {v1, v0}, Le/a/a/h/h;->x5(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public Dh()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/a/h/i;->j:Lcom/truecaller/messaging/data/types/Conversation;

    invoke-interface {v0, v1}, Le/a/a/h/h;->l1(Lcom/truecaller/messaging/data/types/Conversation;)V

    :cond_0
    const-string v0, "mediaManager"

    .line 2
    invoke-virtual {p0, v0}, Le/a/a/h/i;->Lj(Ljava/lang/String;)V

    return-void
.end method

.method public E5(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/truecaller/data/entity/messaging/Participant;

    .line 3
    iget-object v3, v3, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 5
    iget-object p1, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz p1, :cond_5

    .line 6
    iget-object v1, p0, Le/a/a/h/i;->l:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/a/m;

    .line 7
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 8
    invoke-interface {v1, p1, v0}, Le/a/a/k/a/a/m;->f(Ljava/lang/String;Ljava/util/List;)Le/a/r2/x;

    move-result-object p1

    iget-object v1, p0, Le/a/a/h/i;->k:Le/a/r2/j;

    new-instance v2, Le/a/a/h/i$e;

    invoke-direct {v2, p0, v0}, Le/a/a/h/i$e;-><init>(Le/a/a/h/i;Ljava/util/List;)V

    invoke-virtual {p1, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_5
    return-void
.end method

.method public final Jj()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/a/h/i;->l:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/a/m;

    .line 3
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 4
    invoke-interface {v1, v0}, Le/a/a/k/a/a/m;->w(Ljava/lang/String;)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/a/h/i;->k:Le/a/r2/j;

    new-instance v2, Le/a/a/h/i$c;

    invoke-direct {v2, p0}, Le/a/a/h/i$c;-><init>(Le/a/a/h/i;)V

    new-instance v3, Le/a/a/h/k;

    invoke-direct {v3, v2}, Le/a/a/h/k;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v0, v1, v3}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_0
    return-void
.end method

.method public final Kj()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/a/h/i;->l:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/a/m;

    .line 3
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 4
    invoke-interface {v1, v0}, Le/a/a/k/a/a/m;->q(Ljava/lang/String;)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/a/h/i;->k:Le/a/r2/j;

    new-instance v2, Le/a/a/h/i$d;

    invoke-direct {v2, p0}, Le/a/a/h/i$d;-><init>(Le/a/a/h/i;)V

    new-instance v3, Le/a/a/h/k;

    invoke-direct {v3, v2}, Le/a/a/h/k;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v0, v1, v3}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_0
    return-void
.end method

.method public final Lj(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/a/h/i;->p:Le/a/q2/a;

    const-string v1, "ImGroupParticipantAction"

    const-string v2, "type"

    .line 2
    invoke-static {v1, v2}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v8, "action"

    const-string v4, "name"

    const-string v6, "value"

    move-object v3, v8

    move-object v5, p1

    move-object v7, v2

    move-object v9, p1

    .line 3
    invoke-static/range {v3 .. v9}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string v3, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 4
    invoke-static {v1, p1, v2, v3, v0}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method

.method public final Mj()V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/h/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    iget-object v3, v0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v3, :cond_1

    .line 3
    iget-object v3, v3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 4
    :cond_1
    iget-object v3, v0, Le/a/a/h/i;->s:Le/a/p5/c0;

    const v4, 0x7f1203cd

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resourceProvider.getString(R.string.MmsGroup)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-interface {v1, v3}, Le/a/a/h/h;->y9(Ljava/lang/String;)V

    .line 6
    :cond_2
    iget-object v1, v0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v1, :cond_9

    .line 7
    iget-object v4, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/a/h/h;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    .line 8
    iget-object v6, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 9
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v8, v6

    goto :goto_1

    :cond_3
    move-object v8, v5

    :goto_1
    const/4 v9, 0x0

    const/4 v13, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 10
    iget-object v10, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0xffda

    .line 11
    new-instance v6, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v7, v6

    invoke-direct/range {v7 .. v24}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 12
    invoke-interface {v4, v6}, Le/a/a/h/h;->ek(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 13
    iget-object v6, v0, Le/a/a/h/i;->o:Le/a/a/k/a/a/q;

    .line 14
    iget-object v7, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->g:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    .line 15
    sget-object v8, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->UPDATE_INFO:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    invoke-interface {v6, v7, v8}, Le/a/a/k/a/a/q;->b(Lcom/truecaller/messaging/data/types/ImGroupPermissions;Lcom/truecaller/api/services/messenger/v1/models/GroupAction;)Z

    move-result v6

    invoke-interface {v4, v6}, Le/a/a/h/h;->Jt(Z)V

    .line 16
    iget-object v6, v0, Le/a/a/h/i;->o:Le/a/a/k/a/a/q;

    .line 17
    iget-object v7, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->g:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    .line 18
    sget-object v8, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->INVITE:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    invoke-interface {v6, v7, v8}, Le/a/a/k/a/a/q;->b(Lcom/truecaller/messaging/data/types/ImGroupPermissions;Lcom/truecaller/api/services/messenger/v1/models/GroupAction;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 19
    iget-object v7, v0, Le/a/a/h/i;->v:Le/a/u3/g;

    invoke-virtual {v7}, Le/a/u3/g;->L()Le/a/u3/b;

    move-result-object v7

    invoke-interface {v7}, Le/a/u3/b;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    move v7, v2

    :goto_2
    invoke-interface {v4, v6, v7}, Le/a/a/h/h;->lf(ZZ)V

    .line 20
    iget v1, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->h:I

    .line 21
    invoke-virtual {v0, v1}, Le/a/a/h/i;->Nj(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    move v6, v2

    :goto_3
    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v5

    :goto_4
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v5, v0, Le/a/a/h/i;->s:Le/a/p5/c0;

    const v6, 0x7f030004

    invoke-interface {v5, v6}, Le/a/p5/c0;->i(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    .line 22
    :cond_7
    invoke-interface {v4, v5}, Le/a/a/h/h;->il(Ljava/lang/String;)V

    .line 23
    invoke-interface {v4}, Le/a/a/h/h;->c0()V

    goto :goto_5

    :cond_8
    move-object v4, v5

    :goto_5
    if-eqz v4, :cond_9

    goto :goto_6

    .line 24
    :cond_9
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/h/h;

    if-eqz v1, :cond_a

    .line 25
    new-instance v15, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v4, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v3, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0xffda

    invoke-direct/range {v4 .. v21}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    invoke-interface {v1, v3}, Le/a/a/h/h;->ek(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 26
    invoke-interface {v1, v2}, Le/a/a/h/h;->Jt(Z)V

    .line 27
    invoke-interface {v1, v2, v2}, Le/a/a/h/h;->lf(ZZ)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Le/a/a/h/i;->Oj()V

    .line 29
    invoke-interface {v1}, Le/a/a/h/h;->c0()V

    .line 30
    :cond_a
    :goto_6
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/h/h;

    if-eqz v1, :cond_c

    iget-object v3, v0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v3, :cond_b

    const/4 v2, 0x1

    :cond_b
    invoke-interface {v1, v2}, Le/a/a/h/h;->fv(Z)V

    :cond_c
    return-void
.end method

.method public final Nj(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public final Oj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h/h;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Le/a/a/h/i;->h:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Le/a/a/h/h;->Tw(Z)V

    :cond_2
    return-void
.end method

.method public R1()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/h/h;->W3()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Le/a/a/h/i;->l:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/a/m;

    .line 4
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    const/4 v2, 0x0

    .line 5
    invoke-interface {v1, v0, v2}, Le/a/a/k/a/a/m;->v(Ljava/lang/String;Z)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/a/h/i;->k:Le/a/r2/j;

    new-instance v2, Le/a/a/h/i$g;

    invoke-direct {v2, p0}, Le/a/a/h/i$g;-><init>(Le/a/a/h/i;)V

    new-instance v3, Le/a/a/h/k;

    invoke-direct {v3, v2}, Le/a/a/h/k;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v0, v1, v3}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_1
    return-void
.end method

.method public T8()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/h/h;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/a/h/h;->R9(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/a/h/h;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Le/a/a/h/i;->Mj()V

    return-void
.end method

.method public a8(Lcom/truecaller/data/entity/messaging/Participant;)V
    .locals 1

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/a/h/h;->s0(Lcom/truecaller/data/entity/messaging/Participant;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/h/i;->e:Le/a/a/k/a/a/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/a/h/i;->e:Le/a/a/k/a/a/o;

    .line 3
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method

.method public e6()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/h/h;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/a/h/h;->N8(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V

    :cond_0
    const-string v0, "groupLink"

    .line 2
    invoke-virtual {p0, v0}, Le/a/a/h/i;->Lj(Ljava/lang/String;)V

    return-void
.end method

.method public e7(Le/a/k3/l/k/a;)V
    .locals 4

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/a/h/i;->l:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/a/m;

    .line 3
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 4
    iget-object v2, p1, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    const/16 v3, 0x8

    .line 5
    invoke-interface {v1, v0, v2, v3}, Le/a/a/k/a/a/m;->j(Ljava/lang/String;Ljava/lang/String;I)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/a/h/i;->k:Le/a/r2/j;

    new-instance v2, Le/a/a/h/i$f;

    invoke-direct {v2, p0, p1}, Le/a/a/h/i$f;-><init>(Le/a/a/h/i;Le/a/k3/l/k/a;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_0
    return-void
.end method

.method public f()Le/a/a/k/a/a/o;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/h/i;->e:Le/a/a/k/a/a/o;

    return-object v0
.end method

.method public fh()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/h/h;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/a/h/h;->p7(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V

    :cond_0
    return-void
.end method

.method public h()Lcom/truecaller/messaging/data/types/ImGroupInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    return-object v0
.end method

.method public hf()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/a/h/i;->j:Lcom/truecaller/messaging/data/types/Conversation;

    iget-wide v1, v1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-interface {v0, v1, v2}, Le/a/a/h/h;->Ce(J)V

    :cond_0
    const-string v0, "visitStarred"

    .line 2
    invoke-virtual {p0, v0}, Le/a/a/h/i;->Lj(Ljava/lang/String;)V

    return-void
.end method

.method public ih(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz p1, :cond_3

    .line 2
    iget v1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->h:I

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 4
    iget-object v1, p0, Le/a/a/h/i;->l:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/a/m;

    invoke-interface {v1, p1, v0}, Le/a/a/k/a/a/m;->o(Ljava/lang/String;I)Le/a/r2/x;

    move-result-object p1

    iget-object v1, p0, Le/a/a/h/i;->k:Le/a/r2/j;

    new-instance v2, Le/a/a/h/i$i;

    invoke-direct {v2, p0, v0}, Le/a/a/h/i$i;-><init>(Le/a/a/h/i;I)V

    invoke-virtual {p1, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_4
    return-void
.end method

.method public kf(Lcom/truecaller/data/entity/messaging/Participant;)V
    .locals 4

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h/h;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    .line 3
    iget-object v2, p1, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    .line 4
    iget-object v3, p1, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->g:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v1, v2, v3, p1}, Le/a/a/h/h;->Ho(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public lf()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h/h;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v1, :cond_0

    .line 3
    iget v1, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->h:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Le/a/a/h/i;->Nj(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const v2, 0x7f030004

    .line 5
    invoke-interface {v0, v1, v2}, Le/a/a/h/h;->Va(II)V

    :cond_1
    return-void
.end method

.method public o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/a/h/i;->j:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v0, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v1, "conversation.participants"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public o4(Le/a/k3/l/k/a;)V
    .locals 5

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h/h;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p1, Le/a/k3/l/k/a;->c:Ljava/lang/String;

    .line 3
    iget-object v2, p1, Le/a/k3/l/k/a;->d:Ljava/lang/String;

    .line 4
    iget-object v3, p1, Le/a/k3/l/k/a;->e:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Le/a/k3/l/k/a;->i:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 6
    :goto_1
    invoke-interface {v0, v1, v2, v3, p1}, Le/a/a/h/h;->Ho(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 13

    .line 1
    new-instance v3, Le/a/a/h/j;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Le/a/a/h/j;-><init>(Le/a/a/h/i;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 2
    iget-object v0, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/a/h/i;->Kj()V

    .line 4
    invoke-virtual {p0}, Le/a/a/h/i;->Jj()V

    .line 5
    iget-object v0, p0, Le/a/a/h/i;->m:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/a/h/i;->n:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Le/a/a/h/i;->i:Le/a/a/h/i$b;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h/h;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Le/a/a/h/i;->j:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    array-length v1, v1

    invoke-interface {v0, v1}, Le/a/a/h/h;->F3(I)V

    :cond_1
    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    new-instance v10, Le/a/a/h/i$k;

    invoke-direct {v10, p0, v6}, Le/a/a/h/i$k;-><init>(Le/a/a/h/i;Ls1/w/d;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/a/h/i;->g:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/h/i;->e:Le/a/a/k/a/a/o;

    if-eqz v0, :cond_1

    iget-object v1, p0, Le/a/a/h/i;->f:Le/a/a/h/i$a;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/a/a/h/i;->g:Z

    .line 4
    :goto_0
    iget-object v0, p0, Le/a/a/h/i;->m:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/a/h/i;->i:Le/a/a/h/i$b;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public r0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/h/h;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public r9(Le/a/k3/l/k/a;)V
    .locals 4

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/a/h/i;->l:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/a/m;

    .line 3
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 4
    iget-object v2, p1, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    const/high16 v3, 0x20000000

    .line 5
    invoke-interface {v1, v0, v2, v3}, Le/a/a/k/a/a/m;->j(Ljava/lang/String;Ljava/lang/String;I)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/a/h/i;->k:Le/a/r2/j;

    new-instance v2, Le/a/a/h/i$h;

    invoke-direct {v2, p0, p1}, Le/a/a/h/i$h;-><init>(Le/a/a/h/i;Le/a/k3/l/k/a;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_0
    return-void
.end method

.method public w9(Le/a/k3/l/k/a;)V
    .locals 5

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/a/h/i;->l:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/a/m;

    .line 3
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 4
    iget-object v2, p1, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    .line 5
    new-instance v3, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 6
    iput-object v2, v3, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 7
    iput-object v2, v3, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {v3}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v2

    const-string v3, "Participant.Builder(Part\u2026Id(imId)\n        .build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v1, v0, v2}, Le/a/a/k/a/a/m;->c(Ljava/lang/String;Lcom/truecaller/data/entity/messaging/Participant;)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/a/h/i;->k:Le/a/r2/j;

    new-instance v2, Le/a/a/h/i$j;

    invoke-direct {v2, p0, p1}, Le/a/a/h/i$j;-><init>(Le/a/a/h/i;Le/a/k3/l/k/a;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_0
    return-void
.end method

.method public x8(Le/a/k3/l/k/a;)V
    .locals 3

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/k3/l/k/a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h/h;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Le/a/a/h/h;->Qo(Le/a/k3/l/k/a;)V

    goto :goto_2

    .line 4
    :cond_2
    new-instance v2, Lcom/truecaller/data/entity/messaging/Participant$b;

    invoke-direct {v2, v1}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 5
    iput-object v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Le/a/k3/l/k/a;->e:Ljava/lang/String;

    .line 7
    iput-object v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Le/a/k3/l/k/a;->g:Ljava/lang/String;

    .line 9
    iput-object v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->m:Ljava/lang/String;

    .line 10
    iget-wide v0, p1, Le/a/k3/l/k/a;->h:J

    .line 11
    iput-wide v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->o:J

    .line 12
    iget-object p1, p1, Le/a/k3/l/k/a;->i:Ljava/lang/String;

    .line 13
    iput-object p1, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->g:Ljava/lang/String;

    .line 14
    invoke-virtual {v2}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p1

    .line 15
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h/h;

    if-eqz v0, :cond_3

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/a/h/h;->s0(Lcom/truecaller/data/entity/messaging/Participant;)V

    :cond_3
    :goto_2
    const-string p1, "chat"

    .line 16
    invoke-virtual {p0, p1}, Le/a/a/h/i;->Lj(Ljava/lang/String;)V

    return-void
.end method
