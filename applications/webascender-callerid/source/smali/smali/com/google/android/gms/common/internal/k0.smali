.class public final Lcom/google/android/gms/common/internal/k0;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/k0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final f:I

.field private g:Landroid/os/IBinder;

.field private h:Lcom/google/android/gms/common/b;

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/j0;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/j0;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/k0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/b;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/common/internal/k0;->f:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/internal/k0;->g:Landroid/os/IBinder;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/common/internal/k0;->h:Lcom/google/android/gms/common/b;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/k0;->i:Z

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/k0;->j:Z

    return-void
.end method


# virtual methods
.method public final A1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/k0;->i:Z

    return v0
.end method

.method public final B1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/k0;->j:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/internal/k0;

    if-nez v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Lcom/google/android/gms/common/internal/k0;

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/common/internal/k0;->h:Lcom/google/android/gms/common/b;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/k0;->h:Lcom/google/android/gms/common/b;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/k0;->y1()Lcom/google/android/gms/common/internal/k;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/k0;->y1()Lcom/google/android/gms/common/internal/k;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/android/gms/common/internal/k0;->f:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->m(Landroid/os/Parcel;II)V

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/k0;->g:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->l(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/common/internal/k0;->h:Lcom/google/android/gms/common/b;

    const/4 v2, 0x3

    .line 5
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 6
    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/k0;->i:Z

    const/4 v1, 0x4

    .line 7
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    .line 8
    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/k0;->j:Z

    const/4 v1, 0x5

    .line 9
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final y1()Lcom/google/android/gms/common/internal/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/k0;->g:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/k$a;->w(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/k;

    move-result-object v0

    return-object v0
.end method

.method public final z1()Lcom/google/android/gms/common/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/k0;->h:Lcom/google/android/gms/common/b;

    return-object v0
.end method
