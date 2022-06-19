.class public final Le/a/a/n/j/v;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/n/j/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/n/j/t;",
        ">;",
        "Le/a/a/n/j/s;"
    }
.end annotation


# instance fields
.field public d:Le/a/a/g/j0/o;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/a/g/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/truecaller/messaging/mediamanager/SortOption;

.field public g:J

.field public h:Z

.field public i:J

.field public final j:Le/a/a/n/j/u;

.field public final k:Ls1/g;

.field public final l:Ls1/w/f;

.field public final m:Lcom/truecaller/messaging/data/types/Conversation;

.field public final n:Lcom/truecaller/messaging/mediamanager/AttachmentType;

.field public final o:Z

.field public final p:Landroid/content/ContentResolver;

.field public final q:Le/a/a/c/s8/j;

.field public final r:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Le/a/a/i1/d;

.field public final t:Le/a/a/n/h;

.field public final u:Le/a/a/c/p5;

.field public final v:Le/a/a/g/k0/b;

.field public final w:Le/a/a/n/c;

.field public final x:Le/a/p5/c;

.field public final y:Le/a/a/i0;


# direct methods
.method public constructor <init>(Ls1/w/f;Lcom/truecaller/messaging/data/types/Conversation;Lcom/truecaller/messaging/mediamanager/AttachmentType;ZLandroid/content/ContentResolver;Le/a/a/c/s8/j;Le/a/r2/f;Le/a/a/i1/d;Le/a/a/n/h;Le/a/a/c/p5;Le/a/a/g/k0/b;Le/a/a/n/c;Le/a/p5/c;Le/a/a/i0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "is_delete_mode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "Lcom/truecaller/messaging/mediamanager/AttachmentType;",
            "Z",
            "Landroid/content/ContentResolver;",
            "Le/a/a/c/s8/j;",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;",
            "Le/a/a/i1/d;",
            "Le/a/a/n/h;",
            "Le/a/a/c/p5;",
            "Le/a/a/g/k0/b;",
            "Le/a/a/n/c;",
            "Le/a/p5/c;",
            "Le/a/a/i0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversation"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentType"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerAdapter"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesStorage"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingActionHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageAttachmentFetcher"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationUtil"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentsHelper"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/n/j/v;->l:Ls1/w/f;

    iput-object p2, p0, Le/a/a/n/j/v;->m:Lcom/truecaller/messaging/data/types/Conversation;

    iput-object p3, p0, Le/a/a/n/j/v;->n:Lcom/truecaller/messaging/mediamanager/AttachmentType;

    iput-boolean p4, p0, Le/a/a/n/j/v;->o:Z

    iput-object p5, p0, Le/a/a/n/j/v;->p:Landroid/content/ContentResolver;

    iput-object p6, p0, Le/a/a/n/j/v;->q:Le/a/a/c/s8/j;

    iput-object p7, p0, Le/a/a/n/j/v;->r:Le/a/r2/f;

    iput-object p8, p0, Le/a/a/n/j/v;->s:Le/a/a/i1/d;

    iput-object p9, p0, Le/a/a/n/j/v;->t:Le/a/a/n/h;

    iput-object p10, p0, Le/a/a/n/j/v;->u:Le/a/a/c/p5;

    iput-object p11, p0, Le/a/a/n/j/v;->v:Le/a/a/g/k0/b;

    iput-object p12, p0, Le/a/a/n/j/v;->w:Le/a/a/n/c;

    iput-object p13, p0, Le/a/a/n/j/v;->x:Le/a/p5/c;

    iput-object p14, p0, Le/a/a/n/j/v;->y:Le/a/a/i0;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    .line 3
    sget-object p1, Lcom/truecaller/messaging/mediamanager/SortOption;->DATE_DESC:Lcom/truecaller/messaging/mediamanager/SortOption;

    iput-object p1, p0, Le/a/a/n/j/v;->f:Lcom/truecaller/messaging/mediamanager/SortOption;

    const-wide/16 p1, -0x1

    .line 4
    iput-wide p1, p0, Le/a/a/n/j/v;->g:J

    .line 5
    new-instance p1, Le/a/a/n/j/u;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Le/a/a/n/j/u;-><init>(Le/a/a/n/j/v;Landroid/os/Handler;)V

    iput-object p1, p0, Le/a/a/n/j/v;->j:Le/a/a/n/j/u;

    .line 6
    new-instance p1, Le/a/a/n/j/x;

    invoke-direct {p1, p0}, Le/a/a/n/j/x;-><init>(Le/a/a/n/j/v;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/n/j/v;->k:Ls1/g;

    return-void
.end method


# virtual methods
.method public If()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final Ij()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Le/a/a/g/l0/c;

    .line 5
    iget-wide v2, v2, Le/a/a/g/l0/c;->a:J

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final Jj()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Le/a/a/n/j/v;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "message_transport = 2"

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    new-instance v5, Le/a/a/n/j/v$a;

    invoke-direct {v5, p0, v0, v1}, Le/a/a/n/j/v$a;-><init>(Le/a/a/n/j/v;Ljava/lang/String;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final Kj(Le/a/a/g/l0/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/n/j/t;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/n/j/t;->g()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    .line 3
    iget-wide v1, p1, Le/a/a/g/l0/c;->f:J

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    .line 6
    iget-wide v1, p1, Le/a/a/g/l0/c;->f:J

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    .line 9
    iget-wide v1, p1, Le/a/a/g/l0/c;->f:J

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :goto_0
    iget-object p1, p0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/n/j/t;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/a/n/j/t;->e()V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/n/j/t;

    if-eqz p1, :cond_3

    iget-object v0, p0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/n/j/t;->T0(Ljava/lang/String;)V

    .line 14
    :cond_3
    :goto_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/n/j/t;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/a/n/j/t;->c0()V

    .line 15
    :cond_4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/n/j/t;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/a/n/j/t;->u1()V

    :cond_5
    return-void
.end method

.method public Lg()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/n/j/t;

    if-eqz v0, :cond_1

    iget-object v1, p0, Le/a/a/n/j/v;->f:Lcom/truecaller/messaging/mediamanager/SortOption;

    iget-object v2, p0, Le/a/a/n/j/v;->n:Lcom/truecaller/messaging/mediamanager/AttachmentType;

    sget-object v3, Lcom/truecaller/messaging/mediamanager/AttachmentType;->LINK:Lcom/truecaller/messaging/mediamanager/AttachmentType;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1, v2}, Le/a/a/n/j/t;->Dc(Lcom/truecaller/messaging/mediamanager/SortOption;Z)V

    :cond_1
    return-void
.end method

.method public final Lj(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/n/j/v;->r:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    .line 2
    invoke-virtual {p0}, Le/a/a/n/j/v;->Ij()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ls1/u/i;->U0(Ljava/util/Collection;)[J

    move-result-object v1

    invoke-interface {v0, v1, p1}, Le/a/a/g/m;->n([JZ)Le/a/r2/x;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Le/a/r2/x;->g()V

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/n/j/t;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/a/n/j/t;->e()V

    :cond_0
    return-void
.end method

.method public R9(Le/a/a/g/l0/c;)Z
    .locals 1

    const-string v0, "attachment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/n/j/v;->Kj(Le/a/a/g/l0/c;)V

    const/4 p1, 0x1

    return p1
.end method

.method public Ze(Lcom/truecaller/messaging/mediamanager/SortOption;)V
    .locals 1

    const-string v0, "option"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/a/n/j/v;->f:Lcom/truecaller/messaging/mediamanager/SortOption;

    .line 2
    invoke-virtual {p0}, Le/a/a/n/j/v;->Jj()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/a/n/j/v;->d:Le/a/a/g/j0/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/a/n/j/v;->d:Le/a/a/g/j0/o;

    return-void
.end method

.method public c8()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/a/n/j/v;->o:Z

    return v0
.end method

.method public d(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    sparse-switch v1, :sswitch_data_0

    .line 1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown action"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const-string v2, "markAsNotImportant"

    goto :goto_0

    :sswitch_1
    const-string v2, "showInChat"

    goto :goto_0

    :sswitch_2
    const-string v2, "selectAll"

    goto :goto_0

    :sswitch_3
    const-string v2, "markAsImportant"

    goto :goto_0

    :sswitch_4
    const-string v2, "forward"

    goto :goto_0

    :sswitch_5
    const-string v2, "delete"

    .line 2
    :goto_0
    iget-object v3, v0, Le/a/a/n/j/v;->w:Le/a/a/n/c;

    iget-object v4, v0, Le/a/a/n/j/v;->m:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v5, v0, Le/a/a/n/j/v;->n:Lcom/truecaller/messaging/mediamanager/AttachmentType;

    iget-object v6, v0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    .line 3
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "conversation"

    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "type"

    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "action"

    invoke-static {v2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "MediaManagerAction"

    .line 4
    invoke-virtual {v3, v8, v4}, Le/a/a/n/c;->a(Ljava/lang/String;Lcom/truecaller/messaging/data/types/Conversation;)Le/a/q2/e0;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v7, v2}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 6
    invoke-static {v5}, Le/a/c/p/a;->t(Lcom/truecaller/messaging/mediamanager/AttachmentType;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "tab"

    invoke-virtual {v4, v5, v2}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 7
    iget-object v2, v4, Le/a/q2/e0;->b:Ljava/util/Map;

    int-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "value"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v4}, Le/a/q2/e0;->a()Le/a/l5/a/p3;

    move-result-object v2

    .line 9
    iget-object v3, v3, Le/a/a/n/c;->a:Le/a/q2/a;

    invoke-interface {v3, v2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    const v2, 0x7f0a00c5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x7f0a00ef

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v2, v0, Le/a/a/n/j/v;->w:Le/a/a/n/c;

    iget-object v5, v0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Le/a/a/n/c;->b(ZLjava/util/Collection;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v2, v0, Le/a/a/n/j/v;->w:Le/a/a/n/c;

    iget-object v5, v0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Le/a/a/n/c;->b(ZLjava/util/Collection;)V

    :goto_1
    sparse-switch v1, :sswitch_data_1

    goto/16 :goto_10

    .line 12
    :sswitch_6
    invoke-virtual {v0, v3}, Le/a/a/n/j/v;->Lj(Z)V

    goto/16 :goto_10

    .line 13
    :sswitch_7
    iget-object v1, v0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ls1/u/i;->C(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/l0/c;

    if-eqz v1, :cond_14

    .line 14
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a/n/j/t;

    if-eqz v2, :cond_2

    iget-object v3, v0, Le/a/a/n/j/v;->m:Lcom/truecaller/messaging/data/types/Conversation;

    iget-wide v3, v3, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 15
    iget-wide v5, v1, Le/a/a/g/l0/c;->a:J

    .line 16
    invoke-interface {v2, v3, v4, v5, v6}, Le/a/a/n/j/t;->y3(JJ)V

    .line 17
    :cond_2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/n/j/t;

    if-eqz v1, :cond_14

    invoke-interface {v1}, Le/a/a/n/j/t;->e()V

    goto/16 :goto_10

    .line 18
    :sswitch_8
    iget-object v1, v0, Le/a/a/n/j/v;->d:Le/a/a/g/j0/o;

    if-eqz v1, :cond_3

    const/4 v2, -0x1

    .line 19
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 20
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 21
    invoke-interface {v1}, Le/a/a/g/j0/o;->f2()Le/a/a/g/l0/c;

    move-result-object v2

    .line 22
    iget-object v3, v0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    .line 23
    iget-wide v4, v2, Le/a/a/g/l0/c;->f:J

    .line 24
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 25
    :cond_3
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/n/j/t;

    if-eqz v1, :cond_4

    iget-object v2, v0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/a/n/j/t;->T0(Ljava/lang/String;)V

    .line 26
    :cond_4
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/n/j/t;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Le/a/a/n/j/t;->u1()V

    .line 27
    :cond_5
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/n/j/t;

    if-eqz v1, :cond_14

    invoke-interface {v1}, Le/a/a/n/j/t;->c0()V

    goto/16 :goto_10

    .line 28
    :sswitch_9
    invoke-virtual {v0, v4}, Le/a/a/n/j/v;->Lj(Z)V

    goto/16 :goto_10

    .line 29
    :sswitch_a
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/n/j/t;

    if-eqz v1, :cond_13

    iget-object v2, v0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 30
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 32
    check-cast v6, Le/a/a/g/l0/c;

    .line 33
    iget-object v7, v0, Le/a/a/n/j/v;->m:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v8, v0, Le/a/a/n/j/v;->y:Le/a/a/i0;

    invoke-interface {v8}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v8

    .line 34
    iget-object v9, v6, Le/a/a/g/l0/c;->r:Ljava/lang/String;

    if-eqz v9, :cond_6

    move-object v12, v9

    goto :goto_4

    :cond_6
    const-string v10, ""

    move-object v12, v10

    :goto_4
    if-eqz v9, :cond_8

    .line 35
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    goto :goto_5

    :cond_7
    move v9, v3

    goto :goto_6

    :cond_8
    :goto_5
    move v9, v4

    :goto_6
    if-eqz v9, :cond_9

    invoke-static {v6}, Le/a/c/p/a;->R2(Le/a/a/g/l0/c;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v9

    move-object v14, v9

    goto :goto_7

    :cond_9
    const/4 v14, 0x0

    .line 36
    :goto_7
    iget v15, v6, Le/a/a/g/l0/c;->d:I

    .line 37
    iget-object v9, v6, Le/a/a/g/l0/c;->y:Ljava/lang/String;

    if-eqz v9, :cond_f

    .line 38
    iget v11, v6, Le/a/a/g/l0/c;->c:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_a

    goto :goto_8

    .line 39
    :cond_a
    iget-object v8, v6, Le/a/a/g/l0/c;->z:Ljava/lang/String;

    .line 40
    :goto_8
    iget-object v7, v7, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v11, "conversation.participants"

    invoke-static {v7, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v11, v7

    move v13, v3

    :goto_9
    if-ge v13, v11, :cond_d

    aget-object v3, v7, v13

    iget v4, v3, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v10, 0x4

    if-ne v4, v10, :cond_b

    const/4 v4, 0x1

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_c

    goto :goto_b

    :cond_c
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    iget-object v3, v3, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    goto :goto_c

    :cond_e
    const/4 v3, 0x0

    .line 41
    :goto_c
    iget-object v4, v6, Le/a/a/g/l0/c;->A:Ljava/lang/String;

    .line 42
    new-instance v7, Lcom/truecaller/messaging/data/types/ImForwardInfo;

    invoke-direct {v7, v9, v8, v3, v4}, Lcom/truecaller/messaging/data/types/ImForwardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_f
    const/4 v7, 0x0

    .line 43
    :goto_d
    iget v3, v6, Le/a/a/g/l0/c;->d:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    const/4 v3, 0x1

    goto :goto_e

    :cond_10
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_11

    move-object/from16 v17, v7

    goto :goto_f

    :cond_11
    const/16 v17, 0x0

    .line 44
    :goto_f
    new-instance v3, Lcom/truecaller/messaging/ForwardContentItem;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcom/truecaller/messaging/ForwardContentItem;-><init>(Ljava/lang/String;ZLcom/truecaller/messaging/data/types/BinaryEntity;ILjava/util/List;Lcom/truecaller/messaging/data/types/ImForwardInfo;)V

    .line 45
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_12
    invoke-interface {v1, v5}, Le/a/a/n/j/t;->mk(Ljava/util/List;)V

    .line 46
    :cond_13
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/n/j/t;

    if-eqz v1, :cond_14

    invoke-interface {v1}, Le/a/a/n/j/t;->e()V

    goto :goto_10

    .line 47
    :sswitch_b
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/n/j/t;

    if-eqz v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Le/a/a/n/j/v;->Ij()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {v1, v2}, Le/a/a/n/j/t;->Mw(I)V

    :cond_14
    :goto_10
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00a5 -> :sswitch_5
        0x7f0a00b7 -> :sswitch_4
        0x7f0a00c5 -> :sswitch_3
        0x7f0a00e3 -> :sswitch_2
        0x7f0a00e7 -> :sswitch_1
        0x7f0a00ef -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7f0a00a5 -> :sswitch_b
        0x7f0a00b7 -> :sswitch_a
        0x7f0a00c5 -> :sswitch_9
        0x7f0a00e3 -> :sswitch_8
        0x7f0a00e7 -> :sswitch_7
        0x7f0a00ef -> :sswitch_6
    .end sparse-switch
.end method

.method public ja()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/a/n/j/v;->h:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le/a/a/n/j/v;->g:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public me()V
    .locals 6

    .line 1
    new-instance v3, Le/a/a/n/j/v$c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/a/n/j/v$c;-><init>(Le/a/a/n/j/v;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public o8(Le/a/a/g/l0/c;)Z
    .locals 8

    const-string v0, "attachment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Le/a/a/n/j/v;->Kj(Le/a/a/g/l0/c;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p1, Le/a/a/g/l0/c;->g:Ljava/lang/String;

    const-string v2, "contentType"

    .line 4
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v2, Lcom/truecaller/messaging/data/types/Entity;->g:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 6
    invoke-static {v0, v6, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_1
    if-eqz v0, :cond_4

    .line 7
    iget-object p1, p1, Le/a/a/g/l0/c;->x:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/n/j/t;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Le/a/a/n/j/t;->b(Ljava/lang/String;)V

    :cond_3
    return v1

    .line 9
    :cond_4
    iget-object v0, p1, Le/a/a/g/l0/c;->r:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move v4, v1

    :cond_6
    if-nez v4, :cond_8

    .line 11
    iget-object p1, p1, Le/a/a/g/l0/c;->x:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 12
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/n/j/t;

    if-eqz p1, :cond_7

    invoke-interface {p1, v0}, Le/a/a/n/j/t;->b(Ljava/lang/String;)V

    :cond_7
    return v1

    .line 13
    :cond_8
    iget v0, p1, Le/a/a/g/l0/c;->i:I

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 14
    new-instance v5, Le/a/a/n/j/v$b;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Le/a/a/n/j/v$b;-><init>(Le/a/a/n/j/v;Le/a/a/g/l0/c;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return v1
.end method

.method public onPause()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/n/j/v;->x:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v0

    iget-wide v2, p0, Le/a/a/n/j/v;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/n/j/v;->w:Le/a/a/n/c;

    iget-object v1, p0, Le/a/a/n/j/v;->m:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v2, p0, Le/a/a/n/j/v;->n:Lcom/truecaller/messaging/mediamanager/AttachmentType;

    invoke-virtual {p0}, Le/a/a/n/j/v;->ph()I

    move-result v3

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "conversation"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "type"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "MediaManagerTabVisited"

    .line 4
    invoke-virtual {v0, v4, v1}, Le/a/a/n/c;->a(Ljava/lang/String;Lcom/truecaller/messaging/data/types/Conversation;)Le/a/q2/e0;

    move-result-object v1

    .line 5
    invoke-static {v2}, Le/a/c/p/a;->t(Lcom/truecaller/messaging/mediamanager/AttachmentType;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "tab"

    invoke-virtual {v1, v4, v2}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 6
    iget-object v2, v1, Le/a/q2/e0;->b:Ljava/util/Map;

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "value"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Le/a/q2/e0;->a()Le/a/l5/a/p3;

    move-result-object v1

    .line 8
    iget-object v0, v0, Le/a/a/n/c;->a:Le/a/q2/a;

    invoke-interface {v0, v1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 9
    iput-wide v0, p0, Le/a/a/n/j/v;->i:J

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/n/j/v;->x:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/a/n/j/v;->i:J

    .line 2
    iget-boolean v0, p0, Le/a/a/n/j/v;->o:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/truecaller/messaging/mediamanager/SortOption;->SIZE_DESC:Lcom/truecaller/messaging/mediamanager/SortOption;

    iput-object v0, p0, Le/a/a/n/j/v;->f:Lcom/truecaller/messaging/mediamanager/SortOption;

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/a/a/n/j/v;->Jj()V

    .line 5
    iget-object v0, p0, Le/a/a/n/j/v;->p:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Le/a/a/n/j/v;->j:Le/a/a/n/j/u;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/n/j/v;->p:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/a/n/j/v;->j:Le/a/a/n/j/u;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2
    iget-object v0, p0, Le/a/a/n/j/v;->q:Le/a/a/c/s8/j;

    invoke-interface {v0}, Le/a/a/c/s8/j;->release()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/a/a/n/j/v;->h:Z

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Le/a/a/n/j/v;->g:J

    .line 5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/n/j/t;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/n/j/t;->e()V

    :cond_0
    return-void
.end method

.method public ph()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/v;->d:Le/a/a/g/j0/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    goto/16 :goto_2

    .line 1
    :sswitch_0
    iget-object p1, p0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 2
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/l0/c;

    .line 4
    iget-boolean v2, v2, Le/a/a/g/l0/c;->e:Z

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 5
    :sswitch_1
    iget-object p1, p0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne p1, v1, :cond_8

    goto :goto_0

    .line 6
    :sswitch_2
    iget-boolean p1, p0, Le/a/a/n/j/v;->o:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget-object v2, p0, Le/a/a/n/j/v;->d:Le/a/a/g/j0/o;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eq p1, v2, :cond_8

    goto :goto_0

    .line 7
    :sswitch_3
    iget-object p1, p0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 8
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/l0/c;

    .line 10
    iget-boolean v2, v2, Le/a/a/g/l0/c;->e:Z

    if-eqz v2, :cond_4

    goto :goto_2

    .line 11
    :sswitch_4
    iget-object p1, p0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 12
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/l0/c;

    .line 14
    iget v2, v2, Le/a/a/g/l0/c;->i:I

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_1

    :cond_7
    move v2, v0

    :goto_1
    if-nez v2, :cond_6

    :cond_8
    :goto_2
    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f0a00b7 -> :sswitch_4
        0x7f0a00c5 -> :sswitch_3
        0x7f0a00e3 -> :sswitch_2
        0x7f0a00e7 -> :sswitch_1
        0x7f0a00ef -> :sswitch_0
    .end sparse-switch
.end method

.method public v7()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/n/j/t;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/n/j/t;->finish()V

    :cond_0
    return-void
.end method

.method public yg(Le/a/a/g/l0/c;)Z
    .locals 8

    const-string v0, "attachment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/c/p/a;->j1(Le/a/a/g/l0/c;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    new-instance v5, Le/a/a/n/j/v$d;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Le/a/a/n/j/v$d;-><init>(Le/a/a/n/j/v;Le/a/a/g/l0/c;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return v1
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/n/j/t;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/n/j/t;->c0()V

    :cond_0
    return-void
.end method

.method public zc(I)Le/a/a/g/l0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/v;->d:Le/a/a/g/j0/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3
    invoke-interface {v0}, Le/a/a/g/j0/o;->f2()Le/a/a/g/l0/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
