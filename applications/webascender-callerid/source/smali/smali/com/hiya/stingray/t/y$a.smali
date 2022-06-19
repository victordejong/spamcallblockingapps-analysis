.class final Lcom/hiya/stingray/t/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/t/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/hiya/stingray/t/y;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/hiya/stingray/t/y;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/y;

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/t/z0;->valueOf(Ljava/lang/String;)Lcom/hiya/stingray/t/z0;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/hiya/stingray/t/y;-><init>(Ljava/lang/String;Lcom/hiya/stingray/t/z0;)V

    return-object v0
.end method

.method public b(I)[Lcom/hiya/stingray/t/y;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/hiya/stingray/t/y;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/t/y$a;->a(Landroid/os/Parcel;)Lcom/hiya/stingray/t/y;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/t/y$a;->b(I)[Lcom/hiya/stingray/t/y;

    move-result-object p1

    return-object p1
.end method
