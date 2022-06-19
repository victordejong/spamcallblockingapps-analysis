.class public final Lg/f/a/d/d/j;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/f/a/d/d/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final f:J

.field public final g:[Lg/f/a/d/d/a;

.field public final h:I

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/f/a/d/d/k;

    invoke-direct {v0}, Lg/f/a/d/d/k;-><init>()V

    sput-object v0, Lg/f/a/d/d/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[Lg/f/a/d/d/a;IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    iput-wide p1, p0, Lg/f/a/d/d/j;->f:J

    iput-object p3, p0, Lg/f/a/d/d/j;->g:[Lg/f/a/d/d/a;

    iput-boolean p5, p0, Lg/f/a/d/d/j;->i:Z

    if-eqz p5, :cond_0

    iput p4, p0, Lg/f/a/d/d/j;->h:I

    return-void

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lg/f/a/d/d/j;->h:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-wide v1, p0, Lg/f/a/d/d/j;->f:J

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->n(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lg/f/a/d/d/j;->g:[Lg/f/a/d/d/a;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->t(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget p2, p0, Lg/f/a/d/d/j;->h:I

    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->m(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lg/f/a/d/d/j;->i:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
