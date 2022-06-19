.class public final Lcom/google/firebase/auth/i0;
.super Lcom/google/firebase/auth/p;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/i0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/android/gms/internal/firebase-auth-api/fo;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/j0;

    invoke-direct {v0}, Lcom/google/firebase/auth/j0;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/i0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/fo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/p;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/i0;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/auth/i0;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/auth/i0;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/auth/i0;->i:Lcom/google/android/gms/internal/firebase-auth-api/fo;

    iput-object p5, p0, Lcom/google/firebase/auth/i0;->j:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/auth/i0;->k:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/firebase/auth/i0;->l:Ljava/lang/String;

    return-void
.end method

.method public static A1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/i0;
    .locals 9

    const-string v0, "Must specify a non-empty providerId"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/r;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify an idToken or an accessToken."

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v8, Lcom/google/firebase/auth/i0;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/auth/i0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/fo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public static B1(Lcom/google/android/gms/internal/firebase-auth-api/fo;)Lcom/google/firebase/auth/i0;
    .locals 9

    const-string v0, "Must specify a non-null webSignInCredential"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/r;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/firebase/auth/i0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v5, p0

    .line 2
    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/auth/i0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/fo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static C1(Lcom/google/firebase/auth/i0;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/fo;
    .locals 11

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/i0;->i:Lcom/google/android/gms/internal/firebase-auth-api/fo;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/fo;

    iget-object v2, p0, Lcom/google/firebase/auth/i0;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/auth/i0;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/auth/i0;->f:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/firebase/auth/i0;->k:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/google/firebase/auth/i0;->j:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/firebase/auth/i0;->l:Ljava/lang/String;

    move-object v1, v0

    move-object v8, p1

    .line 3
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/firebase-auth-api/fo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/auth/i0;->f:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/i0;->g:Ljava/lang/String;

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/i0;->h:Ljava/lang/String;

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/i0;->i:Lcom/google/android/gms/internal/firebase-auth-api/fo;

    const/4 v2, 0x4

    .line 5
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/firebase/auth/i0;->j:Ljava/lang/String;

    const/4 v1, 0x5

    .line 6
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/google/firebase/auth/i0;->k:Ljava/lang/String;

    const/4 v1, 0x6

    .line 7
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/google/firebase/auth/i0;->l:Ljava/lang/String;

    const/4 v1, 0x7

    .line 8
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final y1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/i0;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final z1()Lcom/google/firebase/auth/c;
    .locals 9

    new-instance v8, Lcom/google/firebase/auth/i0;

    iget-object v1, p0, Lcom/google/firebase/auth/i0;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/auth/i0;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/auth/i0;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/auth/i0;->i:Lcom/google/android/gms/internal/firebase-auth-api/fo;

    iget-object v5, p0, Lcom/google/firebase/auth/i0;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/firebase/auth/i0;->k:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/firebase/auth/i0;->l:Ljava/lang/String;

    move-object v0, v8

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/auth/i0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/fo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method
