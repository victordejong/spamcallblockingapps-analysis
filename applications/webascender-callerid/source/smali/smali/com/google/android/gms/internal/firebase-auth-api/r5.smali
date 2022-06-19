.class public final Lcom/google/android/gms/internal/firebase-auth-api/r5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "r5"

.field public static final synthetic d:I


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase-auth-api/c2;

.field private final b:Lcom/google/android/gms/internal/firebase-auth-api/r2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/q5;Lcom/google/android/gms/internal/firebase-auth-api/p5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/q5;->e(Lcom/google/android/gms/internal/firebase-auth-api/q5;)Lcom/google/android/gms/internal/firebase-auth-api/s2;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/q5;->f(Lcom/google/android/gms/internal/firebase-auth-api/q5;)Lcom/google/android/gms/internal/firebase-auth-api/c2;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/r5;->a:Lcom/google/android/gms/internal/firebase-auth-api/c2;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/q5;->g(Lcom/google/android/gms/internal/firebase-auth-api/q5;)Lcom/google/android/gms/internal/firebase-auth-api/r2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/r5;->b:Lcom/google/android/gms/internal/firebase-auth-api/r2;

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/r5;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/google/android/gms/internal/firebase-auth-api/q2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/r5;->b:Lcom/google/android/gms/internal/firebase-auth-api/r2;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/r2;->c()Lcom/google/android/gms/internal/firebase-auth-api/q2;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
