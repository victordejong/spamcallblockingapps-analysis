.class public final Lcom/truecaller/swish/deeplink/data/SwishDto$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/swish/deeplink/data/SwishDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/truecaller/swish/deeplink/data/SwishDto;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    const-string v0, "in"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/swish/deeplink/data/SwishDto;

    sget-object v1, Lcom/truecaller/swish/deeplink/data/SwishStringDto;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/swish/deeplink/data/SwishStringDto;

    sget-object v3, Lcom/truecaller/swish/deeplink/data/SwishNumberDto;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/swish/deeplink/data/SwishNumberDto;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/swish/deeplink/data/SwishStringDto;

    invoke-direct {v0, v2, v3, p1}, Lcom/truecaller/swish/deeplink/data/SwishDto;-><init>(Lcom/truecaller/swish/deeplink/data/SwishStringDto;Lcom/truecaller/swish/deeplink/data/SwishNumberDto;Lcom/truecaller/swish/deeplink/data/SwishStringDto;)V

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/truecaller/swish/deeplink/data/SwishDto;

    return-object p1
.end method
