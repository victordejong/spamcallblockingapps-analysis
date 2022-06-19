.class public final Le/a/x2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/a/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/b0/a/b/b<",
        "Lcom/truecaller/data/entity/messaging/Participant;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/o5/f0;


# direct methods
.method public constructor <init>(Le/a/o5/f0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/x2/c;->a:Le/a/o5/f0;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 0

    .line 1
    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    invoke-virtual {p0, p1}, Le/a/x2/c;->b(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "type"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, v0, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    iget-object v2, v0, Lcom/truecaller/data/entity/messaging/Participant;->u:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    invoke-static {v1, v2}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v1

    .line 2
    new-instance v20, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object/from16 v15, p0

    .line 3
    iget-object v2, v15, Le/a/x2/c;->a:Le/a/o5/f0;

    iget-wide v3, v0, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    iget-object v5, v0, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v3, v4, v5, v6}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v3

    .line 4
    iget-object v2, v0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2, v4, v6}, Le/m/d/y/n;->t1(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v7, v2

    const/4 v5, 0x0

    .line 5
    iget-object v8, v0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/messaging/Participant;->n()Z

    move-result v9

    const/4 v10, 0x0

    .line 7
    iget v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-ne v0, v6, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    const/4 v11, 0x0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    move v12, v6

    goto :goto_2

    :cond_2
    move v12, v4

    :goto_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    move v13, v6

    goto :goto_3

    :cond_3
    move v13, v4

    :goto_3
    const/16 v2, 0x80

    if-ne v1, v2, :cond_4

    move v14, v6

    goto :goto_4

    :cond_4
    move v14, v4

    :goto_4
    const/16 v2, 0x100

    if-ne v1, v2, :cond_5

    move/from16 v21, v6

    goto :goto_5

    :cond_5
    move/from16 v21, v4

    :goto_5
    const/16 v2, 0x10

    if-ne v1, v2, :cond_6

    move v1, v6

    goto :goto_6

    :cond_6
    move v1, v4

    :goto_6
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0xc0a4

    move-object/from16 v2, v20

    move-object v4, v8

    move-object v6, v7

    move v7, v9

    move v8, v10

    move v9, v0

    move v10, v11

    move v11, v13

    move v13, v14

    move/from16 v14, v21

    move v15, v1

    .line 8
    invoke-direct/range {v2 .. v19}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    return-object v20
.end method
