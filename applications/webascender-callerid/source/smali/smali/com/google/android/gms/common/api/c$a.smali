.class public Lcom/google/android/gms/common/api/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/c$a$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/google/android/gms/common/api/c$a;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/p;

.field public final b:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/c$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/c$a$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c$a$a;->a()Lcom/google/android/gms/common/api/c$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/c$a;->c:Lcom/google/android/gms/common/api/c$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/api/internal/p;Landroid/accounts/Account;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/c$a;->a:Lcom/google/android/gms/common/api/internal/p;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/common/api/c$a;->b:Landroid/os/Looper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/p;Landroid/accounts/Account;Landroid/os/Looper;Lcom/google/android/gms/common/api/n;)V
    .locals 0

    const/4 p2, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/c$a;-><init>(Lcom/google/android/gms/common/api/internal/p;Landroid/accounts/Account;Landroid/os/Looper;)V

    return-void
.end method
