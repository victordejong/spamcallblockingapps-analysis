.class final Lg/f/a/d/c/i/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/a/d/c/i/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/f/a/d/c/i/v<",
        "Lg/f/a/d/c/i/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lg/f/a/d/c/i/y;


# direct methods
.method constructor <init>(Lg/f/a/d/c/i/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/a/d/c/i/a0;->a:Lg/f/a/d/c/i/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/a/d/c/i/a0;->a:Lg/f/a/d/c/i/y;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->H()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lg/f/a/d/c/i/g;

    return-object v0
.end method

.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/d/c/i/a0;->a:Lg/f/a/d/c/i/y;

    invoke-static {v0}, Lg/f/a/d/c/i/y;->u0(Lg/f/a/d/c/i/y;)V

    return-void
.end method
