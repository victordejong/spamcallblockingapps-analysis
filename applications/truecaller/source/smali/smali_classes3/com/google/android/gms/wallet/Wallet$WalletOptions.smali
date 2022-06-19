.class public final Lcom/google/android/gms/wallet/Wallet$WalletOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasAccountOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WalletOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v1, v0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->a:I

    .line 4
    iput v1, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->a:I

    .line 5
    iget v1, v0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->b:I

    .line 6
    iput v1, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->b:I

    .line 7
    iget-boolean v0, v0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->c:Z

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->c:Z

    return-void
.end method

.method public constructor <init>(Le/m/a/f/s/b;)V
    .locals 1

    new-instance p1, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    .line 9
    invoke-direct {p1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;-><init>()V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iget v0, p1, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->a:I

    .line 12
    iput v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->a:I

    .line 13
    iget v0, p1, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->b:I

    .line 14
    iput v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->b:I

    .line 15
    iget-boolean p1, p1, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->c:Z

    .line 16
    iput-boolean p1, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->c:Z

    return-void
.end method


# virtual methods
.method public I()Landroid/accounts/Account;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    iget v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->a:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->b:I

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-static {v0, v0}, Lcom/google/android/gms/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->c:Z

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean p1, p1, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->c:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->a:I

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-boolean v1, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
