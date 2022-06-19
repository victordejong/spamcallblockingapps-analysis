.class public Le/a/o/p/b/c$a;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/p/b/c;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Lcom/truecaller/contextcall/db/hiddennumber/HiddenNumber;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/o/p/b/c;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lcom/truecaller/contextcall/db/hiddennumber/HiddenNumber;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/hiddennumber/HiddenNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/hiddennumber/HiddenNumber;->getNumber()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `hidden_number` (`number`) VALUES (?)"

    return-object v0
.end method
