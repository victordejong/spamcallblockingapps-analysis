.class public final Lcom/google/android/gms/common/internal/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/internal/v0;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/internal/v0;->a:Ljava/lang/String;

    .line 4
    iput p4, p0, Lcom/google/android/gms/common/internal/v0;->c:I

    .line 5
    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/v0;->d:Z

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/v0;->a:Ljava/lang/String;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/v0;->b:Ljava/lang/String;

    return-object v0
.end method

.method final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/internal/v0;->c:I

    return v0
.end method

.method final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/v0;->d:Z

    return v0
.end method
