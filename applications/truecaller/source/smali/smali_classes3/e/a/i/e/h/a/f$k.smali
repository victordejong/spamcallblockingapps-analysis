.class public Le/a/i/e/h/a/f$k;
.super Ln3/c0/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/h/a/f;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Le/a/i/e/h/a/f;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/c0;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "Update offline_ads set ad_click_per_user = CASE WHEN ad_click_per_user > 0 THEN(ad_click_per_user - 1) ELSE 0 END"

    return-object v0
.end method
