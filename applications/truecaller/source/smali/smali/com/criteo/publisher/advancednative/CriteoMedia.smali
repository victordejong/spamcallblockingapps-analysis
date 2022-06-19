.class public abstract Lcom/criteo/publisher/advancednative/CriteoMedia;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/net/URL;)Lcom/criteo/publisher/advancednative/CriteoMedia;
    .locals 1

    .line 1
    new-instance v0, Le/i/b/r1/g;

    invoke-direct {v0, p0}, Le/i/b/r1/g;-><init>(Ljava/net/URL;)V

    return-object v0
.end method


# virtual methods
.method public abstract getImageUrl()Ljava/net/URL;
    .annotation build Lcom/criteo/publisher/annotation/Internal;
        value = {
            "AdMob Adapter"
        }
    .end annotation
.end method
