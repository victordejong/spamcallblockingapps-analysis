.class public Le/a/a/h1/n/h;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/o2/b;
.implements Le/a/o2/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/h1/n/g;",
        ">;",
        "Le/a/a/h1/n/h;"
    }
.end annotation


# instance fields
.field public b:Z

.field public final c:Le/a/a/h1/n/f;

.field public final d:Le/a/a/h1/n/b;

.field public final e:Le/a/a/h1/n/d;

.field public final f:Le/a/a/h1/n/e;

.field public final g:Le/a/a/h1/g;


# direct methods
.method public constructor <init>(Le/a/a/h1/n/f;Le/a/a/h1/n/b;Le/a/a/h1/n/d;Le/a/a/h1/n/e;Le/a/a/h1/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarPresenterFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarConfigProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemActionListener"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expiryHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/h1/n/h;->c:Le/a/a/h1/n/f;

    iput-object p2, p0, Le/a/a/h1/n/h;->d:Le/a/a/h1/n/b;

    iput-object p3, p0, Le/a/a/h1/n/h;->e:Le/a/a/h1/n/d;

    iput-object p4, p0, Le/a/a/h1/n/h;->f:Le/a/a/h1/n/e;

    iput-object p5, p0, Le/a/a/h1/n/h;->g:Le/a/a/h1/g;

    return-void
.end method


# virtual methods
.method public A(I)Lcom/truecaller/messaging/urgent/UrgentConversation;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/h1/n/h;->c:Le/a/a/h1/n/f;

    invoke-interface {v0}, Le/a/a/h1/n/f;->Ga()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Le/a/a/h1/n/h;->b:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 3
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/messaging/urgent/UrgentConversation;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 6

    .line 1
    check-cast p1, Le/a/a/h1/n/g;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p2}, Le/a/a/h1/n/h;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1, v1}, Le/a/a/h1/n/g;->E4(Le/a/b0/a/b/c;)V

    .line 5
    iget-object p2, p0, Le/a/a/h1/n/h;->c:Le/a/a/h1/n/f;

    invoke-interface {p2}, Le/a/a/h1/n/f;->Ca()J

    move-result-wide v0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    move v5, v4

    :cond_0
    invoke-interface {p1, v5}, Le/a/a/h1/n/g;->U1(Z)V

    .line 6
    iget-object p2, p0, Le/a/a/h1/n/h;->c:Le/a/a/h1/n/f;

    invoke-interface {p2}, Le/a/a/h1/n/f;->Ga()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x3

    invoke-interface {p1, p2}, Le/a/a/h1/n/g;->r2(I)V

    .line 7
    invoke-interface {p1, v4}, Le/a/a/h1/n/g;->S0(Z)V

    .line 8
    invoke-interface {p1}, Le/a/a/h1/n/g;->J()V

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {p0, p2}, Le/a/a/h1/n/h;->A(I)Lcom/truecaller/messaging/urgent/UrgentConversation;

    move-result-object p2

    .line 10
    iget-object v0, p0, Le/a/a/h1/n/h;->d:Le/a/a/h1/n/b;

    check-cast v0, Le/a/a/h1/n/c;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "view"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {p1}, Le/a/a/h1/n/b$a;->o()Le/a/b0/a/b/a;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Le/a/b0/a/b/a;

    iget-object v0, v0, Le/a/a/h1/n/c;->a:Le/a/p5/h0;

    invoke-direct {v2, v0}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    .line 13
    :goto_0
    iget-object v0, p0, Le/a/a/h1/n/h;->e:Le/a/a/h1/n/d;

    .line 14
    iget-object v3, p2, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 15
    invoke-virtual {v0, v3}, Le/a/a/h1/n/d;->a(Ljava/lang/Object;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v0

    const/4 v3, 0x2

    .line 16
    invoke-static {v2, v0, v5, v3, v1}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 17
    invoke-interface {p1, v2}, Le/a/a/h1/n/g;->E4(Le/a/b0/a/b/c;)V

    .line 18
    iget-object v0, p2, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 19
    iget-wide v0, v0, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    iget-object v2, p0, Le/a/a/h1/n/h;->c:Le/a/a/h1/n/f;

    invoke-interface {v2}, Le/a/a/h1/n/f;->Ca()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    invoke-interface {p1, v4}, Le/a/a/h1/n/g;->U1(Z)V

    .line 20
    iget v0, p2, Lcom/truecaller/messaging/urgent/UrgentConversation;->b:I

    .line 21
    invoke-interface {p1, v0}, Le/a/a/h1/n/g;->r2(I)V

    .line 22
    invoke-interface {p1, v5}, Le/a/a/h1/n/g;->S0(Z)V

    .line 23
    iget-wide v0, p2, Lcom/truecaller/messaging/urgent/UrgentConversation;->c:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_4

    .line 24
    invoke-interface {p1}, Le/a/a/h1/n/g;->J()V

    goto :goto_2

    .line 25
    :cond_4
    iget-object p2, p0, Le/a/a/h1/n/h;->g:Le/a/a/h1/g;

    invoke-virtual {p2}, Le/a/a/h1/g;->a()J

    move-result-wide v2

    .line 26
    invoke-interface {p1, v0, v1, v2, v3}, Le/a/a/h1/n/g;->t(JJ)V

    :goto_2
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/a/h1/n/h;->b:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/h1/n/h;->c:Le/a/a/h1/n/f;

    invoke-interface {v0}, Le/a/a/h1/n/f;->Ga()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/a/h1/n/h;->c:Le/a/a/h1/n/f;

    invoke-interface {v0}, Le/a/a/h1/n/f;->Ga()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/a/h1/n/h;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/a/h1/n/h;->c:Le/a/a/h1/n/f;

    invoke-interface {v0}, Le/a/a/h1/n/f;->Ga()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const-wide/16 v0, -0x2

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le/a/a/h1/n/h;->A(I)Lcom/truecaller/messaging/urgent/UrgentConversation;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 4
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    return-wide v0
.end method

.method public o(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/a/h1/n/g;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Le/a/a/h1/n/g;->J()V

    return-void
.end method

.method public v(Le/a/o2/h;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    const-string v1, "ItemEvent.CLICKED"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget v0, p1, Le/a/o2/h;->b:I

    .line 4
    invoke-virtual {p0, v0}, Le/a/a/h1/n/h;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5
    iget-object p1, p0, Le/a/a/h1/n/h;->f:Le/a/a/h1/n/e;

    invoke-interface {p1}, Le/a/a/h1/n/e;->r5()V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/a/h1/n/h;->f:Le/a/a/h1/n/e;

    .line 7
    iget p1, p1, Le/a/o2/h;->b:I

    .line 8
    iget-boolean v2, p0, Le/a/a/h1/n/h;->b:Z

    if-ne v2, v1, :cond_1

    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 9
    :goto_0
    invoke-interface {v0, p1}, Le/a/a/h1/n/e;->S6(I)V

    :goto_1
    return v1

    .line 10
    :cond_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
