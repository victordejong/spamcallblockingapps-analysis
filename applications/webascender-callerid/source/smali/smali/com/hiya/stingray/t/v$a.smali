.class final Lcom/hiya/stingray/t/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/t/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/hiya/stingray/t/v;",
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
.method public a(Landroid/os/Parcel;)Lcom/hiya/stingray/t/v;
    .locals 11

    .line 1
    new-instance v10, Lcom/hiya/stingray/t/v;

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/t/o0;->valueOf(Ljava/lang/String;)Lcom/hiya/stingray/t/o0;

    move-result-object v3

    const-class v0, Lcom/hiya/stingray/t/v0;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    const-class v0, Lcom/hiya/stingray/t/n;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v5

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/t/m0;->valueOf(Ljava/lang/String;)Lcom/hiya/stingray/t/m0;

    move-result-object v6

    const-class v0, Lcom/hiya/stingray/t/r0;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/hiya/stingray/t/r0;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/common/collect/z;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/hiya/stingray/t/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/t/o0;Ljava/util/Map;Ljava/util/List;Lcom/hiya/stingray/t/m0;Lcom/hiya/stingray/t/r0;Lcom/google/common/collect/z;Ljava/lang/String;)V

    return-object v10
.end method

.method public b(I)[Lcom/hiya/stingray/t/v;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/hiya/stingray/t/v;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/t/v$a;->a(Landroid/os/Parcel;)Lcom/hiya/stingray/t/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/t/v$a;->b(I)[Lcom/hiya/stingray/t/v;

    move-result-object p1

    return-object p1
.end method
