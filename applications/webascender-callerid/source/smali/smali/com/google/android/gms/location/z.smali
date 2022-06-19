.class final synthetic Lcom/google/android/gms/location/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/n;


# instance fields
.field private final a:Lcom/google/android/gms/location/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/z;->a:Lcom/google/android/gms/location/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/z;->a:Lcom/google/android/gms/location/a;

    check-cast p1, Lg/f/a/d/c/i/p;

    check-cast p2, Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/location/a;->y(Lg/f/a/d/c/i/p;Lcom/google/android/gms/tasks/h;)V

    return-void
.end method
