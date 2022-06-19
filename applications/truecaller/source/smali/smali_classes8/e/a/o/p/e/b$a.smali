.class public Le/a/o/p/e/b$a;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/p/e/b;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Lcom/truecaller/contextcall/db/reason/CallReason;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/o/p/e/b;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/truecaller/contextcall/db/reason/CallReason;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/reason/CallReason;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/reason/CallReason;->getReasonText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/reason/CallReason;->getReasonText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `call_reason` (`_id`,`message`) VALUES (nullif(?, 0),?)"

    return-object v0
.end method
