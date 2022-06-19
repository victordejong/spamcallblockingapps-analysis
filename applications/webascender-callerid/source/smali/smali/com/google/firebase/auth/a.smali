.class public Lcom/google/firebase/auth/a;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Z

.field private final k:Ljava/lang/String;

.field private final l:Z

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/f0;

    invoke-direct {v0}, Lcom/google/firebase/auth/f0;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/a;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/auth/a;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/auth/a;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/auth/a;->i:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/firebase/auth/a;->j:Z

    iput-object p6, p0, Lcom/google/firebase/auth/a;->k:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/firebase/auth/a;->l:Z

    iput-object p8, p0, Lcom/google/firebase/auth/a;->m:Ljava/lang/String;

    iput p9, p0, Lcom/google/firebase/auth/a;->n:I

    iput-object p10, p0, Lcom/google/firebase/auth/a;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public B1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public C1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public D1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final E1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final F1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final G1()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/auth/a;->n:I

    return v0
.end method

.method public final H1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/auth/a;->D1()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/auth/a;->C1()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 5
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/firebase/auth/a;->h:Ljava/lang/String;

    const/4 v1, 0x3

    .line 6
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/auth/a;->B1()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 8
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/auth/a;->z1()Z

    move-result v0

    const/4 v1, 0x5

    .line 10
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/auth/a;->A1()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    .line 12
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/auth/a;->y1()Z

    move-result v0

    const/4 v1, 0x7

    .line 14
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/firebase/auth/a;->m:Ljava/lang/String;

    const/16 v1, 0x8

    .line 15
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lcom/google/firebase/auth/a;->n:I

    const/16 v1, 0x9

    .line 16
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->m(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/firebase/auth/a;->o:Ljava/lang/String;

    const/16 v1, 0xa

    .line 17
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 18
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public y1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/a;->l:Z

    return v0
.end method

.method public z1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/a;->j:Z

    return v0
.end method
