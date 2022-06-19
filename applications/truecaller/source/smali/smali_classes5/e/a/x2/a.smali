.class public final Le/a/x2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/a/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/b0/a/b/b<",
        "Lcom/truecaller/data/entity/Contact;",
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

    iput-object p1, p0, Le/a/x2/a;->a:Le/a/o5/f0;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 0

    .line 1
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p0, p1}, Le/a/x2/a;->b(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 23

    const-string v0, "type"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object/from16 v12, p0

    .line 2
    iget-object v2, v12, Le/a/x2/a;->a:Le/a/o5/f0;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_0
    const-string v4, "phonebookId ?: 0"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v2, v3, v4, v5, v6}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    const/4 v7, 0x0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->u0()Z

    move-result v11

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result v20

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v10

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    if-eqz v2, :cond_2

    invoke-static {v2, v13, v6}, Le/m/d/y/n;->t1(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    goto :goto_2

    :cond_2
    move-object/from16 v21, v4

    .line 8
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->B0()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v22, v13

    goto :goto_4

    :cond_4
    :goto_3
    move/from16 v22, v6

    .line 9
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v13

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result v14

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0xe064

    move-object v2, v0

    move-object v4, v5

    move-object v5, v7

    move-object/from16 v6, v21

    move v7, v10

    move/from16 v10, v22

    move/from16 v12, v20

    .line 12
    invoke-direct/range {v2 .. v19}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    return-object v0
.end method
