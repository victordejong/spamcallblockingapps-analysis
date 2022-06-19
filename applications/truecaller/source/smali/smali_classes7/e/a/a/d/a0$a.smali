.class public final Le/a/a/d/a0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/d/a0;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.messaging.newconversation.NewConversationPresenter$scheduleBackendSearch$1$1"
    f = "NewConversationPresenter.kt"
    l = {
        0x1be
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/d/a0;

.field public final synthetic g:Ls1/z/c/c0;

.field public final synthetic h:Ls1/z/c/c0;

.field public final synthetic i:Ls1/z/c/y;


# direct methods
.method public constructor <init>(Le/a/a/d/a0;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/y;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/d/a0$a;->f:Le/a/a/d/a0;

    iput-object p2, p0, Le/a/a/d/a0$a;->g:Ls1/z/c/c0;

    iput-object p3, p0, Le/a/a/d/a0$a;->h:Ls1/z/c/c0;

    iput-object p4, p0, Le/a/a/d/a0$a;->i:Ls1/z/c/y;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/a/d/a0$a;

    iget-object v1, p0, Le/a/a/d/a0$a;->f:Le/a/a/d/a0;

    iget-object v2, p0, Le/a/a/d/a0$a;->g:Ls1/z/c/c0;

    iget-object v3, p0, Le/a/a/d/a0$a;->h:Ls1/z/c/c0;

    iget-object v4, p0, Le/a/a/d/a0$a;->i:Ls1/z/c/y;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/a/d/a0$a;-><init>(Le/a/a/d/a0;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/y;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/d/a0$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/d/a0$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/d/a0$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/d/a0$a;->e:I

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
    iget-object p1, p0, Le/a/a/d/a0$a;->f:Le/a/a/d/a0;

    iget-object p1, p1, Le/a/a/d/a0;->i:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 5
    iget-wide v3, p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->m:J

    .line 6
    iput v2, p0, Le/a/a/d/a0$a;->e:I

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/a/d/a0$a;->f:Le/a/a/d/a0;

    iget-object v0, p1, Le/a/a/d/a0;->i:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 8
    iget-object v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->u:Le/a/a/d/f;

    .line 9
    iget-object p1, p1, Le/a/a/d/a0;->j:Ljava/lang/String;

    .line 10
    iget-object v0, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    .line 11
    invoke-virtual {v0}, Le/a/a/d/p;->Ij()Ljava/lang/String;

    move-result-object v0

    const-string v3, "im_group_type"

    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {v1, p1, v0}, Le/a/a/d/f;->c(Ljava/lang/String;Z)Ls1/k;

    move-result-object p1

    .line 12
    iget-object v0, p0, Le/a/a/d/a0$a;->g:Ls1/z/c/c0;

    .line 13
    iget-object v1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 14
    check-cast v1, Lcom/truecaller/data/entity/Contact;

    iput-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Le/a/a/d/a0$a;->h:Ls1/z/c/c0;

    .line 16
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 17
    check-cast p1, Ljava/lang/Integer;

    iput-object p1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Le/a/a/d/a0$a;->i:Ls1/z/c/y;

    iget-object v1, p0, Le/a/a/d/a0$a;->f:Le/a/a/d/a0;

    iget-object v1, v1, Le/a/a/d/a0;->i:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 19
    iget-object v1, v1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->u:Le/a/a/d/f;

    .line 20
    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/data/entity/Contact;

    invoke-interface {v1, v0}, Le/a/a/d/f;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    iput-boolean v0, p1, Ls1/z/c/y;->a:Z

    .line 21
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
