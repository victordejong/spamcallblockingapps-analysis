.class public final Lcom/truecaller/ads/campaigns/AdCampaign;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ads/campaigns/AdCampaign$b;,
        Lcom/truecaller/ads/campaigns/AdCampaign$CtaAttributes;,
        Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;,
        Lcom/truecaller/ads/campaigns/AdCampaign$Style;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/ads/campaigns/AdCampaign;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/truecaller/ads/campaigns/AdCampaign$Style;

.field public final c:Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

.field public final d:[Ljava/lang/String;

.field public final e:Lcom/truecaller/ads/campaigns/AdCampaign$CtaAttributes;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/ads/campaigns/AdCampaign$a;

    invoke-direct {v0}, Lcom/truecaller/ads/campaigns/AdCampaign$a;-><init>()V

    sput-object v0, Lcom/truecaller/ads/campaigns/AdCampaign;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/truecaller/ads/campaigns/AdCampaign$a;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign;->d:[Ljava/lang/String;

    .line 10
    const-class p2, Lcom/truecaller/ads/campaigns/AdCampaign;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;

    iput-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaign;->b:Lcom/truecaller/ads/campaigns/AdCampaign$Style;

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

    iput-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaign;->c:Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/ads/campaigns/AdCampaign$CtaAttributes;

    iput-object p1, p0, Lcom/truecaller/ads/campaigns/AdCampaign;->e:Lcom/truecaller/ads/campaigns/AdCampaign$CtaAttributes;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaign$Style;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;[Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaign$CtaAttributes;Lcom/truecaller/ads/campaigns/AdCampaign$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/truecaller/ads/campaigns/AdCampaign;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign;->b:Lcom/truecaller/ads/campaigns/AdCampaign$Style;

    .line 4
    iput-object p3, p0, Lcom/truecaller/ads/campaigns/AdCampaign;->c:Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

    .line 5
    iput-object p4, p0, Lcom/truecaller/ads/campaigns/AdCampaign;->d:[Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/truecaller/ads/campaigns/AdCampaign;->e:Lcom/truecaller/ads/campaigns/AdCampaign$CtaAttributes;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaign;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaign;->d:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaign;->b:Lcom/truecaller/ads/campaigns/AdCampaign$Style;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaign;->c:Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaign;->e:Lcom/truecaller/ads/campaigns/AdCampaign$CtaAttributes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
