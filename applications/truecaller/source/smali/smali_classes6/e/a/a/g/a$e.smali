.class public final Le/a/a/g/a$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/a;->y(Ls1/w/d;)Ljava/lang/Object;
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
        "Ljava/util/ArrayList<",
        "Lcom/truecaller/messaging/data/types/Conversation;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readArchiveConversationList$2"
    f = "ReadMessageStorage.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/g/a;


# direct methods
.method public constructor <init>(Le/a/a/g/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g/a$e;->e:Le/a/a/g/a;

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

    new-instance p1, Le/a/a/g/a$e;

    iget-object v0, p0, Le/a/a/g/a$e;->e:Le/a/a/g/a;

    invoke-direct {p1, v0, p2}, Le/a/a/g/a$e;-><init>(Le/a/a/g/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/g/a$e;

    iget-object v0, p0, Le/a/a/g/a$e;->e:Le/a/a/g/a;

    invoke-direct {p1, v0, p2}, Le/a/a/g/a$e;-><init>(Le/a/a/g/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/g/a$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/g/a$e;->e:Le/a/a/g/a;

    sget-object v0, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-static {p1, v0}, Le/a/a/g/a;->H(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;)Landroid/database/Cursor;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/a/a/g/a$e;->e:Le/a/a/g/a;

    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-static {v0, v1}, Le/a/a/g/a;->H(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;)Landroid/database/Cursor;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/a/g/a$e;->e:Le/a/a/g/a;

    sget-object v2, Lcom/truecaller/messaging/data/types/InboxTab;->SPAM:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-static {v1, v2}, Le/a/a/g/a;->H(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;)Landroid/database/Cursor;

    move-result-object v1

    .line 5
    iget-object v2, p0, Le/a/a/g/a$e;->e:Le/a/a/g/a;

    sget-object v3, Lcom/truecaller/messaging/data/types/InboxTab;->PROMOTIONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-static {v2, v3}, Le/a/a/g/a;->H(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;)Landroid/database/Cursor;

    move-result-object v2

    .line 6
    iget-object v3, p0, Le/a/a/g/a$e;->e:Le/a/a/g/a;

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v0, v4, p1

    const/4 p1, 0x2

    aput-object v1, v4, p1

    const/4 p1, 0x3

    aput-object v2, v4, p1

    invoke-static {v4}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 10
    :try_start_0
    iget-object v4, v3, Le/a/a/g/a;->d:Le/a/a/g/g;

    invoke-interface {v4, v1}, Le/a/a/g/g;->t(Landroid/database/Cursor;)Le/a/a/g/j0/a;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 11
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 12
    invoke-interface {v4}, Le/a/a/g/j0/a;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v5

    .line 13
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return-object v0
.end method
