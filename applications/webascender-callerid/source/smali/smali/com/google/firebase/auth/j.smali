.class public Lcom/google/firebase/auth/j;
.super Lcom/google/firebase/auth/c;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/v0;

    invoke-direct {v0}, Lcom/google/firebase/auth/v0;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/c;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/firebase/auth/j;->f:Ljava/lang/String;

    return-void
.end method

.method public static A1(Lcom/google/firebase/auth/j;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/fo;
    .locals 11

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v10, Lcom/google/android/gms/internal/firebase-auth-api/fo;

    iget-object v2, p0, Lcom/google/firebase/auth/j;->f:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/auth/j;->y1()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/fo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/firebase/auth/j;->f:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public y1()Ljava/lang/String;
    .locals 1

    const-string v0, "github.com"

    return-object v0
.end method

.method public final z1()Lcom/google/firebase/auth/c;
    .locals 2

    new-instance v0, Lcom/google/firebase/auth/j;

    iget-object v1, p0, Lcom/google/firebase/auth/j;->f:Ljava/lang/String;

    .line 1
    invoke-direct {v0, v1}, Lcom/google/firebase/auth/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
