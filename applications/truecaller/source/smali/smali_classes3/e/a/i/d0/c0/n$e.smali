.class public Le/a/i/d0/c0/n$e;
.super Ln3/c0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/c0/n;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/j<",
        "Le/a/i/d0/c0/p;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/i/d0/c0/n;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/j;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Le/a/i/d0/c0/p;

    .line 2
    iget-wide v0, p2, Le/a/i/d0/c0/p;->a:J

    const/4 p2, 0x1

    .line 3
    invoke-interface {p1, p2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `partner_ads` WHERE `_id` = ?"

    return-object v0
.end method
