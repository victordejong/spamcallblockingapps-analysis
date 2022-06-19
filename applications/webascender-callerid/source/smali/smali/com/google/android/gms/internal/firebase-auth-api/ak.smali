.class public final Lcom/google/android/gms/internal/firebase-auth-api/ak;
.super Lcom/google/android/gms/common/internal/h;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/h<",
        "Lcom/google/android/gms/internal/firebase-auth-api/ok;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zj;"
    }
.end annotation


# static fields
.field private static final H:Lcom/google/android/gms/common/l/a;


# instance fields
.field private final F:Landroid/content/Context;

.field private final G:Lcom/google/android/gms/internal/firebase-auth-api/tk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/l/a;

    const-string v1, "FirebaseAuth:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseAuth"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/l/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ak;->H:Lcom/google/android/gms/common/l/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Lcom/google/android/gms/internal/firebase-auth-api/tk;Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/api/internal/k;)V
    .locals 7

    const/16 v3, 0x70

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/api/internal/k;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ak;->F:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/ak;->G:Lcom/google/android/gms/internal/firebase-auth-api/tk;

    return-void
.end method


# virtual methods
.method public final B()[Lcom/google/android/gms/common/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:[Lcom/google/android/gms/common/d;

    return-object v0
.end method

.method protected final E()Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/internal/c;->E()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ak;->G:Lcom/google/android/gms/internal/firebase-auth-api/tk;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/tk;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.firebase.auth.API_KEY"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/yk;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.firebase.auth.LIBRARY_VERSION"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final I()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    return-object v0
.end method

.method protected final J()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.auth.api.gms.service.START"

    return-object v0
.end method

.method protected final K()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ak;->G:Lcom/google/android/gms/internal/firebase-auth-api/tk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ii;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ak;->H:Lcom/google/android/gms/common/l/a;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Preparing to create service connection to fallback implementation"

    .line 1
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/l/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ak;->F:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ak;->H:Lcom/google/android/gms/common/l/a;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Preparing to create service connection to gms implementation"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/l/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/internal/firebase-auth-api/ok;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/c;->H()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/ok;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ak;->F:Landroid/content/Context;

    const-string v1, "com.google.firebase.auth"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method protected final bridge synthetic y(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/ok;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/ok;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/mk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/mk;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
