.class final Lg/f/a/d/c/i/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/i$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/i$b<",
        "Lcom/google/android/gms/location/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/location/Location;


# direct methods
.method constructor <init>(Lg/f/a/d/c/i/o;Landroid/location/Location;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lg/f/a/d/c/i/n;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/location/c;

    .line 2
    iget-object v0, p0, Lg/f/a/d/c/i/n;->a:Landroid/location/Location;

    invoke-interface {p1, v0}, Lcom/google/android/gms/location/c;->a(Landroid/location/Location;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
