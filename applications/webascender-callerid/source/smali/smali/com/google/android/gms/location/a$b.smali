.class final Lcom/google/android/gms/location/a$b;
.super Lcom/google/android/gms/location/a$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/location/a$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/location/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/google/android/gms/location/a$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/location/a$d;-><init>(Lcom/google/android/gms/tasks/h;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/location/a$b;->b:Lcom/google/android/gms/location/a$a;

    return-void
.end method


# virtual methods
.method public final M1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/location/a$b;->b:Lcom/google/android/gms/location/a$a;

    invoke-interface {v0}, Lcom/google/android/gms/location/a$a;->zza()V

    return-void
.end method
