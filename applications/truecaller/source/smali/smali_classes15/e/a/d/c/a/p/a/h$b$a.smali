.class public final Le/a/d/c/a/p/a/h$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/a/p/a/h$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/c0/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/a/p/a/h$b;


# direct methods
.method public constructor <init>(Le/a/d/c/a/p/a/h$b;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a/p/a/h$b$a;->a:Le/a/d/c/a/p/a/h$b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/a/d/c0/j;

    .line 2
    iget-object v2, v0, Le/a/d/c/a/p/a/h$b$a;->a:Le/a/d/c/a/p/a/h$b;

    iget-object v2, v2, Le/a/d/c/a/p/a/h$b;->f:Le/a/d/c/a/p/a/h;

    .line 3
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/c/a/p/a/e;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2, v3}, Le/a/d/c/a/p/a/e;->n0(Z)V

    .line 5
    :cond_0
    sget-object v2, Le/a/d/c0/j$c;->a:Le/a/d/c0/j$c;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 6
    iget-object v1, v0, Le/a/d/c/a/p/a/h$b$a;->a:Le/a/d/c/a/p/a/h$b;

    iget-object v1, v1, Le/a/d/c/a/p/a/h$b;->f:Le/a/d/c/a/p/a/h;

    .line 7
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/c/a/p/a/e;

    if-eqz v1, :cond_c

    .line 8
    new-instance v2, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

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

    const v22, 0xffff

    invoke-direct/range {v5 .. v22}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    invoke-interface {v1, v2}, Le/a/d/c/a/p/a/e;->setAvatarConfig(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 9
    invoke-interface {v1, v4}, Le/a/d/c/a/p/a/e;->n0(Z)V

    goto/16 :goto_3

    .line 10
    :cond_1
    instance-of v2, v1, Le/a/d/c0/j$b;

    if-eqz v2, :cond_b

    .line 11
    iget-object v2, v0, Le/a/d/c/a/p/a/h$b$a;->a:Le/a/d/c/a/p/a/h$b;

    iget-object v2, v2, Le/a/d/c/a/p/a/h$b;->f:Le/a/d/c/a/p/a/h;

    .line 12
    iget-object v2, v2, Le/a/d/c/a/p/a/h;->q:Le/a/s2/a;

    .line 13
    check-cast v1, Le/a/d/c0/j$b;

    .line 14
    iget-object v5, v1, Le/a/d/c0/j$b;->a:Le/a/d/b0/a;

    const-string v6, "$this$toCallAnnouncementInfo"

    .line 15
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v6, Le/a/s2/f;

    .line 17
    iget-object v7, v5, Le/a/d/b0/a;->c:Ljava/lang/String;

    .line 18
    iget-object v8, v5, Le/a/d/b0/a;->d:Ljava/lang/String;

    .line 19
    iget-boolean v5, v5, Le/a/d/b0/a;->i:Z

    .line 20
    invoke-direct {v6, v7, v8, v4, v5}, Le/a/s2/f;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 21
    invoke-interface {v2, v6}, Le/a/s2/a;->b(Le/a/s2/f;)V

    .line 22
    iget-object v2, v0, Le/a/d/c/a/p/a/h$b$a;->a:Le/a/d/c/a/p/a/h$b;

    iget-object v2, v2, Le/a/d/c/a/p/a/h$b;->f:Le/a/d/c/a/p/a/h;

    .line 23
    iget-object v1, v1, Le/a/d/c0/j$b;->a:Le/a/d/b0/a;

    .line 24
    iget-object v5, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/d/c/a/p/a/e;

    if-eqz v5, :cond_c

    .line 25
    iget-object v6, v2, Le/a/d/c/a/p/a/h;->k:Le/a/d/c/a/p/a/d;

    if-eqz v6, :cond_2

    invoke-interface {v6, v1}, Le/a/d/c/a/p/a/d;->Cc(Le/a/d/b0/a;)V

    .line 26
    :cond_2
    iget-object v6, v1, Le/a/d/b0/a;->c:Ljava/lang/String;

    .line 27
    invoke-interface {v5, v6}, Le/a/d/c/a/p/a/e;->setProfileName(Ljava/lang/String;)V

    .line 28
    invoke-interface {v5, v4}, Le/a/d/c/a/p/a/e;->d0(Z)V

    .line 29
    invoke-static {v1}, Le/a/p5/s0/g;->J(Le/a/d/b0/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v6

    invoke-interface {v5, v6}, Le/a/d/c/a/p/a/e;->setAvatarConfig(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 30
    invoke-static {v1}, Le/a/p5/s0/g;->H0(Le/a/d/b0/a;)Le/a/d/c/a/o;

    move-result-object v6

    invoke-interface {v5, v6}, Le/a/d/c/a/p/a/e;->D(Le/a/d/c/a/o;)V

    .line 31
    iget-boolean v6, v2, Le/a/d/c/a/p/a/h;->i:Z

    if-eqz v6, :cond_3

    goto :goto_2

    .line 32
    :cond_3
    iget-object v6, v1, Le/a/d/b0/a;->f:Lcom/truecaller/voip/VoipUserBadge;

    .line 33
    iget-boolean v7, v6, Lcom/truecaller/voip/VoipUserBadge;->a:Z

    if-eqz v7, :cond_4

    .line 34
    iget-object v7, v1, Le/a/d/b0/a;->h:Ljava/lang/Integer;

    if-eqz v7, :cond_4

    goto :goto_0

    .line 35
    :cond_4
    iget-boolean v7, v6, Lcom/truecaller/voip/VoipUserBadge;->c:Z

    if-eqz v7, :cond_5

    goto :goto_0

    .line 36
    :cond_5
    iget-boolean v6, v6, Lcom/truecaller/voip/VoipUserBadge;->d:Z

    if-eqz v6, :cond_6

    goto :goto_0

    .line 37
    :cond_6
    iget-boolean v6, v1, Le/a/d/b0/a;->i:Z

    if-nez v6, :cond_7

    .line 38
    iget-boolean v6, v1, Le/a/d/b0/a;->j:Z

    if-nez v6, :cond_7

    :goto_0
    move v6, v4

    goto :goto_1

    :cond_7
    move v6, v3

    :goto_1
    if-eqz v6, :cond_8

    .line 39
    iget-object v6, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v6, Le/a/d/c/a/p/a/e;

    if-eqz v6, :cond_8

    invoke-interface {v6}, Le/a/d/c/a/p/a/e;->p()V

    .line 40
    :cond_8
    :goto_2
    iput-boolean v4, v2, Le/a/d/c/a/p/a/h;->g:Z

    .line 41
    iget-boolean v6, v2, Le/a/d/c/a/p/a/h;->h:Z

    if-eqz v6, :cond_9

    .line 42
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/c/a/p/a/e;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Le/a/d/c/a/p/a/e;->u0()V

    .line 43
    :cond_9
    iget-object v2, v1, Le/a/d/b0/a;->f:Lcom/truecaller/voip/VoipUserBadge;

    .line 44
    iget-boolean v6, v2, Lcom/truecaller/voip/VoipUserBadge;->f:Z

    if-nez v6, :cond_a

    .line 45
    iget-boolean v2, v2, Lcom/truecaller/voip/VoipUserBadge;->d:Z

    if-nez v2, :cond_a

    move v3, v4

    :cond_a
    if-eqz v3, :cond_c

    .line 46
    iget-boolean v2, v1, Le/a/d/b0/a;->i:Z

    if-eqz v2, :cond_c

    .line 47
    iget-object v1, v1, Le/a/d/b0/a;->d:Ljava/lang/String;

    .line 48
    invoke-interface {v5, v1}, Le/a/d/c/a/p/a/e;->setProfilePhone(Ljava/lang/String;)V

    goto :goto_3

    .line 49
    :cond_b
    sget-object v2, Le/a/d/c0/j$a;->a:Le/a/d/c0/j$a;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 50
    iget-object v1, v0, Le/a/d/c/a/p/a/h$b$a;->a:Le/a/d/c/a/p/a/h$b;

    iget-object v1, v1, Le/a/d/c/a/p/a/h$b;->f:Le/a/d/c/a/p/a/h;

    .line 51
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/c/a/p/a/e;

    if-eqz v1, :cond_c

    .line 52
    new-instance v2, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

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

    const v21, 0xffff

    invoke-direct/range {v4 .. v21}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    invoke-interface {v1, v2}, Le/a/d/c/a/p/a/e;->setAvatarConfig(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 53
    iget-object v2, v0, Le/a/d/c/a/p/a/h$b$a;->a:Le/a/d/c/a/p/a/h$b;

    iget-object v2, v2, Le/a/d/c/a/p/a/h$b;->f:Le/a/d/c/a/p/a/h;

    .line 54
    iget-object v2, v2, Le/a/d/c/a/p/a/h;->p:Le/a/p5/c0;

    .line 55
    sget v4, Lcom/truecaller/voip/R$string;->voip_non_identified_contact:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026p_non_identified_contact)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/d/c/a/p/a/e;->setProfileName(Ljava/lang/String;)V

    .line 56
    :cond_c
    :goto_3
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
