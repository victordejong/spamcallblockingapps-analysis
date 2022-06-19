.class public Lcom/google/firebase/auth/q;
.super Lcom/google/firebase/auth/c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/z;

    invoke-direct {v0}, Lcom/google/firebase/auth/z;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/q;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/c;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    const-string v1, "Cannot create PhoneAuthCredential without either verificationProof, sessionInfo, temporary proof, or enrollment ID."

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/firebase/auth/q;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/auth/q;->g:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/firebase/auth/q;->h:Z

    iput-object p4, p0, Lcom/google/firebase/auth/q;->i:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/firebase/auth/q;->j:Z

    iput-object p6, p0, Lcom/google/firebase/auth/q;->k:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/firebase/auth/q;->l:Ljava/lang/String;

    return-void
.end method

.method public static B1(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/q;
    .locals 9

    new-instance v8, Lcom/google/firebase/auth/q;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/auth/q;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public static C1(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/q;
    .locals 9

    new-instance v8, Lcom/google/firebase/auth/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-object v4, p0

    move-object v6, p1

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/auth/q;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public A1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/q;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final D1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/q;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final E1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/q;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final F1(Z)Lcom/google/firebase/auth/q;
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/auth/q;->j:Z

    return-object p0
.end method

.method public final G1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/q;->j:Z

    return v0
.end method

.method public final H1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/q;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final I1()Lcom/google/firebase/auth/q;
    .locals 9

    new-instance v8, Lcom/google/firebase/auth/q;

    iget-object v1, p0, Lcom/google/firebase/auth/q;->f:Ljava/lang/String;

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/auth/q;->A1()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/firebase/auth/q;->h:Z

    iget-object v4, p0, Lcom/google/firebase/auth/q;->i:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/firebase/auth/q;->j:Z

    iget-object v6, p0, Lcom/google/firebase/auth/q;->k:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/firebase/auth/q;->l:Ljava/lang/String;

    move-object v0, v8

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/auth/q;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/auth/q;->I1()Lcom/google/firebase/auth/q;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/firebase/auth/q;->f:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/auth/q;->A1()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 4
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/firebase/auth/q;->h:Z

    const/4 v1, 0x3

    .line 5
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/firebase/auth/q;->i:Ljava/lang/String;

    const/4 v1, 0x4

    .line 6
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/firebase/auth/q;->j:Z

    const/4 v1, 0x5

    .line 7
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/firebase/auth/q;->k:Ljava/lang/String;

    const/4 v1, 0x6

    .line 8
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/firebase/auth/q;->l:Ljava/lang/String;

    const/4 v1, 0x7

    .line 9
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public y1()Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    return-object v0
.end method

.method public final z1()Lcom/google/firebase/auth/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/auth/q;->I1()Lcom/google/firebase/auth/q;

    move-result-object v0

    return-object v0
.end method
