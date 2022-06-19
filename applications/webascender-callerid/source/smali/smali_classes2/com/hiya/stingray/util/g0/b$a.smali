.class final Lcom/hiya/stingray/util/g0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/util/g0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/hiya/stingray/util/g0/b;",
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
.method public a(Landroid/os/Parcel;)Lcom/hiya/stingray/util/g0/b;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/g0/b;

    const-class v1, Landroid/os/Bundle;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/hiya/stingray/util/g0/b;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public b(I)[Lcom/hiya/stingray/util/g0/b;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/hiya/stingray/util/g0/b;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/util/g0/b$a;->a(Landroid/os/Parcel;)Lcom/hiya/stingray/util/g0/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/util/g0/b$a;->b(I)[Lcom/hiya/stingray/util/g0/b;

    move-result-object p1

    return-object p1
.end method
