.class Lcom/google/android/gms/location/a$d;
.super Lg/f/a/d/c/i/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lg/f/a/d/c/i/d;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/location/a$d;->a:Lcom/google/android/gms/tasks/h;

    return-void
.end method


# virtual methods
.method public final b2(Lg/f/a/d/c/i/c;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lg/f/a/d/c/i/c;->i()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/location/a$d;->a:Lcom/google/android/gms/tasks/h;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/s;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/tasks/h;)V

    return-void
.end method
