.class public final enum Lcom/truecaller/social/SocialNetworkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/social/SocialNetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/social/SocialNetworkType;

.field public static final enum FACEBOOK:Lcom/truecaller/social/SocialNetworkType;

.field public static final enum GOOGLE:Lcom/truecaller/social/SocialNetworkType;


# instance fields
.field private final mBackground:I

.field private final mColor:I

.field private final mIcon:I

.field private final mName:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v7, Lcom/truecaller/social/SocialNetworkType;

    sget v3, Lcom/truecaller/social/R$string;->SocialNetworkFacebook:I

    sget v4, Lcom/truecaller/social/R$color;->social_network_facebook:I

    sget v5, Lcom/truecaller/social/R$drawable;->ic_facebook:I

    sget v6, Lcom/truecaller/social/R$drawable;->social_network_facebook:I

    const-string v1, "FACEBOOK"

    const/4 v2, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/truecaller/social/SocialNetworkType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lcom/truecaller/social/SocialNetworkType;->FACEBOOK:Lcom/truecaller/social/SocialNetworkType;

    .line 2
    new-instance v0, Lcom/truecaller/social/SocialNetworkType;

    sget v11, Lcom/truecaller/social/R$string;->SocialNetworkGoogle:I

    sget v12, Lcom/truecaller/social/R$color;->social_network_google:I

    sget v13, Lcom/truecaller/social/R$drawable;->ic_google:I

    sget v14, Lcom/truecaller/social/R$drawable;->social_network_google:I

    const-string v9, "GOOGLE"

    const/4 v10, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/truecaller/social/SocialNetworkType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/truecaller/social/SocialNetworkType;->GOOGLE:Lcom/truecaller/social/SocialNetworkType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/truecaller/social/SocialNetworkType;

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 3
    sput-object v1, Lcom/truecaller/social/SocialNetworkType;->$VALUES:[Lcom/truecaller/social/SocialNetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/truecaller/social/SocialNetworkType;->mName:I

    .line 3
    iput p4, p0, Lcom/truecaller/social/SocialNetworkType;->mColor:I

    .line 4
    iput p5, p0, Lcom/truecaller/social/SocialNetworkType;->mIcon:I

    .line 5
    iput p6, p0, Lcom/truecaller/social/SocialNetworkType;->mBackground:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/social/SocialNetworkType;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/social/SocialNetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/social/SocialNetworkType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/social/SocialNetworkType;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/social/SocialNetworkType;->$VALUES:[Lcom/truecaller/social/SocialNetworkType;

    invoke-virtual {v0}, [Lcom/truecaller/social/SocialNetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/social/SocialNetworkType;

    return-object v0
.end method


# virtual methods
.method public getBackground()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/social/SocialNetworkType;->mBackground:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/social/SocialNetworkType;->mColor:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/social/SocialNetworkType;->mIcon:I

    return v0
.end method

.method public getName()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/social/SocialNetworkType;->mName:I

    return v0
.end method
