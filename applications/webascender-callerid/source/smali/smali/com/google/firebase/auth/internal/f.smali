.class public final Lcom/google/firebase/auth/internal/f;
.super Lcom/google/firebase/auth/n;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/t;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/firebase/auth/internal/h;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/firebase/auth/i0;

.field private final j:Lcom/google/firebase/auth/internal/x0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/internal/g;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/g;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/google/firebase/auth/internal/h;Ljava/lang/String;Lcom/google/firebase/auth/i0;Lcom/google/firebase/auth/internal/x0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/t;",
            ">;",
            "Lcom/google/firebase/auth/internal/h;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/i0;",
            "Lcom/google/firebase/auth/internal/x0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/n;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/f;->f:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/m;

    .line 4
    instance-of v1, v0, Lcom/google/firebase/auth/t;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/auth/internal/f;->f:Ljava/util/List;

    .line 5
    check-cast v0, Lcom/google/firebase/auth/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/google/firebase/auth/internal/h;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/f;->g:Lcom/google/firebase/auth/internal/h;

    .line 7
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/auth/internal/f;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/auth/internal/f;->i:Lcom/google/firebase/auth/i0;

    iput-object p5, p0, Lcom/google/firebase/auth/internal/f;->j:Lcom/google/firebase/auth/internal/x0;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/auth/internal/f;->f:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->u(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/f;->g:Lcom/google/firebase/auth/internal/h;

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/f;->h:Ljava/lang/String;

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/f;->i:Lcom/google/firebase/auth/i0;

    const/4 v2, 0x4

    .line 5
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/f;->j:Lcom/google/firebase/auth/internal/x0;

    const/4 v2, 0x5

    .line 6
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
