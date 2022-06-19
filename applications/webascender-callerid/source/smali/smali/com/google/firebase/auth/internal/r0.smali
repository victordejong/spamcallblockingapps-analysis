.class public final Lcom/google/firebase/auth/internal/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/c;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/r0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Lcom/google/firebase/auth/internal/x0;

.field private g:Lcom/google/firebase/auth/internal/p0;

.field private h:Lcom/google/firebase/auth/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/internal/s0;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/s0;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/r0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/auth/internal/x0;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/auth/internal/x0;

    iput-object v0, p0, Lcom/google/firebase/auth/internal/r0;->f:Lcom/google/firebase/auth/internal/x0;

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/x0;->Q1()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/auth/internal/r0;->g:Lcom/google/firebase/auth/internal/p0;

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/internal/t0;

    invoke-virtual {v2}, Lcom/google/firebase/auth/internal/t0;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lcom/google/firebase/auth/internal/p0;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/auth/internal/t0;

    invoke-virtual {v3}, Lcom/google/firebase/auth/internal/t0;->q0()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/auth/internal/t0;

    invoke-virtual {v4}, Lcom/google/firebase/auth/internal/t0;->zza()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/x0;->T1()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/firebase/auth/internal/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/google/firebase/auth/internal/r0;->g:Lcom/google/firebase/auth/internal/p0;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/r0;->g:Lcom/google/firebase/auth/internal/p0;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Lcom/google/firebase/auth/internal/p0;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/x0;->T1()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/internal/p0;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/r0;->g:Lcom/google/firebase/auth/internal/p0;

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/x0;->V1()Lcom/google/firebase/auth/i0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/r0;->h:Lcom/google/firebase/auth/i0;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/auth/internal/x0;Lcom/google/firebase/auth/internal/p0;Lcom/google/firebase/auth/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/r0;->f:Lcom/google/firebase/auth/internal/x0;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/r0;->g:Lcom/google/firebase/auth/internal/p0;

    iput-object p3, p0, Lcom/google/firebase/auth/internal/r0;->h:Lcom/google/firebase/auth/i0;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/auth/internal/r0;->f:Lcom/google/firebase/auth/internal/x0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/r0;->g:Lcom/google/firebase/auth/internal/p0;

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/r0;->h:Lcom/google/firebase/auth/i0;

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
