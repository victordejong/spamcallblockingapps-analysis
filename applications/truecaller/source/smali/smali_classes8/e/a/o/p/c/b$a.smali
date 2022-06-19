.class public Le/a/o/p/c/b$a;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/p/c/b;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/o/p/c/b;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x4

    .line 11
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getCreatedAt()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `incoming_call_context` (`_id`,`phone_number`,`message`,`created_at`) VALUES (?,?,?,?)"

    return-object v0
.end method
