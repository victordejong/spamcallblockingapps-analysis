.class public final Lcom/google/android/gms/internal/vision/zzgs$zzg;
.super Lcom/google/android/gms/internal/vision/zzge;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/android/gms/internal/vision/zzic;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/vision/zzge<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field public final zzgc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field public final zzwz:Lcom/google/android/gms/internal/vision/zzic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field public final zzxa:Lcom/google/android/gms/internal/vision/zzic;

.field public final zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzic;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzic;Lcom/google/android/gms/internal/vision/zzgs$zzd;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Lcom/google/android/gms/internal/vision/zzic;",
            "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzge;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    iget-object p5, p4, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwh:Lcom/google/android/gms/internal/vision/zzka;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/vision/zzka;->zzabw:Lcom/google/android/gms/internal/vision/zzka;

    if-ne p5, v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzwz:Lcom/google/android/gms/internal/vision/zzic;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzgc:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxa:Lcom/google/android/gms/internal/vision/zzic;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zzi(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwh:Lcom/google/android/gms/internal/vision/zzka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzka;->zzip()Lcom/google/android/gms/internal/vision/zzkd;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/vision/zzkd;->zzaco:Lcom/google/android/gms/internal/vision/zzkd;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwg:Lcom/google/android/gms/internal/vision/zzgv;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/zzgv;->zzg(I)Lcom/google/android/gms/internal/vision/zzgw;

    move-result-object p1

    :cond_0
    return-object p1
.end method
