.class public final Lcom/google/android/gms/internal/measurement/wb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/i4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/i4<",
        "Lcom/google/android/gms/internal/measurement/xb;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Lcom/google/android/gms/internal/measurement/wb;


# instance fields
.field private final f:Lcom/google/android/gms/internal/measurement/i4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/i4<",
            "Lcom/google/android/gms/internal/measurement/xb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/wb;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/wb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/wb;->g:Lcom/google/android/gms/internal/measurement/wb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/yb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/yb;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m4;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i4;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m4;->a(Lcom/google/android/gms/internal/measurement/i4;)Lcom/google/android/gms/internal/measurement/i4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/wb;->f:Lcom/google/android/gms/internal/measurement/i4;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/wb;->g:Lcom/google/android/gms/internal/measurement/wb;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/wb;->c()Lcom/google/android/gms/internal/measurement/xb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/xb;->zza()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/wb;->g:Lcom/google/android/gms/internal/measurement/wb;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/wb;->c()Lcom/google/android/gms/internal/measurement/xb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/xb;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/internal/measurement/xb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/wb;->f:Lcom/google/android/gms/internal/measurement/i4;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/i4;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/xb;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/wb;->c()Lcom/google/android/gms/internal/measurement/xb;

    move-result-object v0

    return-object v0
.end method
