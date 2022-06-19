.class public Lcom/truecaller/social/facebook/FacebookSocialNetworkProvider;
.super Lcom/truecaller/social/SocialNetworkProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/social/SocialNetworkProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public network(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Le/a/b5/b;
    .locals 1

    .line 1
    new-instance v0, Le/a/b5/g/a;

    invoke-direct {v0, p1, p2}, Le/a/b5/g/a;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public type()Lcom/truecaller/social/SocialNetworkType;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/social/SocialNetworkType;->FACEBOOK:Lcom/truecaller/social/SocialNetworkType;

    return-object v0
.end method
