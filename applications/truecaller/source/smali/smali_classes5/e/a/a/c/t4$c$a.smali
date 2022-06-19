.class public final Le/a/a/c/t4$c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/t4$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$getGroupInfoByInviteKey$1$info$1"
    f = "ConversationMessagesPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/c/t4$c;


# direct methods
.method public constructor <init>(Le/a/a/c/t4$c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/t4$c$a;->e:Le/a/a/c/t4$c;

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

    new-instance p1, Le/a/a/c/t4$c$a;

    iget-object v0, p0, Le/a/a/c/t4$c$a;->e:Le/a/a/c/t4$c;

    invoke-direct {p1, v0, p2}, Le/a/a/c/t4$c$a;-><init>(Le/a/a/c/t4$c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/a/c/t4$c$a;->e:Le/a/a/c/t4$c;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/a/a/c/t4$c;->f:Le/a/a/c/t4;

    .line 6
    iget-object p2, p2, Le/a/a/c/t4;->l0:Lo3/a;

    .line 7
    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/a/k/a/a/d;

    iget-object p1, p1, Le/a/a/c/t4$c;->g:Ljava/lang/String;

    invoke-interface {p2, p1}, Le/a/a/k/a/a/d;->e(Ljava/lang/String;)Ls1/k;

    move-result-object p1

    .line 8
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/c/t4$c$a;->e:Le/a/a/c/t4$c;

    iget-object p1, p1, Le/a/a/c/t4$c;->f:Le/a/a/c/t4;

    .line 3
    iget-object p1, p1, Le/a/a/c/t4;->l0:Lo3/a;

    .line 4
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/k/a/a/d;

    iget-object v0, p0, Le/a/a/c/t4$c$a;->e:Le/a/a/c/t4$c;

    iget-object v0, v0, Le/a/a/c/t4$c;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/a/k/a/a/d;->e(Ljava/lang/String;)Ls1/k;

    move-result-object p1

    .line 5
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    return-object p1
.end method
