.class public final Lcom/google/firebase/auth/internal/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final g:Lcom/google/firebase/auth/internal/c0;


# instance fields
.field private final f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/internal/c0;

    .line 1
    invoke-direct {v0}, Lcom/google/firebase/auth/internal/c0;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/c0;->g:Lcom/google/firebase/auth/internal/c0;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/da;

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/da;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/c0;->f:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/google/firebase/auth/internal/c0;
    .locals 1

    sget-object v0, Lcom/google/firebase/auth/internal/c0;->g:Lcom/google/firebase/auth/internal/c0;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/c0;->f:Landroid/os/Handler;

    .line 1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
