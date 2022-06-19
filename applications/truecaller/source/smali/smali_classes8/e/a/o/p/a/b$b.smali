.class public Le/a/o/p/a/b$b;
.super Ln3/c0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/p/a/b;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/j<",
        "Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/o/p/a/b;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/j;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;->getPhone()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;->getEnabled()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;->getVersion()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;->getPhone()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;->getPhone()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `context_call_availability` SET `phone` = ?,`enabled` = ?,`version` = ? WHERE `phone` = ?"

    return-object v0
.end method
