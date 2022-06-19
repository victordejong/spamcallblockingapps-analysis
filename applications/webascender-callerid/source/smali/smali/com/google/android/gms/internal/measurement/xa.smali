.class public final Lcom/google/android/gms/internal/measurement/xa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/i4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/i4<",
        "Lcom/google/android/gms/internal/measurement/ya;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Lcom/google/android/gms/internal/measurement/xa;


# instance fields
.field private final f:Lcom/google/android/gms/internal/measurement/i4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/i4<",
            "Lcom/google/android/gms/internal/measurement/ya;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/xa;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/xa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/xa;->g:Lcom/google/android/gms/internal/measurement/xa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/za;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/za;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m4;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i4;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m4;->a(Lcom/google/android/gms/internal/measurement/i4;)Lcom/google/android/gms/internal/measurement/i4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/xa;->f:Lcom/google/android/gms/internal/measurement/i4;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/xa;->g:Lcom/google/android/gms/internal/measurement/xa;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/xa;->b()Lcom/google/android/gms/internal/measurement/ya;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ya;->zza()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/measurement/ya;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/xa;->f:Lcom/google/android/gms/internal/measurement/i4;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/i4;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ya;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/xa;->b()Lcom/google/android/gms/internal/measurement/ya;

    move-result-object v0

    return-object v0
.end method
