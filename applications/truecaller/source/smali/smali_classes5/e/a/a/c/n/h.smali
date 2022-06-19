.class public abstract Le/a/a/c/n/h;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/n/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/c/n/m;",
        ">;",
        "Le/a/a/c/n/k;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/c/n/j;

.field public final c:Le/a/a/k/a/a/q;

.field public final d:Le/a/o5/f0;

.field public final e:Le/a/o5/b0;

.field public final f:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/a/c/n/j;Le/a/a/k/a/a/q;Le/a/o5/f0;Le/a/o5/b0;Le/a/p5/c0;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/c/n/h;->b:Le/a/a/c/n/j;

    iput-object p2, p0, Le/a/a/c/n/h;->c:Le/a/a/k/a/a/q;

    iput-object p3, p0, Le/a/a/c/n/h;->d:Le/a/o5/f0;

    iput-object p4, p0, Le/a/a/c/n/h;->e:Le/a/o5/b0;

    iput-object p5, p0, Le/a/a/c/n/h;->f:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/a/a/c/n/m;

    const-string v2, "itemView"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Le/a/a/c/n/h;->b:Le/a/a/c/n/j;

    invoke-interface/range {p0 .. p0}, Le/a/a/c/n/k;->getType()Lcom/truecaller/messaging/conversation/messageDetails/GroupReportsItemMvp$Type;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/a/c/n/j;->cb(Lcom/truecaller/messaging/conversation/messageDetails/GroupReportsItemMvp$Type;)Ljava/util/List;

    move-result-object v2

    move/from16 v3, p2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/l0/b;

    .line 4
    iget-object v3, v2, Le/a/a/g/l0/b;->e:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, v2, Le/a/a/g/l0/b;->f:Ljava/lang/String;

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v3, v0, Le/a/a/c/n/h;->c:Le/a/a/k/a/a/q;

    .line 7
    iget-object v4, v2, Le/a/a/g/l0/b;->a:Ljava/lang/String;

    .line 8
    invoke-interface {v3, v4}, Le/a/a/k/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-interface {v1, v3}, Le/a/a/c/n/m;->setName(Ljava/lang/String;)V

    .line 9
    new-instance v3, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 10
    iget-object v4, v0, Le/a/a/c/n/h;->d:Le/a/o5/f0;

    .line 11
    iget-wide v5, v2, Le/a/a/g/l0/b;->h:J

    .line 12
    iget-object v7, v2, Le/a/a/g/l0/b;->g:Ljava/lang/String;

    const/4 v8, 0x1

    .line 13
    invoke-interface {v4, v5, v6, v7, v8}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v5

    .line 14
    iget-object v4, v2, Le/a/a/g/l0/b;->e:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 15
    invoke-static {v4}, Le/a/m0/a1$k;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v22, v4

    const/4 v7, 0x0

    .line 16
    iget-object v6, v2, Le/a/a/g/l0/b;->f:Ljava/lang/String;

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

    const v21, 0xfff4

    move-object v4, v3

    move-object/from16 p1, v2

    move v2, v8

    move-object/from16 v8, v22

    .line 17
    invoke-direct/range {v4 .. v21}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 18
    invoke-interface {v1, v3}, Le/a/a/c/n/m;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 19
    invoke-interface/range {p0 .. p0}, Le/a/a/c/n/k;->getType()Lcom/truecaller/messaging/conversation/messageDetails/GroupReportsItemMvp$Type;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_4

    if-ne v3, v2, :cond_3

    .line 20
    iget-object v2, v0, Le/a/a/c/n/h;->f:Le/a/p5/c0;

    const v3, 0x7f0804e6

    invoke-interface {v2, v3}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    .line 21
    :cond_3
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :cond_4
    iget-object v2, v0, Le/a/a/c/n/h;->f:Le/a/p5/c0;

    const v3, 0x7f0804ea

    invoke-interface {v2, v3}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_3
    const-string v3, "when (getType()) {\n     \u2026inbox_read)\n            }"

    .line 22
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p1

    .line 23
    iget-wide v4, v3, Le/a/a/g/l0/b;->c:J

    .line 24
    iget-object v6, v0, Le/a/a/c/n/h;->e:Le/a/o5/b0;

    invoke-interface {v6, v4, v5}, Le/a/o5/b0;->d(J)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    iget-object v4, v0, Le/a/a/c/n/h;->f:Le/a/p5/c0;

    const v5, 0x7f1201e5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceProvider.getStri\u2026.ConversationHeaderToday)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 25
    :cond_5
    iget-object v6, v0, Le/a/a/c/n/h;->e:Le/a/o5/b0;

    invoke-interface {v6, v4, v5}, Le/a/o5/b0;->e(J)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v4, v0, Le/a/a/c/n/h;->f:Le/a/p5/c0;

    const v5, 0x7f1201e6

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceProvider.getStri\u2026versationHeaderYesterday)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 26
    :cond_6
    new-instance v6, Lw3/b/a/b;

    invoke-direct {v6, v4, v5}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v6}, Lw3/b/a/e0/a;->u()I

    move-result v6

    new-instance v7, Lw3/b/a/b;

    invoke-direct {v7}, Lw3/b/a/b;-><init>()V

    invoke-virtual {v7}, Lw3/b/a/e0/a;->u()I

    move-result v7

    if-eq v6, v7, :cond_7

    iget-object v6, v0, Le/a/a/c/n/h;->e:Le/a/o5/b0;

    sget-object v7, Lcom/truecaller/util/DatePattern;->GROUP_HEADER_WITH_YEAR:Lcom/truecaller/util/DatePattern;

    invoke-interface {v6, v4, v5, v7}, Le/a/o5/b0;->a(JLcom/truecaller/util/DatePattern;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 27
    :cond_7
    iget-object v6, v0, Le/a/a/c/n/h;->e:Le/a/o5/b0;

    sget-object v7, Lcom/truecaller/util/DatePattern;->GROUP_HEADER_WITH_YEAR:Lcom/truecaller/util/DatePattern;

    invoke-interface {v6, v4, v5, v7}, Le/a/o5/b0;->a(JLcom/truecaller/util/DatePattern;)Ljava/lang/String;

    move-result-object v4

    .line 28
    :goto_4
    invoke-interface {v1, v2, v4}, Le/a/a/c/n/m;->f2(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 29
    iget-object v2, v0, Le/a/a/c/n/h;->e:Le/a/o5/b0;

    .line 30
    iget-wide v3, v3, Le/a/a/g/l0/b;->c:J

    .line 31
    invoke-interface {v2, v3, v4}, Le/a/o5/b0;->l(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/a/c/n/m;->p(Ljava/lang/String;)V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/n/h;->b:Le/a/a/c/n/j;

    invoke-interface {p0}, Le/a/a/c/n/k;->getType()Lcom/truecaller/messaging/conversation/messageDetails/GroupReportsItemMvp$Type;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/a/c/n/j;->cb(Lcom/truecaller/messaging/conversation/messageDetails/GroupReportsItemMvp$Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/n/h;->b:Le/a/a/c/n/j;

    invoke-interface {p0}, Le/a/a/c/n/k;->getType()Lcom/truecaller/messaging/conversation/messageDetails/GroupReportsItemMvp$Type;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/a/c/n/j;->cb(Lcom/truecaller/messaging/conversation/messageDetails/GroupReportsItemMvp$Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/l0/b;

    .line 2
    iget-object p1, p1, Le/a/a/g/l0/b;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method
