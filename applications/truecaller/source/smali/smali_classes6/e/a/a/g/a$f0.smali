.class public final Le/a/a/g/a$f0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/a;->o(Lcom/truecaller/messaging/data/types/InboxTab;Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/a/g/j0/a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readUnreadConversationCursor$2"
    f = "ReadMessageStorage.kt"
    l = {
        0x1be
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/g/a;

.field public final synthetic g:Lcom/truecaller/messaging/data/types/InboxTab;

.field public final synthetic h:Ljava/util/Set;


# direct methods
.method public constructor <init>(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/util/Set;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g/a$f0;->f:Le/a/a/g/a;

    iput-object p2, p0, Le/a/a/g/a$f0;->g:Lcom/truecaller/messaging/data/types/InboxTab;

    iput-object p3, p0, Le/a/a/g/a$f0;->h:Ljava/util/Set;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/a/g/a$f0;

    iget-object v0, p0, Le/a/a/g/a$f0;->f:Le/a/a/g/a;

    iget-object v1, p0, Le/a/a/g/a$f0;->g:Lcom/truecaller/messaging/data/types/InboxTab;

    iget-object v2, p0, Le/a/a/g/a$f0;->h:Ljava/util/Set;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/g/a$f0;-><init>(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/util/Set;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/g/a$f0;

    iget-object v0, p0, Le/a/a/g/a$f0;->f:Le/a/a/g/a;

    iget-object v1, p0, Le/a/a/g/a$f0;->g:Lcom/truecaller/messaging/data/types/InboxTab;

    iget-object v2, p0, Le/a/a/g/a$f0;->h:Ljava/util/Set;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/g/a$f0;-><init>(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/util/Set;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/g/a$f0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/g/a$f0;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object v1, p0, Le/a/a/g/a$f0;->f:Le/a/a/g/a;

    .line 6
    iget-boolean v1, v1, Le/a/a/g/a;->h:Z

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Le/a/a/g/a$f0;->g:Lcom/truecaller/messaging/data/types/InboxTab;

    sget-object v3, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    if-eq v1, v3, :cond_3

    :cond_2
    const/16 v1, 0x28

    invoke-static {v1}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Le/a/a/g/a$f0;->f:Le/a/a/g/a;

    .line 8
    iget-object v3, v3, Le/a/a/g/a;->f:Le/a/a/g/x;

    .line 9
    iget-object v4, p0, Le/a/a/g/a$f0;->g:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {v3, v4}, Le/a/a/g/x;->a(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_3
    iget-object v1, p0, Le/a/a/g/a$f0;->f:Le/a/a/g/a;

    .line 11
    iget-object v1, v1, Le/a/a/g/a;->a:Ljava/lang/String;

    const-string v3, " AND "

    const-string v4, "(unread_messages_count > 0 OR marked_unread = 1)"

    .line 12
    invoke-static {p1, v1, v3, v4}, Le/d/c/a/a;->S0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Le/a/a/g/a$f0;->h:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_4

    const-string v1, " OR "

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le/a/a/g/a$f0;->h:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Le/a/a/g/a$f0$a;->b:Le/a/a/g/a$f0$a;

    const/16 v11, 0x1f

    invoke-static/range {v4 .. v11}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v6, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Le/a/a/g/a$f0;->f:Le/a/a/g/a;

    .line 18
    iget-boolean p1, p1, Le/a/a/g/a;->h:Z

    if-eqz p1, :cond_5

    .line 19
    iget-object v1, p0, Le/a/a/g/a$f0;->g:Lcom/truecaller/messaging/data/types/InboxTab;

    sget-object v3, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    if-ne v1, v3, :cond_5

    invoke-static {p1}, Le/a/b0/q/g0;->l(Z)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_5
    iget-object p1, p0, Le/a/a/g/a$f0;->g:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/InboxTab;->getConversationFilter()I

    move-result p1

    invoke-static {p1}, Le/a/b0/q/g0;->f(I)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    move-object v4, p1

    .line 21
    iget-object p1, p0, Le/a/a/g/a$f0;->f:Le/a/a/g/a;

    .line 22
    iget-object v3, p1, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    .line 23
    iget-object p1, p0, Le/a/a/g/a$f0;->h:Ljava/util/Set;

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {p1, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 26
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 27
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 28
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, [Ljava/lang/String;

    .line 29
    iget-object p1, p0, Le/a/a/g/a$f0;->f:Le/a/a/g/a;

    .line 30
    iget-object v8, p1, Le/a/a/g/a;->b:Ljava/lang/String;

    .line 31
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 32
    iget-object v1, p0, Le/a/a/g/a$f0;->f:Le/a/a/g/a;

    .line 33
    iget-object v1, v1, Le/a/a/g/a;->d:Le/a/a/g/g;

    .line 34
    invoke-interface {v1, p1}, Le/a/a/g/g;->t(Landroid/database/Cursor;)Le/a/a/g/j0/a;

    move-result-object p1

    if-eqz p1, :cond_8

    iput v2, p0, Le/a/a/g/a$f0;->e:I

    invoke-static {p1, p0}, Le/a/p5/s0/g;->r(Ljava/io/Closeable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    check-cast p1, Le/a/a/g/j0/a;

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    :goto_3
    return-object p1
.end method
