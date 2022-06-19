.class public final Le/a/a/d/a/i;
.super Le/a/a/d/a/e;
.source "SourceFile"


# instance fields
.field public final b:Le/a/o5/f0;

.field public final c:Le/a/a/i0;

.field public final d:Le/a/b0/o/a;

.field public final e:Le/a/p5/h0;


# direct methods
.method public constructor <init>(Le/a/o5/f0;Le/a/a/i0;Le/a/b0/o/a;Le/a/p5/h0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/a/d/a/e;-><init>()V

    iput-object p1, p0, Le/a/a/d/a/i;->b:Le/a/o5/f0;

    iput-object p2, p0, Le/a/a/d/a/i;->c:Le/a/a/i0;

    iput-object p3, p0, Le/a/a/d/a/i;->d:Le/a/b0/o/a;

    iput-object p4, p0, Le/a/a/d/a/i;->e:Le/a/p5/h0;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/a/a/d/a/d;

    const-string v2, "presenterView"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Le/a/a/d/a/e;->a:[Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v2, :cond_2

    .line 4
    aget-object v2, v2, p2

    if-eqz v2, :cond_2

    .line 5
    iget-object v3, v2, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    iget-object v4, v0, Le/a/a/d/a/i;->c:Le/a/a/i0;

    invoke-interface {v4}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, v0, Le/a/a/d/a/i;->d:Le/a/b0/o/a;

    const-string v6, "profileAvatar"

    invoke-interface {v3, v6}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v7, v3

    .line 7
    invoke-static {v2}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4, v5}, Le/m/d/y/n;->t1(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x0

    .line 8
    iget-object v8, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v23, 0xfff4

    .line 9
    new-instance v2, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v6, v2

    invoke-direct/range {v6 .. v23}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 10
    invoke-interface {v1, v2}, Le/a/a/d/a/d;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 11
    iget-object v2, v0, Le/a/a/d/a/i;->e:Le/a/p5/h0;

    const v3, 0x7f120437

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026ring.ParticipantSelfName)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/a/d/a/d;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_1
    new-instance v3, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v6, v3

    .line 13
    iget-object v7, v0, Le/a/a/d/a/i;->b:Le/a/o5/f0;

    iget-wide v8, v2, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    iget-object v10, v2, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    invoke-interface {v7, v8, v9, v10, v5}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v7

    .line 14
    invoke-static {v2}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4, v5}, Le/m/d/y/n;->t1(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x0

    .line 15
    iget-object v8, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v23, 0xfff4

    .line 16
    invoke-direct/range {v6 .. v23}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 17
    invoke-interface {v1, v3}, Le/a/a/d/a/d;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 18
    invoke-static {v2}, Le/a/a/i1/h;->d(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/a/d/a/d;->setName(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public Kb()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/d/a/e;->a:[Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v0, :cond_0

    .line 2
    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Za(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public gc(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
