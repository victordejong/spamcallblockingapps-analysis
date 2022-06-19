.class public final Le/a/i/e/a/a/a$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/a/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/ads/offline/dto/OfflineAdType;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/i/e/a/a/a;


# direct methods
.method public constructor <init>(Le/a/i/e/a/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/a/a/a$d;->b:Le/a/i/e/a/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i/e/a/a/a$d;->b:Le/a/i/e/a/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/truecaller/ads/offline/dto/OfflineAdType;->OFFLINE_LEADGEN:Lcom/truecaller/ads/offline/dto/OfflineAdType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extraOfflineAdType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/truecaller/ads/offline/dto/OfflineAdType;->valueOf(Ljava/lang/String;)Lcom/truecaller/ads/offline/dto/OfflineAdType;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/truecaller/ads/offline/dto/OfflineAdType;->OFFLINE_LEADGEN:Lcom/truecaller/ads/offline/dto/OfflineAdType;

    :goto_0
    return-object v0
.end method
