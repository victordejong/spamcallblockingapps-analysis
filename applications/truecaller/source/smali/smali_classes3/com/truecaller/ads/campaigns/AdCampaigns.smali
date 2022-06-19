.class public final Lcom/truecaller/ads/campaigns/AdCampaigns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/ads/campaigns/AdCampaigns;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Lcom/truecaller/ads/campaigns/AdCampaign;

.field public final c:[Ljava/lang/String;

.field public volatile d:[Ljava/lang/String;

.field public e:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/ads/campaigns/AdCampaigns$a;

    invoke-direct {v0}, Lcom/truecaller/ads/campaigns/AdCampaigns$a;-><init>()V

    sput-object v0, Lcom/truecaller/ads/campaigns/AdCampaigns;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/truecaller/ads/campaigns/AdCampaigns$a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->d:[Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->a:Ljava/lang/String;

    .line 10
    sget-object p2, Lcom/truecaller/ads/campaigns/AdCampaign;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/truecaller/ads/campaigns/AdCampaign;

    iput-object p2, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->b:[Lcom/truecaller/ads/campaigns/AdCampaign;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->c:[Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->e:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/truecaller/ads/campaigns/AdCampaign;[Ljava/lang/String;JLcom/truecaller/ads/campaigns/AdCampaigns$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x0

    .line 2
    iput-object p6, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->d:[Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->b:[Lcom/truecaller/ads/campaigns/AdCampaign;

    .line 5
    iput-object p3, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->c:[Ljava/lang/String;

    .line 6
    iput-wide p4, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->e:J

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->b:[Lcom/truecaller/ads/campaigns/AdCampaign;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->b:[Lcom/truecaller/ads/campaigns/AdCampaign;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 4
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 5
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/truecaller/ads/campaigns/AdCampaign;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iput-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/truecaller/ads/campaigns/AdCampaign;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->b:[Lcom/truecaller/ads/campaigns/AdCampaign;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/truecaller/ads/campaigns/AdCampaign;->c:Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/truecaller/ads/campaigns/AdCampaign;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->b:[Lcom/truecaller/ads/campaigns/AdCampaign;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/truecaller/ads/campaigns/AdCampaign;->b:Lcom/truecaller/ads/campaigns/AdCampaign$Style;

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->b:[Lcom/truecaller/ads/campaigns/AdCampaign;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3
    iget-object p2, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->c:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4
    iget-wide v0, p0, Lcom/truecaller/ads/campaigns/AdCampaigns;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
