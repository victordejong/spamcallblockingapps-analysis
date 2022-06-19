.class final Lcom/google/android/gms/maps/j;
.super Lcom/google/android/gms/maps/g/f;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/maps/c$e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$e;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/j;->a:Lcom/google/android/gms/maps/c$e;

    invoke-direct {p0}, Lcom/google/android/gms/maps/g/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final p0(Lg/f/a/d/c/j/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/j;->a:Lcom/google/android/gms/maps/c$e;

    new-instance v1, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/c;-><init>(Lg/f/a/d/c/j/g;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$e;->a(Lcom/google/android/gms/maps/model/c;)V

    return-void
.end method
