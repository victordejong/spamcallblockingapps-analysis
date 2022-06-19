.class public final Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData;
.super Lcom/appnext/core/Ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0005H\u0016J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u0005H\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\tH\u0016J\u0008\u0010\u0011\u001a\u00020\tH\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData;",
        "Lcom/appnext/core/Ad;",
        "context",
        "Landroid/content/Context;",
        "placementID",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "getAUID",
        "getECPM",
        "",
        "onECPMLoaded",
        "Lcom/appnext/core/callbacks/OnECPMLoaded;",
        "getTID",
        "getVID",
        "isAdLoaded",
        "",
        "loadAd",
        "showAd",
        "Companion",
        "SuggestedAppsWider_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AUID:Ljava/lang/String; = "1200"

.field public static final Companion:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData;->Companion:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementID"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/appnext/core/Ad;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAUID()Ljava/lang/String;
    .locals 1

    const-string v0, "1200"

    return-object v0
.end method

.method public final getECPM(Lcom/appnext/core/callbacks/OnECPMLoaded;)V
    .locals 2

    .line 1
    new-instance p1, Ls1/j;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "An operation is not implemented: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Not yet implemented"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ls1/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getTID()Ljava/lang/String;
    .locals 1

    const-string v0, "301"

    return-object v0
.end method

.method public final getVID()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.5.473"

    return-object v0
.end method

.method public final isAdLoaded()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/appnext/suggestedappswider/b/b;->ho:Lcom/appnext/suggestedappswider/b/b$a;

    invoke-virtual {v0}, Lcom/appnext/suggestedappswider/b/b$a;->br()Lcom/appnext/suggestedappswider/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appnext/suggestedappswider/b/b;->a(Lcom/appnext/core/Ad;)Z

    move-result v0

    return v0
.end method

.method public final loadAd()V
    .locals 3

    .line 1
    new-instance v0, Ls1/j;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An operation is not implemented: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final showAd()V
    .locals 3

    .line 1
    new-instance v0, Ls1/j;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An operation is not implemented: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method
