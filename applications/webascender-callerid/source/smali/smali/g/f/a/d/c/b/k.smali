.class final synthetic Lg/f/a/d/c/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/n;


# instance fields
.field private final a:Lg/f/a/d/c/b/i;


# direct methods
.method constructor <init>(Lg/f/a/d/c/b/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/f/a/d/c/b/k;->a:Lg/f/a/d/c/b/i;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/f/a/d/c/b/k;->a:Lg/f/a/d/c/b/i;

    check-cast p1, Lg/f/a/d/c/b/j;

    check-cast p2, Lcom/google/android/gms/tasks/h;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/c;->H()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lg/f/a/d/c/b/f;

    new-instance v1, Lg/f/a/d/c/b/l;

    invoke-direct {v1, v0, p2}, Lg/f/a/d/c/b/l;-><init>(Lg/f/a/d/c/b/i;Lcom/google/android/gms/tasks/h;)V

    .line 3
    invoke-interface {p1, v1}, Lg/f/a/d/c/b/f;->s1(Lg/f/a/d/c/b/h;)V

    return-void
.end method
