.class public final Le/a/a/c/o/i$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/o/i;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.conversation.notifications.ConversationNotificationsManagerImpl$migrateConversationsWithCustomSoundIfNeeded$1"
    f = "ConversationNotificationsManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/c/o/i;


# direct methods
.method public constructor <init>(Le/a/a/c/o/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/o/i$a;->e:Le/a/a/c/o/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/o/i$a;

    iget-object v0, p0, Le/a/a/c/o/i$a;->e:Le/a/a/c/o/i;

    invoke-direct {p1, v0, p2}, Le/a/a/c/o/i$a;-><init>(Le/a/a/c/o/i;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/o/i$a;

    iget-object v0, p0, Le/a/a/c/o/i$a;->e:Le/a/a/c/o/i;

    invoke-direct {p1, v0, p2}, Le/a/a/c/o/i$a;-><init>(Le/a/a/c/o/i;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/o/i$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/c/o/i$a;->e:Le/a/a/c/o/i;

    .line 3
    iget-object v0, p1, Le/a/a/c/o/i;->d:Landroid/content/ContentResolver;

    .line 4
    invoke-static {}, Le/a/b0/q/g0;->n()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "sound_uri IS NOT NULL"

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 6
    iget-object v0, p0, Le/a/a/c/o/i$a;->e:Le/a/a/c/o/i;

    .line 7
    iget-object v0, v0, Le/a/a/c/o/i;->f:Le/a/a/g/g;

    .line 8
    invoke-interface {v0, p1}, Le/a/a/g/g;->t(Landroid/database/Cursor;)Le/a/a/g/j0/a;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 9
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {p1}, Le/a/a/g/j0/a;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-static {p1, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Conversation;

    .line 14
    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Conversation;->Q:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_3

    .line 15
    iget-object v3, p0, Le/a/a/c/o/i$a;->e:Le/a/a/c/o/i;

    .line 16
    iget-object v3, v3, Le/a/a/c/o/i;->a:Landroid/content/Context;

    .line 17
    invoke-static {v2, v3}, Le/a/p5/s0/f;->g(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v3

    .line 18
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v1

    .line 19
    :goto_3
    invoke-static {v3}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    iget-object v3, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v4, "it.participants"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/a/i1/h;->e([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 21
    iget-object v3, p0, Le/a/a/c/o/i$a;->e:Le/a/a/c/o/i;

    .line 22
    iget-object v4, v3, Le/a/a/c/o/i;->e:Le/a/h4/a;

    .line 23
    invoke-virtual {v3, v0}, Le/a/a/c/o/i;->g(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Conversation;->a()Ljava/lang/String;

    move-result-object v0

    const-string v5, "it.participantsText"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v5, p0, Le/a/a/c/o/i$a;->e:Le/a/a/c/o/i;

    .line 26
    iget-object v5, v5, Le/a/a/c/o/i;->i:Le/a/a/i0;

    .line 27
    invoke-interface {v5}, Le/a/a/i0;->I2()Z

    move-result v5

    .line 28
    invoke-interface {v4, v3, v0, v2, v5}, Le/a/h4/a;->g(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_1

    .line 29
    :cond_4
    iget-object v2, p0, Le/a/a/c/o/i$a;->e:Le/a/a/c/o/i;

    iget-wide v3, v0, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    const-string v0, "sound_uri"

    .line 30
    invoke-virtual {v2, v3, v4, v0, v1}, Le/a/a/c/o/i;->h(JLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 31
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 32
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
