.class public final Le/a/a/k/a/q0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/q0;->b(Lcom/truecaller/data/entity/messaging/Participant;Z)V
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
    c = "com.truecaller.messaging.transport.im.ImTypingManagerImpl$handleTypeAction$2"
    f = "ImTypingManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/k/a/q0;

.field public final synthetic f:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/q0$a;->e:Le/a/a/k/a/q0;

    iput-object p2, p0, Le/a/a/k/a/q0$a;->f:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    iput-boolean p3, p0, Le/a/a/k/a/q0$a;->g:Z

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

    new-instance p1, Le/a/a/k/a/q0$a;

    iget-object v0, p0, Le/a/a/k/a/q0$a;->e:Le/a/a/k/a/q0;

    iget-object v1, p0, Le/a/a/k/a/q0$a;->f:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    iget-boolean v2, p0, Le/a/a/k/a/q0$a;->g:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/k/a/q0$a;-><init>(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/a/k/a/q0$a;->e:Le/a/a/k/a/q0;

    iget-object v0, p0, Le/a/a/k/a/q0$a;->f:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    iget-boolean v1, p0, Le/a/a/k/a/q0$a;->g:Z

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    sget-object v2, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->TYPING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    invoke-static {p1, v0, v1, v2}, Le/a/a/k/a/q0;->i(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;ZLcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;)V

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/k/a/q0$a;->e:Le/a/a/k/a/q0;

    iget-object v0, p0, Le/a/a/k/a/q0$a;->f:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    iget-boolean v1, p0, Le/a/a/k/a/q0$a;->g:Z

    sget-object v2, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->TYPING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    invoke-static {p1, v0, v1, v2}, Le/a/a/k/a/q0;->i(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;ZLcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
