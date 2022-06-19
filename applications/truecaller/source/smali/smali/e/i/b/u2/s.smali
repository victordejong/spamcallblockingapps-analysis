.class public abstract Le/i/b/u2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "impId"
    .end annotation
.end method

.method public abstract b()Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "placementId"
    .end annotation
.end method

.method public abstract c()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "sizes"
    .end annotation
.end method

.method public abstract d()Ljava/lang/Boolean;
    .annotation runtime Le/m/e/d0/b;
        value = "interstitial"
    .end annotation
.end method

.method public abstract e()Ljava/lang/Boolean;
    .annotation runtime Le/m/e/d0/b;
        value = "isNative"
    .end annotation
.end method
