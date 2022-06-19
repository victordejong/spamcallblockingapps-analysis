.class public final Le/a/a/i/e;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/a/i/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/i/d;",
        ">;",
        "Le/a/a/i/c;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/i/b;

.field public final c:Le/a/a/i/d$a;


# direct methods
.method public constructor <init>(Le/a/a/i/b;Le/a/a/i/d$a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/i/e;->b:Le/a/a/i/b;

    iput-object p2, p0, Le/a/a/i/e;->c:Le/a/a/i/d$a;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 23

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Le/a/a/i/d;

    const-string v1, "itemView"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 3
    iget-object v2, v1, Le/a/a/i/e;->b:Le/a/a/i/b;

    invoke-interface {v2}, Le/a/a/i/b;->r()Le/a/a/i/f;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4
    iget-object v3, v2, Le/a/a/i/f;->a:Le/a/c/a/l/b$d;

    .line 5
    iget-object v4, v2, Le/a/a/i/f;->b:Le/a/b0/m/a/a;

    .line 6
    iget-boolean v2, v2, Le/a/a/i/f;->c:Z

    if-eqz v4, :cond_0

    .line 7
    iget-object v5, v4, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    if-eqz v5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v5, v3, Le/a/c/a/l/b$d;->c:Ljava/lang/String;

    .line 9
    :goto_0
    invoke-interface {v0, v5}, Le/a/a/i/d;->X1(Ljava/lang/String;)V

    .line 10
    iget-object v5, v3, Le/a/c/a/l/b$d;->e:Ljava/lang/String;

    .line 11
    invoke-interface {v0, v5}, Le/a/a/i/d;->W1(Ljava/lang/String;)V

    .line 12
    iget-object v5, v3, Le/a/c/a/l/b$d;->g:Le/a/c/a/l/c;

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 13
    :goto_1
    invoke-interface {v0, v5}, Le/a/a/i/d;->T2(Z)V

    .line 14
    invoke-interface {v0, v2}, Le/a/a/i/d;->m3(Z)V

    .line 15
    iget-object v2, v3, Le/a/c/a/l/b$d;->c:Ljava/lang/String;

    .line 16
    new-instance v3, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    if-eqz v4, :cond_2

    .line 17
    iget-object v5, v4, Le/a/b0/m/a/a;->c:Landroid/net/Uri;

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    move-object v6, v5

    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v4, :cond_3

    .line 18
    iget-object v4, v4, Le/a/b0/m/a/a;->a:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object v7, v4

    goto :goto_3

    :cond_3
    move-object v7, v2

    :goto_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v22, 0xffbc

    move-object v5, v3

    .line 19
    invoke-direct/range {v5 .. v22}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 20
    invoke-interface {v0, v3}, Le/a/a/i/d;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    :cond_4
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/i/e;->b:Le/a/a/i/b;

    invoke-interface {v0}, Le/a/a/i/b;->r()Le/a/a/i/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/i/e;->b:Le/a/a/i/b;

    invoke-interface {v0}, Le/a/a/i/b;->Cg()Lcom/truecaller/messaging/data/types/InboxTab;

    move-result-object v0

    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/i/e;->b:Le/a/a/i/b;

    invoke-interface {v0}, Le/a/a/i/b;->r()Le/a/a/i/f;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "ItemEvent.ACTION_DISMISS_OTP"

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Le/a/a/i/e;->c:Le/a/a/i/d$a;

    .line 6
    iget-object v0, v0, Le/a/a/i/f;->a:Le/a/c/a/l/b$d;

    .line 7
    invoke-interface {p1, v0}, Le/a/a/i/d$a;->Y3(Le/a/c/a/l/b$d;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "ItemEvent.ACTION_COPY_OTP"

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Le/a/a/i/e;->c:Le/a/a/i/d$a;

    .line 10
    iget-object v0, v0, Le/a/a/i/f;->a:Le/a/c/a/l/b$d;

    .line 11
    invoke-interface {p1, v0}, Le/a/a/i/d$a;->t3(Le/a/c/a/l/b$d;)V

    goto :goto_0

    :sswitch_2
    const-string v2, "ItemEvent.LONG_CLICKED"

    .line 12
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Le/a/a/i/e;->c:Le/a/a/i/d$a;

    .line 14
    iget-object v0, v0, Le/a/a/i/f;->a:Le/a/c/a/l/b$d;

    .line 15
    invoke-interface {p1, v0}, Le/a/a/i/d$a;->ei(Le/a/c/a/l/b$d;)V

    goto :goto_0

    :sswitch_3
    const-string v2, "ItemEvent.CLICKED"

    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    iget-object p1, p0, Le/a/a/i/e;->c:Le/a/a/i/d$a;

    .line 18
    iget-object v0, v0, Le/a/a/i/f;->a:Le/a/c/a/l/b$d;

    .line 19
    invoke-interface {p1, v0}, Le/a/a/i/d$a;->l7(Le/a/c/a/l/b$d;)V

    :goto_0
    move v1, v3

    :cond_0
    :goto_1
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x67eccfc0 -> :sswitch_3
        -0x4e5b1355 -> :sswitch_2
        0x2237ee63 -> :sswitch_1
        0x3f35c954 -> :sswitch_0
    .end sparse-switch
.end method
