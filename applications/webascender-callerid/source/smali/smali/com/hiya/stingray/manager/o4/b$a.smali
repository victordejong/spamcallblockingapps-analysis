.class final Lcom/hiya/stingray/manager/o4/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/o4/b;->e()Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/y<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/o4/b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/o4/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/o4/b$a;->a:Lcom/hiya/stingray/manager/o4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/x;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/x<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/b$a;->a:Lcom/hiya/stingray/manager/o4/b;

    invoke-static {v0}, Lcom/hiya/stingray/manager/o4/b;->a(Lcom/hiya/stingray/manager/o4/b;)Lcom/google/android/gms/location/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/manager/o4/b$a;->a:Lcom/hiya/stingray/manager/o4/b;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/o4/b;->j()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/hiya/stingray/manager/o4/b$a$a;

    invoke-direct {v2, p0, p1}, Lcom/hiya/stingray/manager/o4/b$a$a;-><init>(Lcom/hiya/stingray/manager/o4/b$a;Li/c/b0/b/x;)V

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/location/a;->u(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/b;Landroid/os/Looper;)Lcom/google/android/gms/tasks/g;

    return-void
.end method
