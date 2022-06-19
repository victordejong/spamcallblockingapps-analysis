.class public Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ads/campaigns/AdCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CtaStyle"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle$a;

    invoke-direct {v0}, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle$a;-><init>()V

    sput-object v0, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILcom/truecaller/ads/campaigns/AdCampaign$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;->a:I

    .line 3
    iput p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/truecaller/ads/campaigns/AdCampaign$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;->a:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;->b:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
