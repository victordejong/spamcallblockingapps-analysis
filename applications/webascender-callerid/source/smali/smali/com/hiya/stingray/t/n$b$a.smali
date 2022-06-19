.class Lcom/hiya/stingray/t/n$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/t/n$b;->a(Landroid/os/Parcel;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/hiya/stingray/t/n;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hiya/stingray/t/n$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/hiya/stingray/t/n;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/o;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/n;

    return-object p1
.end method

.method public b(I)[Lcom/hiya/stingray/t/n;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/hiya/stingray/t/n;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/t/n$b$a;->a(Landroid/os/Parcel;)Lcom/hiya/stingray/t/n;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/t/n$b$a;->b(I)[Lcom/hiya/stingray/t/n;

    move-result-object p1

    return-object p1
.end method
