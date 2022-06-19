.class public final Lcom/google/android/gms/internal/measurement/jb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/i4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/i4<",
        "Lcom/google/android/gms/internal/measurement/kb;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Lcom/google/android/gms/internal/measurement/jb;


# instance fields
.field private final f:Lcom/google/android/gms/internal/measurement/i4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/i4<",
            "Lcom/google/android/gms/internal/measurement/kb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/jb;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/jb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/jb;->g:Lcom/google/android/gms/internal/measurement/jb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/lb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lb;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m4;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i4;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/m4;->a(Lcom/google/android/gms/internal/measurement/i4;)Lcom/google/android/gms/internal/measurement/i4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jb;->f:Lcom/google/android/gms/internal/measurement/i4;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/jb;->g:Lcom/google/android/gms/internal/measurement/jb;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/jb;->d()Lcom/google/android/gms/internal/measurement/kb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/kb;->zza()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/jb;->g:Lcom/google/android/gms/internal/measurement/jb;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/jb;->d()Lcom/google/android/gms/internal/measurement/kb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/kb;->a()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/jb;->g:Lcom/google/android/gms/internal/measurement/jb;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/jb;->d()Lcom/google/android/gms/internal/measurement/kb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/kb;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final d()Lcom/google/android/gms/internal/measurement/kb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jb;->f:Lcom/google/android/gms/internal/measurement/i4;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/i4;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/kb;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/jb;->d()Lcom/google/android/gms/internal/measurement/kb;

    move-result-object v0

    return-object v0
.end method
