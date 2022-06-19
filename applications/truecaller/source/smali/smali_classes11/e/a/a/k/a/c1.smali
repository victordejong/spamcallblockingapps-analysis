.class public final Le/a/a/k/a/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/b1;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/k3/j/j;

.field public final c:Le/a/k3/j/b;

.field public final d:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/e1;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/k3/j/j;Le/a/k3/j/b;Le/a/r2/f;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/k3/j/j;",
            "Le/a/k3/j/b;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/e1;",
            ">;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawContactDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imUserManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/c1;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/a/k/a/c1;->b:Le/a/k3/j/j;

    iput-object p3, p0, Le/a/a/k/a/c1;->c:Le/a/k3/j/b;

    iput-object p4, p0, Le/a/a/k/a/c1;->d:Le/a/r2/f;

    iput-object p5, p0, Le/a/a/k/a/c1;->e:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "tcId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/c1;->b:Le/a/k3/j/j;

    invoke-virtual {v0, p1}, Le/a/k3/j/j;->g(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "imId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/a/k/a/c1;->e:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->w()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "TruecallerContract.ImUsersTable.getContentUri()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "tc_id"

    const-string v4, "im_peer_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x10

    .line 3
    invoke-static/range {v1 .. v7}, Le/a/p5/s0/f;->H(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p0, Le/a/a/k/a/c1;->c:Le/a/k3/j/b;

    invoke-virtual {v1, p1}, Le/a/k3/j/b;->j(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "tcId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/c1;->c:Le/a/k3/j/b;

    invoke-virtual {v0, p1}, Le/a/k3/j/b;->j(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/api/services/messenger/v1/models/UserInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "userInfoMap"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->getTcId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userInfo.tcId"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v2, v3}, Le/a/a/k/a/c1;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v2, v0, v1}, Le/a/a/k/a/c1;->g(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/api/services/messenger/v1/models/UserInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Le/a/a/k/a/v1;)V
    .locals 3

    const-string v0, "senderInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/a/k/a/v1;->b:Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-object v1, p1, Le/a/a/k/a/v1;->b:Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    .line 5
    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getPhoneNumber()Lcom/google/protobuf/Int64Value;

    move-result-object v1

    const-string v2, "senderInfo.sender.phoneNumber"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/protobuf/Int64Value;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p1, Le/a/a/k/a/v1;->a:Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    .line 7
    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->getTcId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "senderInfo.userInfo.tcId"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Le/a/a/k/a/c1;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    .line 8
    iget-object v1, p1, Le/a/a/k/a/v1;->a:Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    .line 9
    iget-object p1, p1, Le/a/a/k/a/v1;->b:Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "senderInfo.sender.id"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, p1}, Le/a/a/k/a/c1;->g(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/api/services/messenger/v1/models/UserInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p1, Le/a/a/k/a/v1;->b:Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    .line 12
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object p1, p1, Le/a/a/k/a/v1;->a:Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    .line 14
    new-instance v1, Ls1/k;

    invoke-direct {v1, v0, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-static {v1}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/a/k/a/c1;->d(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public f(Lcom/truecaller/data/entity/messaging/Participant;)V
    .locals 9

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2
    iget-object v1, p1, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/truecaller/data/entity/messaging/Participant;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_2

    .line 3
    :cond_4
    sget-object v3, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v4, p0, Le/a/a/k/a/c1;->a:Ls1/w/f;

    const/4 v5, 0x0

    new-instance v6, Le/a/a/k/a/c1$a;

    const/4 v1, 0x0

    invoke-direct {v6, p0, p1, v0, v1}, Le/a/a/k/a/c1$a;-><init>(Le/a/a/k/a/c1;Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;Ls1/w/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_5
    :goto_2
    return-void
.end method

.method public final g(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/api/services/messenger/v1/models/UserInfo;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/truecaller/data/entity/Contact;->S0(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/truecaller/data/entity/Contact;->P0(Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object p3, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->imId:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Le/a/a/k/a/c1;->b:Le/a/k3/j/j;

    invoke-virtual {v0, p1}, Le/a/k3/j/j;->c(Lcom/truecaller/data/entity/Contact;)Z

    .line 5
    iget-object p1, p0, Le/a/a/k/a/c1;->d:Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/k/a/e1;

    invoke-virtual {p2}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->getTcId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "userInfo.tcId"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p1, p3, p2, v0}, Le/a/a/k/a/e1;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/k/a/c1;->b:Le/a/k3/j/j;

    invoke-virtual {v0, p1}, Le/a/k3/j/j;->g(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Contact;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/truecaller/data/entity/Contact;->setTcId(Ljava/lang/String;)V

    .line 3
    iget-object p1, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object p2, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Lcom/truecaller/data/entity/Contact;->setSource(I)V

    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/truecaller/data/entity/Contact;->X0(J)V

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    const-string p1, "private"

    goto :goto_1

    :cond_3
    const-string p1, "public"

    .line 7
    :goto_1
    iget-object p2, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p2, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object p1, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->access:Ljava/lang/String;

    :goto_2
    return-object v0
.end method
