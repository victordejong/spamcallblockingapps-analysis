.class public final Lcom/truecaller/messaging/newconversation/NewConversationPresenter$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Yj(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/a/k/a/d2;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.newconversation.NewConversationPresenter$uploadAvatar$uploadResult$1"
    f = "NewConversationPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

.field public final synthetic f:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Landroid/net/Uri;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$f;->e:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iput-object p2, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$f;->f:Landroid/net/Uri;

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

    new-instance p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$f;

    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$f;->e:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$f;->f:Landroid/net/Uri;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$f;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Landroid/net/Uri;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$f;->e:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$f;->f:Landroid/net/Uri;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->M:Le/a/a/k/a/z0;

    .line 6
    invoke-interface {p2, v0}, Le/a/a/k/a/z0;->a(Landroid/net/Uri;)Le/a/a/k/a/d2;

    move-result-object p2

    .line 7
    iget-object p1, p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->N:Le/a/o5/m;

    .line 8
    invoke-interface {p1, v0}, Le/a/o5/m;->a(Landroid/net/Uri;)Z

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$f;->e:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 2
    iget-object p1, p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->M:Le/a/a/k/a/z0;

    .line 3
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$f;->f:Landroid/net/Uri;

    invoke-interface {p1, v0}, Le/a/a/k/a/z0;->a(Landroid/net/Uri;)Le/a/a/k/a/d2;

    move-result-object p1

    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$f;->e:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 4
    iget-object v0, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->N:Le/a/o5/m;

    .line 5
    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$f;->f:Landroid/net/Uri;

    invoke-interface {v0, v1}, Le/a/o5/m;->a(Landroid/net/Uri;)Z

    return-object p1
.end method
