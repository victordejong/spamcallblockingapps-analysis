.class public final Lcom/truecaller/ads/offline/dto/OfflineAdsDto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ads/offline/dto/OfflineAdsDto$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u00086\u00107J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0012\u0010\n\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ6\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00022\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\tH\u00c6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u0014H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001a\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0014H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u0016J \u0010!\u001a\u00020 2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u0014H\u00d6\u0001\u00a2\u0006\u0004\u0008!\u0010\"R\"\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\r\u0010#\u001a\u0004\u0008$\u0010\u0008R(\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010#\u001a\u0004\u0008&\u0010\u0008\"\u0004\u0008\'\u0010(R\"\u0010)\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008)\u0010+\"\u0004\u0008,\u0010-R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010.\u001a\u0004\u0008/\u0010\u000bR\u001c\u0010\u000c\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000c\u00100\u001a\u0004\u00081\u0010\u0004R*\u00103\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010#\u001a\u0004\u00084\u0010\u0008\"\u0004\u00085\u0010(\u00a8\u00068"
    }
    d2 = {
        "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
        "Landroid/os/Parcelable;",
        "Lcom/truecaller/ads/offline/dto/Theme;",
        "component1",
        "()Lcom/truecaller/ads/offline/dto/Theme;",
        "",
        "Lcom/truecaller/ads/offline/dto/Component;",
        "component2",
        "()Ljava/util/List;",
        "Lcom/truecaller/ads/offline/dto/ThankYouData;",
        "component3",
        "()Lcom/truecaller/ads/offline/dto/ThankYouData;",
        "theme",
        "components",
        "thankYouData",
        "copy",
        "(Lcom/truecaller/ads/offline/dto/Theme;Ljava/util/List;Lcom/truecaller/ads/offline/dto/ThankYouData;)Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
        "",
        "toString",
        "()Ljava/lang/String;",
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
        "Ljava/util/List;",
        "getComponents",
        "pixels",
        "getPixels",
        "setPixels",
        "(Ljava/util/List;)V",
        "isOffline",
        "Z",
        "()Z",
        "setOffline",
        "(Z)V",
        "Lcom/truecaller/ads/offline/dto/ThankYouData;",
        "getThankYouData",
        "Lcom/truecaller/ads/offline/dto/Theme;",
        "getTheme",
        "Lcom/truecaller/ads/offline/dto/OfflineAdUiConfigAsset;",
        "assetsList",
        "getAssetsList",
        "setAssetsList",
        "<init>",
        "(Lcom/truecaller/ads/offline/dto/Theme;Ljava/util/List;Lcom/truecaller/ads/offline/dto/ThankYouData;)V",
        "ads_release"
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
            "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private assetsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/ads/offline/dto/OfflineAdUiConfigAsset;",
            ">;"
        }
    .end annotation
.end field

.field private final components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/ads/offline/dto/Component;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "components"
    .end annotation
.end field

.field private isOffline:Z

.field private pixels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final thankYouData:Lcom/truecaller/ads/offline/dto/ThankYouData;
    .annotation runtime Le/m/e/d0/b;
        value = "ty"
    .end annotation
.end field

.field private final theme:Lcom/truecaller/ads/offline/dto/Theme;
    .annotation runtime Le/m/e/d0/b;
        value = "theme"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto$a;

    invoke-direct {v0}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto$a;-><init>()V

    sput-object v0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/ads/offline/dto/Theme;Ljava/util/List;Lcom/truecaller/ads/offline/dto/ThankYouData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/ads/offline/dto/Theme;",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/offline/dto/Component;",
            ">;",
            "Lcom/truecaller/ads/offline/dto/ThankYouData;",
            ")V"
        }
    .end annotation

    const-string v0, "theme"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "components"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->theme:Lcom/truecaller/ads/offline/dto/Theme;

    iput-object p2, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->components:Ljava/util/List;

    iput-object p3, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->thankYouData:Lcom/truecaller/ads/offline/dto/ThankYouData;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->pixels:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/ads/offline/dto/OfflineAdsDto;Lcom/truecaller/ads/offline/dto/Theme;Ljava/util/List;Lcom/truecaller/ads/offline/dto/ThankYouData;ILjava/lang/Object;)Lcom/truecaller/ads/offline/dto/OfflineAdsDto;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->theme:Lcom/truecaller/ads/offline/dto/Theme;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->components:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->thankYouData:Lcom/truecaller/ads/offline/dto/ThankYouData;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->copy(Lcom/truecaller/ads/offline/dto/Theme;Ljava/util/List;Lcom/truecaller/ads/offline/dto/ThankYouData;)Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/truecaller/ads/offline/dto/Theme;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->theme:Lcom/truecaller/ads/offline/dto/Theme;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/offline/dto/Component;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->components:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Lcom/truecaller/ads/offline/dto/ThankYouData;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->thankYouData:Lcom/truecaller/ads/offline/dto/ThankYouData;

    return-object v0
.end method

.method public final copy(Lcom/truecaller/ads/offline/dto/Theme;Ljava/util/List;Lcom/truecaller/ads/offline/dto/ThankYouData;)Lcom/truecaller/ads/offline/dto/OfflineAdsDto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/ads/offline/dto/Theme;",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/offline/dto/Component;",
            ">;",
            "Lcom/truecaller/ads/offline/dto/ThankYouData;",
            ")",
            "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;"
        }
    .end annotation

    const-string v0, "theme"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "components"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    invoke-direct {v0, p1, p2, p3}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;-><init>(Lcom/truecaller/ads/offline/dto/Theme;Ljava/util/List;Lcom/truecaller/ads/offline/dto/ThankYouData;)V

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

    instance-of v0, p1, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->theme:Lcom/truecaller/ads/offline/dto/Theme;

    iget-object v1, p1, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->theme:Lcom/truecaller/ads/offline/dto/Theme;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->components:Ljava/util/List;

    iget-object v1, p1, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->components:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->thankYouData:Lcom/truecaller/ads/offline/dto/ThankYouData;

    iget-object p1, p1, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->thankYouData:Lcom/truecaller/ads/offline/dto/ThankYouData;

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

.method public final getAssetsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/offline/dto/OfflineAdUiConfigAsset;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->assetsList:Ljava/util/List;

    return-object v0
.end method

.method public final getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/offline/dto/Component;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->components:Ljava/util/List;

    return-object v0
.end method

.method public final getPixels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->pixels:Ljava/util/List;

    return-object v0
.end method

.method public final getThankYouData()Lcom/truecaller/ads/offline/dto/ThankYouData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->thankYouData:Lcom/truecaller/ads/offline/dto/ThankYouData;

    return-object v0
.end method

.method public final getTheme()Lcom/truecaller/ads/offline/dto/Theme;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->theme:Lcom/truecaller/ads/offline/dto/Theme;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->theme:Lcom/truecaller/ads/offline/dto/Theme;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/ads/offline/dto/Theme;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->components:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->thankYouData:Lcom/truecaller/ads/offline/dto/ThankYouData;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/truecaller/ads/offline/dto/ThankYouData;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final isOffline()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->isOffline:Z

    return v0
.end method

.method public final setAssetsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/offline/dto/OfflineAdUiConfigAsset;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->assetsList:Ljava/util/List;

    return-void
.end method

.method public final setOffline(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->isOffline:Z

    return-void
.end method

.method public final setPixels(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->pixels:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "OfflineAdsDto(theme="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->theme:Lcom/truecaller/ads/offline/dto/Theme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", components="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->components:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thankYouData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->thankYouData:Lcom/truecaller/ads/offline/dto/ThankYouData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->theme:Lcom/truecaller/ads/offline/dto/Theme;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->components:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/ads/offline/dto/Component;

    invoke-interface {v1, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->thankYouData:Lcom/truecaller/ads/offline/dto/ThankYouData;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method
