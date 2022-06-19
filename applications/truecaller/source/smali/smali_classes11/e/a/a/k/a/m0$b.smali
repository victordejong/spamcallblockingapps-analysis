.class public final Le/a/a/k/a/m0$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/m0;->b(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/o;
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
    c = "com.truecaller.messaging.transport.im.ImTransport$sendMessage$6$1"
    f = "ImTransport.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/messaging/data/types/BinaryEntity;

.field public final synthetic f:Le/a/a/k/a/m0;

.field public final synthetic g:Lcom/truecaller/messaging/data/types/Message;

.field public final synthetic h:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;

.field public final synthetic i:Ljava/util/List;

.field public final synthetic j:Ls1/z/c/y;

.field public final synthetic k:Ls1/z/c/y;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/BinaryEntity;Ls1/w/d;Le/a/a/k/a/m0;Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;Ljava/util/List;Ls1/z/c/y;Ls1/z/c/y;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/m0$b;->e:Lcom/truecaller/messaging/data/types/BinaryEntity;

    iput-object p3, p0, Le/a/a/k/a/m0$b;->f:Le/a/a/k/a/m0;

    iput-object p4, p0, Le/a/a/k/a/m0$b;->g:Lcom/truecaller/messaging/data/types/Message;

    iput-object p5, p0, Le/a/a/k/a/m0$b;->h:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;

    iput-object p6, p0, Le/a/a/k/a/m0$b;->i:Ljava/util/List;

    iput-object p7, p0, Le/a/a/k/a/m0$b;->j:Ls1/z/c/y;

    iput-object p8, p0, Le/a/a/k/a/m0$b;->k:Ls1/z/c/y;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 9
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

    new-instance p1, Le/a/a/k/a/m0$b;

    iget-object v1, p0, Le/a/a/k/a/m0$b;->e:Lcom/truecaller/messaging/data/types/BinaryEntity;

    iget-object v3, p0, Le/a/a/k/a/m0$b;->f:Le/a/a/k/a/m0;

    iget-object v4, p0, Le/a/a/k/a/m0$b;->g:Lcom/truecaller/messaging/data/types/Message;

    iget-object v5, p0, Le/a/a/k/a/m0$b;->h:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;

    iget-object v6, p0, Le/a/a/k/a/m0$b;->i:Ljava/util/List;

    iget-object v7, p0, Le/a/a/k/a/m0$b;->j:Ls1/z/c/y;

    iget-object v8, p0, Le/a/a/k/a/m0$b;->k:Ls1/z/c/y;

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Le/a/a/k/a/m0$b;-><init>(Lcom/truecaller/messaging/data/types/BinaryEntity;Ls1/w/d;Le/a/a/k/a/m0;Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;Ljava/util/List;Ls1/z/c/y;Ls1/z/c/y;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/k/a/m0$b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/k/a/m0$b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/k/a/m0$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/k/a/m0$b;->f:Le/a/a/k/a/m0;

    .line 3
    iget-object p1, p1, Le/a/a/k/a/m0;->M:Le/a/a/k/d0/a;

    .line 4
    iget-object v0, p0, Le/a/a/k/a/m0$b;->e:Lcom/truecaller/messaging/data/types/BinaryEntity;

    check-cast v0, Lcom/truecaller/messaging/data/types/GifEntity;

    invoke-interface {p1, v0}, Le/a/a/k/d0/a;->a(Lcom/truecaller/messaging/data/types/GifEntity;)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Le/a/a/k/a/m0$b;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Le/a/a/k/a/m0$b;->f:Le/a/a/k/a/m0;

    .line 7
    iget-object v0, v0, Le/a/a/k/a/m0;->k:Le/a/a/k/a/h;

    .line 8
    iget-object v1, p0, Le/a/a/k/a/m0$b;->h:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;

    const-string v2, "contentBuilder"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    check-cast v0, Le/a/a/k/a/k;

    invoke-virtual {v0, v1, p1}, Le/a/a/k/a/k;->a(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;Lcom/truecaller/messaging/data/types/BinaryEntity;)V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
