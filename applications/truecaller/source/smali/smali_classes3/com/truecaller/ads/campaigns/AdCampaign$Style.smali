.class public Lcom/truecaller/ads/campaigns/AdCampaign$Style;
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
    name = "Style"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/ads/campaigns/AdCampaign$Style;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/ads/campaigns/AdCampaign$Style$a;

    invoke-direct {v0}, Lcom/truecaller/ads/campaigns/AdCampaign$Style$a;-><init>()V

    sput-object v0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaign$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->a:I

    .line 3
    iput p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->b:I

    .line 4
    iput p3, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->c:I

    .line 5
    iput p4, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->d:I

    .line 6
    iput-object p5, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/truecaller/ads/campaigns/AdCampaign$a;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->a:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->b:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->c:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->d:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->e:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->f:Ljava/lang/String;

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
    iget p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
