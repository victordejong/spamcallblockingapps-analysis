.class public final Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0087\u0008\u0018\u00002\u00020\u0001B+\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0012\u0010\t\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\u0004J<\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u0011H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001a\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0011H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u0013J \u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0011H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u001b\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010 \u001a\u0004\u0008!\u0010\u0004R\u0019\u0010\u000c\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\"\u001a\u0004\u0008#\u0010\u0008R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010 \u001a\u0004\u0008$\u0010\u0004R\u001b\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010 \u001a\u0004\u0008%\u0010\u0004\u00a8\u0006("
    }
    d2 = {
        "Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;",
        "Landroid/os/Parcelable;",
        "",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "Lcom/truecaller/videocallerid/utils/OnboardingType;",
        "component3",
        "()Lcom/truecaller/videocallerid/utils/OnboardingType;",
        "component4",
        "contactName",
        "analyticsContext",
        "onboardingType",
        "number",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/OnboardingType;Ljava/lang/String;)Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;",
        "toString",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "describeContents",
        "Landroid/os/Parcel;",
        "parcel",
        "flags",
        "Ls1/s;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "Ljava/lang/String;",
        "getNumber",
        "Lcom/truecaller/videocallerid/utils/OnboardingType;",
        "getOnboardingType",
        "getAnalyticsContext",
        "getContactName",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/OnboardingType;Ljava/lang/String;)V",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final analyticsContext:Ljava/lang/String;

.field private final contactName:Ljava/lang/String;

.field private final number:Ljava/lang/String;

.field private final onboardingType:Lcom/truecaller/videocallerid/utils/OnboardingType;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData$a;

    invoke-direct {v0}, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData$a;-><init>()V

    sput-object v0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/OnboardingType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "analyticsContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onboardingType"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->contactName:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->analyticsContext:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->onboardingType:Lcom/truecaller/videocallerid/utils/OnboardingType;

    iput-object p4, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->number:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/OnboardingType;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->contactName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->analyticsContext:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->onboardingType:Lcom/truecaller/videocallerid/utils/OnboardingType;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->number:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/OnboardingType;Ljava/lang/String;)Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->analyticsContext:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/truecaller/videocallerid/utils/OnboardingType;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->onboardingType:Lcom/truecaller/videocallerid/utils/OnboardingType;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->number:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/OnboardingType;Ljava/lang/String;)Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;
    .locals 1

    const-string v0, "analyticsContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onboardingType"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/OnboardingType;Ljava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->contactName:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->contactName:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->analyticsContext:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->analyticsContext:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->onboardingType:Lcom/truecaller/videocallerid/utils/OnboardingType;

    iget-object v1, p1, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->onboardingType:Lcom/truecaller/videocallerid/utils/OnboardingType;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->number:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->number:Ljava/lang/String;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAnalyticsContext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->analyticsContext:Ljava/lang/String;

    return-object v0
.end method

.method public final getContactName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->number:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnboardingType()Lcom/truecaller/videocallerid/utils/OnboardingType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->onboardingType:Lcom/truecaller/videocallerid/utils/OnboardingType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->contactName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->analyticsContext:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->onboardingType:Lcom/truecaller/videocallerid/utils/OnboardingType;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->number:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "VideoCallerIdBottomSheetOnboardingData(contactName="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->contactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", analyticsContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->analyticsContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onboardingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->onboardingType:Lcom/truecaller/videocallerid/utils/OnboardingType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->number:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->contactName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->analyticsContext:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->onboardingType:Lcom/truecaller/videocallerid/utils/OnboardingType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
