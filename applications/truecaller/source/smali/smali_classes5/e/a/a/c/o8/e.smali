.class public final Le/a/a/c/o8/e;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/o8/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/c/o8/d;",
        ">;",
        "Le/a/a/c/o8/c;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/c/o8/b;

.field public final c:Le/a/a/c/o8/a;

.field public final d:Le/a/o5/f0;

.field public final e:Le/a/a/k/a/a/q;


# direct methods
.method public constructor <init>(Le/a/a/c/o8/b;Le/a/a/c/o8/a;Le/a/o5/f0;Le/a/a/k/a/a/q;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/c/o8/e;->b:Le/a/a/c/o8/b;

    iput-object p2, p0, Le/a/a/c/o8/e;->c:Le/a/a/c/o8/a;

    iput-object p3, p0, Le/a/a/c/o8/e;->d:Le/a/o5/f0;

    iput-object p4, p0, Le/a/a/c/o8/e;->e:Le/a/a/k/a/a/q;

    return-void
.end method


# virtual methods
.method public final A(I)Le/a/k3/l/k/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o8/e;->b:Le/a/a/c/o8/b;

    invoke-interface {v0}, Le/a/a/c/o8/b;->f()Le/a/a/k/a/a/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3
    invoke-interface {v0}, Le/a/a/k/a/a/o;->i1()Le/a/k3/l/k/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/a/a/c/o8/d;

    const-string v2, "itemView"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v2, p2

    .line 3
    invoke-virtual {v0, v2}, Le/a/a/c/o8/e;->A(I)Le/a/k3/l/k/a;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4
    new-instance v7, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 5
    iget-object v3, v0, Le/a/a/c/o8/e;->d:Le/a/o5/f0;

    .line 6
    iget-wide v4, v2, Le/a/k3/l/k/a;->h:J

    .line 7
    iget-object v6, v2, Le/a/k3/l/k/a;->g:Ljava/lang/String;

    const/4 v8, 0x1

    .line 8
    invoke-interface {v3, v4, v5, v6, v8}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v4

    .line 9
    iget-object v3, v2, Le/a/k3/l/k/a;->e:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 10
    invoke-static {v3}, Le/a/m0/a1$k;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object/from16 v21, v3

    const/4 v6, 0x0

    .line 11
    iget-object v5, v2, Le/a/k3/l/k/a;->c:Ljava/lang/String;

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

    const v20, 0xfff4

    move-object v3, v7

    move-object v0, v7

    move-object/from16 v7, v21

    .line 12
    invoke-direct/range {v3 .. v20}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 13
    invoke-interface {v1, v0}, Le/a/a/c/o8/d;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 14
    iget-object v0, v2, Le/a/k3/l/k/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, v2, Le/a/k3/l/k/a;->f:Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_2

    move-object v2, v0

    move-object/from16 v0, p0

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    .line 16
    iget-object v3, v0, Le/a/a/c/o8/e;->e:Le/a/a/k/a/a/q;

    .line 17
    iget-object v2, v2, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    .line 18
    invoke-interface {v3, v2}, Le/a/a/k/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-interface {v1, v2}, Le/a/a/c/o8/d;->setName(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o8/e;->b:Le/a/a/c/o8/b;

    invoke-interface {v0}, Le/a/a/c/o8/b;->f()Le/a/a/k/a/a/o;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/c/o8/e;->A(I)Le/a/k3/l/k/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    int-to-long v0, p1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    const-string v1, "ItemEvent.CLICKED"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget p1, p1, Le/a/o2/h;->b:I

    .line 4
    invoke-virtual {p0, p1}, Le/a/a/c/o8/e;->A(I)Le/a/k3/l/k/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Le/a/a/c/o8/e;->c:Le/a/a/c/o8/a;

    invoke-interface {v0, p1}, Le/a/a/c/o8/a;->kb(Le/a/k3/l/k/a;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
