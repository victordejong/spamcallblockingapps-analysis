.class public final Lcom/google/android/gms/maps/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/dynamic/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/dynamic/b;

    iput-object p1, p0, Lcom/google/android/gms/maps/a;->a:Lcom/google/android/gms/dynamic/b;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/dynamic/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/a;->a:Lcom/google/android/gms/dynamic/b;

    return-object v0
.end method
