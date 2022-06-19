.class public Lcom/truecaller/ads/mediation/google/MediationCustomRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\"\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00085\u00106R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0004\u001a\u0004\u0008\u0011\u0010\u0006\"\u0004\u0008\u0012\u0010\u0008R$\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001a\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u000b\u001a\u0004\u0008\u001b\u0010\r\"\u0004\u0008\u001c\u0010\u000fR$\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R,\u0010%\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u001d\u0018\u00010$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\"\u0010+\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010\u0004\u001a\u0004\u0008,\u0010\u0006\"\u0004\u0008-\u0010\u0008R$\u0010/\u001a\u0004\u0018\u00010.8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104\u00a8\u00067"
    }
    d2 = {
        "Lcom/truecaller/ads/mediation/google/MediationCustomRequest;",
        "",
        "",
        "shouldDownloadMultipleImages",
        "Z",
        "getShouldDownloadMultipleImages",
        "()Z",
        "setShouldDownloadMultipleImages",
        "(Z)V",
        "",
        "imageOrientation",
        "I",
        "getImageOrientation",
        "()I",
        "setImageOrientation",
        "(I)V",
        "shouldDownloadImages",
        "getShouldDownloadImages",
        "setShouldDownloadImages",
        "Lcom/google/android/gms/ads/AdSize;",
        "adSize",
        "Lcom/google/android/gms/ads/AdSize;",
        "getAdSize",
        "()Lcom/google/android/gms/ads/AdSize;",
        "setAdSize",
        "(Lcom/google/android/gms/ads/AdSize;)V",
        "adChoicesPlacement",
        "getAdChoicesPlacement",
        "setAdChoicesPlacement",
        "",
        "serverParams",
        "Ljava/lang/String;",
        "getServerParams",
        "()Ljava/lang/String;",
        "setServerParams",
        "(Ljava/lang/String;)V",
        "",
        "keywords",
        "Ljava/util/Set;",
        "getKeywords",
        "()Ljava/util/Set;",
        "setKeywords",
        "(Ljava/util/Set;)V",
        "useTesting",
        "getUseTesting",
        "setUseTesting",
        "Landroid/os/Bundle;",
        "eventExtras",
        "Landroid/os/Bundle;",
        "getEventExtras",
        "()Landroid/os/Bundle;",
        "setEventExtras",
        "(Landroid/os/Bundle;)V",
        "<init>",
        "()V",
        "ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private adChoicesPlacement:I

.field private adSize:Lcom/google/android/gms/ads/AdSize;

.field private eventExtras:Landroid/os/Bundle;

.field private imageOrientation:I

.field private keywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverParams:Ljava/lang/String;

.field private shouldDownloadImages:Z

.field private shouldDownloadMultipleImages:Z

.field private useTesting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->shouldDownloadImages:Z

    .line 3
    iput-boolean v0, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->shouldDownloadMultipleImages:Z

    return-void
.end method


# virtual methods
.method public final getAdChoicesPlacement()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->adChoicesPlacement:I

    return v0
.end method

.method public final getAdSize()Lcom/google/android/gms/ads/AdSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->adSize:Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public final getEventExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->eventExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getImageOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->imageOrientation:I

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->keywords:Ljava/util/Set;

    return-object v0
.end method

.method public final getServerParams()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->serverParams:Ljava/lang/String;

    return-object v0
.end method

.method public final getShouldDownloadImages()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->shouldDownloadImages:Z

    return v0
.end method

.method public final getShouldDownloadMultipleImages()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->shouldDownloadMultipleImages:Z

    return v0
.end method

.method public final getUseTesting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->useTesting:Z

    return v0
.end method

.method public final setAdChoicesPlacement(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->adChoicesPlacement:I

    return-void
.end method

.method public final setAdSize(Lcom/google/android/gms/ads/AdSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->adSize:Lcom/google/android/gms/ads/AdSize;

    return-void
.end method

.method public final setEventExtras(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->eventExtras:Landroid/os/Bundle;

    return-void
.end method

.method public final setImageOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->imageOrientation:I

    return-void
.end method

.method public final setKeywords(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->keywords:Ljava/util/Set;

    return-void
.end method

.method public final setServerParams(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->serverParams:Ljava/lang/String;

    return-void
.end method

.method public final setShouldDownloadImages(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->shouldDownloadImages:Z

    return-void
.end method

.method public final setShouldDownloadMultipleImages(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->shouldDownloadMultipleImages:Z

    return-void
.end method

.method public final setUseTesting(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->useTesting:Z

    return-void
.end method
