.class public final Lcom/truecaller/ads/leadgen/dto/LeadgenDto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ads/leadgen/dto/LeadgenDto$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u001f\u001a\u00020\u001b\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008 \u0010!J\u0010\u0010\u0003\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J \u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\t\u0010\nR\u001c\u0010\u0010\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00118\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u000c\u0010\u0015R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0018\u001a\u0004\u0008\u0013\u0010\u0019R\u001c\u0010\u001f\u001a\u00020\u001b8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001c\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/truecaller/ads/leadgen/dto/LeadgenDto;",
        "Landroid/os/Parcelable;",
        "",
        "describeContents",
        "()I",
        "Landroid/os/Parcel;",
        "parcel",
        "flags",
        "Ls1/s;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;",
        "b",
        "Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;",
        "d",
        "()Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;",
        "theme",
        "",
        "Lcom/truecaller/ads/leadgen/dto/LeadgenInput;",
        "c",
        "Ljava/util/List;",
        "()Ljava/util/List;",
        "inputs",
        "Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;",
        "Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;",
        "()Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;",
        "pixel",
        "Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;",
        "a",
        "Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;",
        "()Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;",
        "description",
        "<init>",
        "(Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;Ljava/util/List;Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;)V",
        "truecaller_googlePlayRelease"
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
            "Lcom/truecaller/ads/leadgen/dto/LeadgenDto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;
    .annotation runtime Le/m/e/d0/b;
        value = "desc"
    .end annotation
.end field

.field private final b:Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;
    .annotation runtime Le/m/e/d0/b;
        value = "theme"
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/ads/leadgen/dto/LeadgenInput;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "inputs"
    .end annotation
.end field

.field private final d:Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;
    .annotation runtime Le/m/e/d0/b;
        value = "pixel"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/ads/leadgen/dto/LeadgenDto$a;

    invoke-direct {v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenDto$a;-><init>()V

    sput-object v0, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;Ljava/util/List;Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;",
            "Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/leadgen/dto/LeadgenInput;",
            ">;",
            "Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;",
            ")V"
        }
    .end annotation

    const-string v0, "description"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "theme"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputs"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->a:Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;

    iput-object p2, p0, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;

    iput-object p3, p0, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->d:Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;

    return-void
.end method


# virtual methods
.method public final a()Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->a:Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/leadgen/dto/LeadgenInput;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->c:Ljava/util/List;

    return-object v0
.end method

.method public final c()Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->d:Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;

    return-object v0
.end method

.method public final d()Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->a:Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;

    invoke-virtual {p2, p1, v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->c:Ljava/util/List;

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

    check-cast v1, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    invoke-virtual {v1, p1, v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->d:Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, p1, v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method
