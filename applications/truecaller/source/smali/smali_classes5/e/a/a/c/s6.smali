.class public final Le/a/a/c/s6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/t6;

.field public final synthetic b:Lcom/truecaller/messaging/data/types/Message;


# direct methods
.method public constructor <init>(Le/a/a/c/t6;Lcom/truecaller/messaging/data/types/Message;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/s6;->a:Le/a/a/c/t6;

    iput-object p2, p0, Le/a/a/c/s6;->b:Lcom/truecaller/messaging/data/types/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/a/c/s6;->a:Le/a/a/c/t6;

    .line 3
    iget-object v0, v0, Le/a/a/c/t6;->f:Le/a/a/c/s4;

    .line 4
    invoke-interface {v0}, Le/a/a/c/k/a/j$b;->r4()V

    .line 5
    iget-object v0, p0, Le/a/a/c/s6;->a:Le/a/a/c/t6;

    .line 6
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/u6;

    if-eqz v1, :cond_0

    .line 7
    iget-object v2, p0, Le/a/a/c/s6;->b:Lcom/truecaller/messaging/data/types/Message;

    .line 8
    iget-object v0, v0, Le/a/a/c/t6;->d:Le/a/a/i0;

    .line 9
    invoke-interface {v0}, Le/a/a/i0;->L()Ljava/util/List;

    move-result-object v0

    const-string v3, "messageSettings.reactionEmojis"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0, p1}, Le/a/a/c/u6;->xe(Lcom/truecaller/messaging/data/types/Message;Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
