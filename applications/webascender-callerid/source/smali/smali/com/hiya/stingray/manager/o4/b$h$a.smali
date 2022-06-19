.class final Lcom/hiya/stingray/manager/o4/b$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/o4/b$h;->a(Li/c/b0/b/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/e<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Li/c/b0/b/x;


# direct methods
.method constructor <init>(Li/c/b0/b/x;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/o4/b$h$a;->a:Li/c/b0/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/b$h$a;->a:Li/c/b0/b/x;

    invoke-interface {v0, p1}, Li/c/b0/b/k;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/manager/o4/b$h$a;->a:Li/c/b0/b/x;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Last known location is unknown."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Li/c/b0/b/k;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/o4/b$h$a;->a(Landroid/location/Location;)V

    return-void
.end method
