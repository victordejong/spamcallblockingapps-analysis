.class public final Lcom/appnext/suggestedappswider/models/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\u0005H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/appnext/suggestedappswider/models/ANSuggestedAppsWiderDataContainer;",
        "Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;",
        "suggestedAppsWiderModelModelsKey",
        "",
        "ecpm",
        "",
        "(Ljava/lang/String;F)V",
        "getSuggestedAppsWiderModelModelsKey$SuggestedAppsWider_release",
        "()Ljava/lang/String;",
        "getEcpm",
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


# instance fields
.field private final ecpm:F

.field private final synthetic ht:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1

    const-string v0, "suggestedAppsWiderModelModelsKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appnext/suggestedappswider/models/a;->ht:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/appnext/suggestedappswider/models/a;->ecpm:F

    return-void
.end method


# virtual methods
.method public final bt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/suggestedappswider/models/a;->ht:Ljava/lang/String;

    return-object v0
.end method

.method public final getEcpm()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/appnext/suggestedappswider/models/a;->ecpm:F

    return v0
.end method
