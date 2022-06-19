.class public final Le/a/a/n/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/q2/a;

.field public final b:Le/a/q2/i0;


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/q2/i0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageAnalytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/n/c;->a:Le/a/q2/a;

    iput-object p2, p0, Le/a/a/n/c;->b:Le/a/q2/i0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/truecaller/messaging/data/types/Conversation;)Le/a/q2/e0;
    .locals 1

    .line 1
    new-instance v0, Le/a/q2/e0;

    invoke-direct {v0, p1}, Le/a/q2/e0;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Le/a/c/p/a;->o1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "group"

    goto :goto_0

    :cond_0
    const-string p1, "121"

    :goto_0
    const-string p2, "peer"

    invoke-virtual {v0, p2, p1}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    return-object v0
.end method

.method public b(ZLjava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Le/a/a/g/l0/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mediaAttachments"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/n/c;->b:Le/a/q2/i0;

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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
    iget v2, v2, Le/a/a/g/l0/c;->d:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x0

    const-string v5, "mediaViewer"

    move v2, p1

    .line 8
    invoke-interface/range {v1 .. v6}, Le/a/q2/i0;->t(ZLjava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
