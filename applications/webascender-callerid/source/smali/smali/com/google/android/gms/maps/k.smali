.class final Lcom/google/android/gms/maps/k;
.super Lcom/google/android/gms/maps/g/p;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/maps/c$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/k;->a:Lcom/google/android/gms/maps/c$a;

    invoke-direct {p0}, Lcom/google/android/gms/maps/g/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final H0(Lg/f/a/d/c/j/g;)Lcom/google/android/gms/dynamic/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/k;->a:Lcom/google/android/gms/maps/c$a;

    new-instance v1, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/c;-><init>(Lg/f/a/d/c/j/g;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$a;->b(Lcom/google/android/gms/maps/model/c;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->F(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    return-object p1
.end method

.method public final c1(Lg/f/a/d/c/j/g;)Lcom/google/android/gms/dynamic/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/k;->a:Lcom/google/android/gms/maps/c$a;

    new-instance v1, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/c;-><init>(Lg/f/a/d/c/j/g;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$a;->a(Lcom/google/android/gms/maps/model/c;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->F(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    return-object p1
.end method
