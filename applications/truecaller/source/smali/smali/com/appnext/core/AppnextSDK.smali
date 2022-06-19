.class public Lcom/appnext/core/AppnextSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendRA(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/appnext/core/ra/services/a;->s(Landroid/content/Context;)Lcom/appnext/core/ra/services/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/appnext/core/ra/services/a;->d(Ljava/util/ArrayList;)V

    return-void
.end method
