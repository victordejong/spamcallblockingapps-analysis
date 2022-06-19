.class public final Le/a/a/c/v4$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/v4;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$identifyLanguages$1$1"
    f = "ConversationMessagesPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/c/v4;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/a/c/v4;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/v4$a;->e:Le/a/a/c/v4;

    iput-object p2, p0, Le/a/a/c/v4$a;->f:Ls1/z/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/a/c/v4$a;

    iget-object v0, p0, Le/a/a/c/v4$a;->e:Le/a/a/c/v4;

    iget-object v1, p0, Le/a/a/c/v4$a;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/v4$a;-><init>(Le/a/a/c/v4;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/c/v4$a;->e:Le/a/a/c/v4;

    iget-object v1, p0, Le/a/a/c/v4$a;->f:Ls1/z/c/c0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/a/c/v4;->h:Le/a/a/c/t4;

    .line 5
    iget-object p2, p2, Le/a/a/c/t4;->J:Le/a/a/c/n5;

    .line 6
    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-interface {p2, v1}, Le/a/a/c/m5;->t(Ljava/lang/Long;)V

    .line 7
    iget-object p2, v0, Le/a/a/c/v4;->h:Le/a/a/c/t4;

    .line 8
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/a/c/z4;

    if-eqz p2, :cond_0

    .line 9
    invoke-interface {p2}, Le/a/a/c/z4;->A()V

    :cond_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/c/v4$a;->e:Le/a/a/c/v4;

    iget-object p1, p1, Le/a/a/c/v4;->h:Le/a/a/c/t4;

    .line 3
    iget-object p1, p1, Le/a/a/c/t4;->J:Le/a/a/c/n5;

    .line 4
    iget-object v0, p0, Le/a/a/c/v4$a;->f:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p1, v0}, Le/a/a/c/m5;->t(Ljava/lang/Long;)V

    .line 5
    iget-object p1, p0, Le/a/a/c/v4$a;->e:Le/a/a/c/v4;

    iget-object p1, p1, Le/a/a/c/v4;->h:Le/a/a/c/t4;

    .line 6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/z4;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Le/a/a/c/z4;->A()V

    .line 8
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
