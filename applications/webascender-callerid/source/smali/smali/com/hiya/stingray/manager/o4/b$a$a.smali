.class public final Lcom/hiya/stingray/manager/o4/b$a$a;
.super Lcom/google/android/gms/location/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/o4/b$a;->a(Li/c/b0/b/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/o4/b$a;

.field final synthetic b:Li/c/b0/b/x;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/o4/b$a;Li/c/b0/b/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/x;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/manager/o4/b$a$a;->a:Lcom/hiya/stingray/manager/o4/b$a;

    iput-object p2, p0, Lcom/hiya/stingray/manager/o4/b$a$a;->b:Li/c/b0/b/x;

    invoke-direct {p0}, Lcom/google/android/gms/location/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->y1()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/s/k;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/b$a$a;->b:Li/c/b0/b/x;

    invoke-interface {v0, p1}, Li/c/b0/b/k;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/manager/o4/b$a$a;->b:Li/c/b0/b/x;

    invoke-interface {p1}, Li/c/b0/b/k;->onComplete()V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/manager/o4/b$a$a;->a:Lcom/hiya/stingray/manager/o4/b$a;

    iget-object p1, p1, Lcom/hiya/stingray/manager/o4/b$a;->a:Lcom/hiya/stingray/manager/o4/b;

    invoke-static {p1}, Lcom/hiya/stingray/manager/o4/b;->a(Lcom/hiya/stingray/manager/o4/b;)Lcom/google/android/gms/location/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/location/a;->t(Lcom/google/android/gms/location/b;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/manager/o4/b$a$a;->b:Li/c/b0/b/x;

    new-instance v0, Lcom/hiya/stingray/exception/HiyaGenericException;

    const-string v1, "Location is unavailable"

    invoke-direct {v0, v1}, Lcom/hiya/stingray/exception/HiyaGenericException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Li/c/b0/b/k;->onError(Ljava/lang/Throwable;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/manager/o4/b$a$a;->a:Lcom/hiya/stingray/manager/o4/b$a;

    iget-object p1, p1, Lcom/hiya/stingray/manager/o4/b$a;->a:Lcom/hiya/stingray/manager/o4/b;

    invoke-static {p1}, Lcom/hiya/stingray/manager/o4/b;->a(Lcom/hiya/stingray/manager/o4/b;)Lcom/google/android/gms/location/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/location/a;->t(Lcom/google/android/gms/location/b;)Lcom/google/android/gms/tasks/g;

    :goto_0
    return-void
.end method
