.class public final Le/a/i/e/a/a/a$e;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/i/e/a/a/a;


# direct methods
.method public constructor <init>(Le/a/i/e/a/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/a/a/a$e;->b:Le/a/i/e/a/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/e/a/a/a$e;->b:Le/a/i/e/a/a/a;

    .line 2
    iget-object v0, v0, Le/a/i/e/a/a/a;->j:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/ads/offline/dto/OfflineAdType;

    .line 3
    sget-object v1, Lcom/truecaller/ads/offline/dto/OfflineAdType;->OFFLINE_LEADGEN:Lcom/truecaller/ads/offline/dto/OfflineAdType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
