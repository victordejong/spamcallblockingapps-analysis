.class public final Le/a/a/c/i8$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/i8;->a()V
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
    c = "com.truecaller.messaging.conversation.UrgentMessageConversationHelperImpl$onMessagesChange$1$1"
    f = "UrgentMessageConversationHelper.kt"
    l = {
        0x66
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Le/a/a/c/i8;


# direct methods
.method public constructor <init>(Ljava/util/List;Ls1/w/d;Le/a/a/c/i8;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/i8$a;->e:Ljava/util/List;

    iput-object p3, p0, Le/a/a/c/i8$a;->f:Le/a/a/c/i8;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/a/c/i8$a;

    iget-object v0, p0, Le/a/a/c/i8$a;->e:Ljava/util/List;

    iget-object v1, p0, Le/a/a/c/i8$a;->f:Le/a/a/c/i8;

    invoke-direct {p1, v0, p2, v1}, Le/a/a/c/i8$a;-><init>(Ljava/util/List;Ls1/w/d;Le/a/a/c/i8;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/c/i8$a;->e:Ljava/util/List;

    iget-object v1, p0, Le/a/a/c/i8$a;->f:Le/a/a/c/i8;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-static {v0}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v0, :cond_0

    .line 5
    iget-wide v2, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 6
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iput-object v0, v1, Le/a/a/c/i8;->c:Ljava/lang/Long;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v1}, Le/a/a/c/i8;->d()V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, v1, Le/a/a/c/i8;->b:Ljava/util/List;

    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, v1, Le/a/a/c/i8;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    iget-object v0, v1, Le/a/a/c/i8;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Le/a/a/c/i8;->e(Ljava/lang/Boolean;)V

    .line 16
    iget-object p2, v1, Le/a/a/c/i8;->a:Le/a/a/c/k4;

    if-eqz p2, :cond_3

    iget-object v0, v1, Le/a/a/c/i8;->b:Ljava/util/List;

    invoke-interface {p2, v0}, Le/a/a/c/k4;->n6(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/c/i8$a;->f:Le/a/a/c/i8;

    iget-object v1, p0, Le/a/a/c/i8$a;->e:Ljava/util/List;

    invoke-static {v1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v1, :cond_0

    .line 3
    iget-wide v1, v1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 4
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iput-object v3, p1, Le/a/a/c/i8;->c:Ljava/lang/Long;

    .line 6
    iget-object p1, p0, Le/a/a/c/i8$a;->f:Le/a/a/c/i8;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Le/a/a/c/i8$a;->f:Le/a/a/c/i8;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p1}, Le/a/a/c/i8;->d()V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v1, p1, Le/a/a/c/i8;->b:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    iget-object v1, p1, Le/a/a/c/i8;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14
    iget-object v1, p1, Le/a/a/c/i8;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Le/a/a/c/i8;->e(Ljava/lang/Boolean;)V

    .line 16
    iget-object v0, p1, Le/a/a/c/i8;->a:Le/a/a/c/k4;

    if-eqz v0, :cond_3

    iget-object p1, p1, Le/a/a/c/i8;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Le/a/a/c/k4;->n6(Ljava/util/List;)V

    .line 17
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
