.class public final Le/a/a/b/n0;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/a/b/j0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/b/k0;",
        ">;",
        "Le/a/a/b/j0;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/b/i0;

.field public final c:Le/a/a/b/h;

.field public final d:Le/a/a/i1/b;

.field public final e:Le/a/b0/a/b/a;

.field public final f:Le/a/b0/a/b/a;

.field public final g:Le/a/x2/b;

.field public final h:Le/a/a/i0;


# direct methods
.method public constructor <init>(Le/a/a/b/i0;Le/a/a/b/h;Le/a/a/i1/b;Le/a/b0/a/b/a;Le/a/b0/a/b/a;Le/a/x2/b;Le/a/a/i0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarPresenter1"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarPresenter2"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarConfigProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/b/n0;->b:Le/a/a/b/i0;

    iput-object p2, p0, Le/a/a/b/n0;->c:Le/a/a/b/h;

    iput-object p3, p0, Le/a/a/b/n0;->d:Le/a/a/i1/b;

    iput-object p4, p0, Le/a/a/b/n0;->e:Le/a/b0/a/b/a;

    iput-object p5, p0, Le/a/a/b/n0;->f:Le/a/b0/a/b/a;

    iput-object p6, p0, Le/a/a/b/n0;->g:Le/a/x2/b;

    iput-object p7, p0, Le/a/a/b/n0;->h:Le/a/a/i0;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 12

    .line 1
    check-cast p1, Le/a/a/b/k0;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/b/n0;->b:Le/a/a/b/i0;

    invoke-interface {p2}, Le/a/a/b/i0;->jh()Le/a/a/g/v;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 4
    iget-object v0, p2, Le/a/a/g/v;->a:Ljava/util/List;

    .line 5
    new-instance v1, Le/a/a/b/l0;

    invoke-direct {v1}, Le/a/a/b/l0;-><init>()V

    invoke-static {v0, v1}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 6
    iget-object v1, p0, Le/a/a/b/n0;->e:Le/a/b0/a/b/a;

    iget-object v2, p0, Le/a/a/b/n0;->g:Le/a/x2/b;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/messaging/data/types/Conversation;

    invoke-virtual {v2, v4}, Le/a/x2/b;->b(Lcom/truecaller/messaging/data/types/Conversation;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v4, :cond_0

    .line 8
    iget-object v0, p0, Le/a/a/b/n0;->e:Le/a/b0/a/b/a;

    invoke-interface {p1, v0}, Le/a/a/b/k0;->Y2(Le/a/b0/a/b/c;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Le/a/a/b/n0;->f:Le/a/b0/a/b/a;

    iget-object v6, p0, Le/a/a/b/n0;->g:Le/a/x2/b;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Conversation;

    invoke-virtual {v6, v0}, Le/a/x2/b;->b(Lcom/truecaller/messaging/data/types/Conversation;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v0

    invoke-static {v1, v0, v3, v4, v5}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Le/a/a/b/n0;->e:Le/a/b0/a/b/a;

    iget-object v1, p0, Le/a/a/b/n0;->f:Le/a/b0/a/b/a;

    invoke-interface {p1, v0, v1}, Le/a/a/b/k0;->g0(Le/a/b0/a/b/c;Le/a/b0/a/b/c;)V

    .line 11
    :goto_0
    iget-object v0, p0, Le/a/a/b/n0;->h:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->P1()J

    move-result-wide v0

    .line 12
    iget-wide v4, p2, Le/a/a/g/v;->b:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    move v3, v2

    .line 13
    :cond_1
    invoke-interface {p1, v3}, Le/a/a/b/k0;->Z0(Z)V

    .line 14
    iget-object v4, p2, Le/a/a/g/v;->a:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 15
    new-instance v10, Le/a/a/b/m0;

    invoke-direct {v10, p0}, Le/a/a/b/m0;-><init>(Le/a/a/b/n0;)V

    const/16 v11, 0x1f

    invoke-static/range {v4 .. v11}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v3}, Le/a/a/b/k0;->i3(Ljava/lang/String;Z)V

    .line 16
    invoke-interface {p1, v3}, Le/a/a/b/k0;->q4(Z)V

    :cond_2
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/b/n0;->b:Le/a/a/b/i0;

    invoke-interface {v0}, Le/a/a/b/i0;->jh()Le/a/a/g/v;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    const-string v0, "ItemEvent.CLICKED"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/a/b/n0;->c:Le/a/a/b/h;

    invoke-interface {p1}, Le/a/a/b/h;->Wl()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
