.class public final enum Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/editprofile/ui/EditProfileMvp$View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoCallerIdProfileAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "CREATE_NEW_VIDEO",
        "VISIT_YOUR_VIDEO",
        "editprofile_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;

.field public static final enum CREATE_NEW_VIDEO:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;

.field public static final enum VISIT_YOUR_VIDEO:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;

    new-instance v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;

    const-string v2, "CREATE_NEW_VIDEO"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;->CREATE_NEW_VIDEO:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;

    const-string v2, "VISIT_YOUR_VIDEO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;->VISIT_YOUR_VIDEO:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;->$VALUES:[Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;
    .locals 1

    const-class v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;
    .locals 1

    sget-object v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;->$VALUES:[Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;

    invoke-virtual {v0}, [Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;

    return-object v0
.end method
