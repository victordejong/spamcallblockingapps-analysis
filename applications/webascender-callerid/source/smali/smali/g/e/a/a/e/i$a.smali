.class final Lg/e/a/a/e/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/e/a/a/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lg/e/a/a/e/i;",
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
.method public a(Landroid/os/Parcel;)Lg/e/a/a/e/i;
    .locals 1

    .line 1
    new-instance v0, Lg/e/a/a/e/i;

    invoke-direct {v0, p1}, Lg/e/a/a/e/i;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lg/e/a/a/e/i;
    .locals 0

    .line 1
    new-array p1, p1, [Lg/e/a/a/e/i;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/e/a/a/e/i$a;->a(Landroid/os/Parcel;)Lg/e/a/a/e/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/e/a/a/e/i$a;->b(I)[Lg/e/a/a/e/i;

    move-result-object p1

    return-object p1
.end method
