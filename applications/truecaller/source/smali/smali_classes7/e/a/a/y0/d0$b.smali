.class public final Le/a/a/y0/d0$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/y0/d0;->i(Ln3/k/a/q;IZLcom/truecaller/messaging/data/types/Conversation;)Ln3/k/a/q;
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
    c = "com.truecaller.messaging.notifications.RegularMessagingNotificationsManagerImpl$setDefaultsAndSound$1$1$1"
    f = "RegularMessagingNotificationsManager.kt"
    l = {
        0x1f7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Ln3/k/a/q;

.field public final synthetic g:Le/a/a/y0/d0;

.field public final synthetic h:I

.field public final synthetic i:Z

.field public final synthetic j:Lcom/truecaller/messaging/data/types/Conversation;


# direct methods
.method public constructor <init>(Ls1/w/d;Ln3/k/a/q;Le/a/a/y0/d0;IZLcom/truecaller/messaging/data/types/Conversation;)V
    .locals 0

    iput-object p2, p0, Le/a/a/y0/d0$b;->f:Ln3/k/a/q;

    iput-object p3, p0, Le/a/a/y0/d0$b;->g:Le/a/a/y0/d0;

    iput p4, p0, Le/a/a/y0/d0$b;->h:I

    iput-boolean p5, p0, Le/a/a/y0/d0$b;->i:Z

    iput-object p6, p0, Le/a/a/y0/d0$b;->j:Lcom/truecaller/messaging/data/types/Conversation;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Le/a/a/y0/d0$b;

    iget-object v2, p0, Le/a/a/y0/d0$b;->f:Ln3/k/a/q;

    iget-object v3, p0, Le/a/a/y0/d0$b;->g:Le/a/a/y0/d0;

    iget v4, p0, Le/a/a/y0/d0$b;->h:I

    iget-boolean v5, p0, Le/a/a/y0/d0$b;->i:Z

    iget-object v6, p0, Le/a/a/y0/d0$b;->j:Lcom/truecaller/messaging/data/types/Conversation;

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Le/a/a/y0/d0$b;-><init>(Ls1/w/d;Ln3/k/a/q;Le/a/a/y0/d0;IZLcom/truecaller/messaging/data/types/Conversation;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/y0/d0$b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/y0/d0$b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/y0/d0$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/y0/d0$b;->e:I

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
    iget-object p1, p0, Le/a/a/y0/d0$b;->g:Le/a/a/y0/d0;

    .line 5
    iget-object p1, p1, Le/a/a/y0/d0;->p:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/c/o/h;

    iget-object v1, p0, Le/a/a/y0/d0$b;->j:Lcom/truecaller/messaging/data/types/Conversation;

    const/4 v3, 0x0

    iput v2, p0, Le/a/a/y0/d0$b;->e:I

    invoke-interface {p1, v1, v3, p0}, Le/a/a/c/o/h;->a(Lcom/truecaller/messaging/data/types/Conversation;Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
