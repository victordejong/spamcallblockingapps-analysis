.class public final Le/a/a/c/t4$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/t4;->E8(Ljava/lang/String;I)V
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
    c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$getGroupInfoByInviteKey$1"
    f = "ConversationMessagesPresenter.kt"
    l = {
        0x3bc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/t4;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Le/a/a/c/t4;Ljava/lang/String;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/t4$c;->f:Le/a/a/c/t4;

    iput-object p2, p0, Le/a/a/c/t4$c;->g:Ljava/lang/String;

    iput p3, p0, Le/a/a/c/t4$c;->h:I

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

    new-instance p1, Le/a/a/c/t4$c;

    iget-object v0, p0, Le/a/a/c/t4$c;->f:Le/a/a/c/t4;

    iget-object v1, p0, Le/a/a/c/t4$c;->g:Ljava/lang/String;

    iget v2, p0, Le/a/a/c/t4$c;->h:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/t4$c;-><init>(Le/a/a/c/t4;Ljava/lang/String;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/t4$c;

    iget-object v0, p0, Le/a/a/c/t4$c;->f:Le/a/a/c/t4;

    iget-object v1, p0, Le/a/a/c/t4$c;->g:Ljava/lang/String;

    iget v2, p0, Le/a/a/c/t4$c;->h:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/t4$c;-><init>(Le/a/a/c/t4;Ljava/lang/String;ILs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/t4$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/t4$c;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

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
    iget-object p1, p0, Le/a/a/c/t4$c;->f:Le/a/a/c/t4;

    .line 5
    iget-object p1, p1, Le/a/a/c/t4;->s0:Ls1/w/f;

    .line 6
    new-instance v1, Le/a/a/c/t4$c$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Le/a/a/c/t4$c$a;-><init>(Le/a/a/c/t4$c;Ls1/w/d;)V

    iput v2, p0, Le/a/a/c/t4$c;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;

    .line 8
    iget-object v0, p0, Le/a/a/c/t4$c;->f:Le/a/a/c/t4;

    .line 9
    iget-object v0, v0, Le/a/a/c/t4;->J:Le/a/a/c/n5;

    .line 10
    invoke-interface {v0}, Le/a/a/c/m5;->w()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Le/a/a/c/t4$c;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Le/a/a/c/t4$c;->f:Le/a/a/c/t4;

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/z4;

    if-eqz p1, :cond_3

    .line 13
    iget v0, p0, Le/a/a/c/t4$c;->h:I

    invoke-interface {p1, v0}, Le/a/a/c/z4;->A3(I)V

    .line 14
    :cond_3
    iget-object p1, p0, Le/a/a/c/t4$c;->f:Le/a/a/c/t4;

    .line 15
    iget-object p1, p1, Le/a/a/c/t4;->r:Ljava/util/HashSet;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/a/a/c/t4$c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/a/c/t4$c;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 17
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
