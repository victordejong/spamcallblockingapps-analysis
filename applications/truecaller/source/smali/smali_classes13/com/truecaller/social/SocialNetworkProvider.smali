.class public abstract Lcom/truecaller/social/SocialNetworkProvider;
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
.method public isSupported(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract network(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Le/a/b5/b;
.end method

.method public abstract type()Lcom/truecaller/social/SocialNetworkType;
.end method
