.class public final Le/a/a/c/o/g$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/o/g;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.messaging.conversation.notifications.ConversationNotificationSettingsPresenter$updateCustomSoundSection$1$1"
    f = "ConversationNotificationSettingsPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/c/o/g;

.field public final synthetic f:Ls1/z/c/y;

.field public final synthetic g:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/a/c/o/g;Ls1/z/c/y;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/o/g$a;->e:Le/a/a/c/o/g;

    iput-object p2, p0, Le/a/a/c/o/g$a;->f:Ls1/z/c/y;

    iput-object p3, p0, Le/a/a/c/o/g$a;->g:Ls1/z/c/c0;

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

    new-instance p1, Le/a/a/c/o/g$a;

    iget-object v0, p0, Le/a/a/c/o/g$a;->e:Le/a/a/c/o/g;

    iget-object v1, p0, Le/a/a/c/o/g$a;->f:Ls1/z/c/y;

    iget-object v2, p0, Le/a/a/c/o/g$a;->g:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/o/g$a;-><init>(Le/a/a/c/o/g;Ls1/z/c/y;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/c/o/g$a;->e:Le/a/a/c/o/g;

    iget-object v1, p0, Le/a/a/c/o/g$a;->f:Ls1/z/c/y;

    iget-object v2, p0, Le/a/a/c/o/g$a;->g:Ls1/z/c/c0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/a/c/o/g;->h:Le/a/a/c/o/e;

    .line 5
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/a/c/o/d;

    if-eqz p2, :cond_0

    .line 6
    iget-boolean v1, v1, Ls1/z/c/y;->a:Z

    invoke-interface {p2, v1}, Le/a/a/c/o/d;->P8(Z)V

    .line 7
    :cond_0
    iget-object p2, v0, Le/a/a/c/o/g;->h:Le/a/a/c/o/e;

    .line 8
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/a/c/o/d;

    if-eqz p2, :cond_1

    .line 9
    iget-object v0, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Le/a/a/c/o/d;->oA(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/c/o/g$a;->e:Le/a/a/c/o/g;

    iget-object p1, p1, Le/a/a/c/o/g;->h:Le/a/a/c/o/e;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/o/d;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Le/a/a/c/o/g$a;->f:Ls1/z/c/y;

    iget-boolean v0, v0, Ls1/z/c/y;->a:Z

    invoke-interface {p1, v0}, Le/a/a/c/o/d;->P8(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/a/c/o/g$a;->e:Le/a/a/c/o/g;

    iget-object p1, p1, Le/a/a/c/o/g;->h:Le/a/a/c/o/e;

    .line 6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/o/d;

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Le/a/a/c/o/g$a;->g:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/a/c/o/d;->oA(Ljava/lang/String;)V

    .line 8
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
