.class public final enum Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;",
        "",
        "",
        "priority",
        "I",
        "getPriority",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "WEBSITE",
        "FACEBOOK",
        "INSTAGRAM",
        "GOOGLE_PLAY_STORE",
        "TWITTER",
        "details-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

.field public static final enum FACEBOOK:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

.field public static final enum GOOGLE_PLAY_STORE:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

.field public static final enum INSTAGRAM:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

.field public static final enum TWITTER:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

.field public static final enum WEBSITE:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;


# instance fields
.field private final priority:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v1, v0, [Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    new-instance v2, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    const-string v3, "WEBSITE"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1
    invoke-direct {v2, v3, v4, v5}, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;->WEBSITE:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    aput-object v2, v1, v4

    new-instance v2, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    const-string v3, "FACEBOOK"

    const/4 v4, 0x2

    .line 2
    invoke-direct {v2, v3, v5, v4}, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;->FACEBOOK:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    const-string v3, "INSTAGRAM"

    const/4 v5, 0x3

    .line 3
    invoke-direct {v2, v3, v4, v5}, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;->INSTAGRAM:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    aput-object v2, v1, v4

    new-instance v2, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    const-string v3, "GOOGLE_PLAY_STORE"

    const/4 v4, 0x4

    .line 4
    invoke-direct {v2, v3, v5, v4}, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;->GOOGLE_PLAY_STORE:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    const-string v3, "TWITTER"

    .line 5
    invoke-direct {v2, v3, v4, v0}, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;->TWITTER:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    aput-object v2, v1, v4

    sput-object v1, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;->$VALUES:[Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;->priority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;
    .locals 1

    const-class v0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;
    .locals 1

    sget-object v0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;->$VALUES:[Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    invoke-virtual {v0}, [Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    return-object v0
.end method


# virtual methods
.method public final getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;->priority:I

    return v0
.end method
