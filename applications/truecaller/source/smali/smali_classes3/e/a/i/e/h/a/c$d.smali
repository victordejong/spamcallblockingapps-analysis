.class public Le/a/i/e/h/a/c$d;
.super Ln3/c0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/h/a/c;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/j<",
        "Le/a/i/e/h/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/i/e/h/a/c;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/j;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Le/a/i/e/h/b/a;

    .line 2
    iget-wide v0, p2, Le/a/i/e/h/b/a;->a:J

    const/4 p2, 0x1

    .line 3
    invoke-interface {p1, p2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `offline_ad_ui_config` WHERE `_id` = ?"

    return-object v0
.end method
