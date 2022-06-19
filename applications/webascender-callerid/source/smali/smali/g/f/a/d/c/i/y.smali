.class public Lg/f/a/d/c/i/y;
.super Lcom/google/android/gms/common/internal/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/h<",
        "Lg/f/a/d/c/i/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final F:Ljava/lang/String;

.field protected final G:Lg/f/a/d/c/i/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/f/a/d/c/i/v<",
            "Lg/f/a/d/c/i/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/d$b;Lcom/google/android/gms/common/api/d$c;Ljava/lang/String;Lcom/google/android/gms/common/internal/e;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/d$b;Lcom/google/android/gms/common/api/d$c;)V

    .line 2
    new-instance p1, Lg/f/a/d/c/i/a0;

    invoke-direct {p1, p0}, Lg/f/a/d/c/i/a0;-><init>(Lg/f/a/d/c/i/y;)V

    iput-object p1, p0, Lg/f/a/d/c/i/y;->G:Lg/f/a/d/c/i/v;

    .line 3
    iput-object p5, p0, Lg/f/a/d/c/i/y;->F:Ljava/lang/String;

    return-void
.end method

.method static synthetic u0(Lg/f/a/d/c/i/y;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->x()V

    return-void
.end method


# virtual methods
.method public B()[Lcom/google/android/gms/common/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/location/y;->e:[Lcom/google/android/gms/common/d;

    return-object v0
.end method

.method protected E()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lg/f/a/d/c/i/y;->F:Ljava/lang/String;

    const-string v2, "client_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected I()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected J()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method public q()I
    .locals 1

    const v0, 0xb2c988

    return v0
.end method

.method protected synthetic y(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lg/f/a/d/c/i/g;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lg/f/a/d/c/i/g;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lg/f/a/d/c/i/h;

    invoke-direct {v0, p1}, Lg/f/a/d/c/i/h;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
