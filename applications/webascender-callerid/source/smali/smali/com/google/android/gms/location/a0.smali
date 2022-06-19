.class final synthetic Lcom/google/android/gms/location/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/a$a;


# instance fields
.field private final a:Lcom/google/android/gms/location/a;

.field private final b:Lcom/google/android/gms/location/a$c;

.field private final c:Lcom/google/android/gms/location/b;

.field private final d:Lcom/google/android/gms/location/a$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/a;Lcom/google/android/gms/location/a$c;Lcom/google/android/gms/location/b;Lcom/google/android/gms/location/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/a0;->a:Lcom/google/android/gms/location/a;

    iput-object p2, p0, Lcom/google/android/gms/location/a0;->b:Lcom/google/android/gms/location/a$c;

    iput-object p3, p0, Lcom/google/android/gms/location/a0;->c:Lcom/google/android/gms/location/b;

    iput-object p4, p0, Lcom/google/android/gms/location/a0;->d:Lcom/google/android/gms/location/a$a;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/location/a0;->a:Lcom/google/android/gms/location/a;

    iget-object v1, p0, Lcom/google/android/gms/location/a0;->b:Lcom/google/android/gms/location/a$c;

    iget-object v2, p0, Lcom/google/android/gms/location/a0;->c:Lcom/google/android/gms/location/b;

    iget-object v3, p0, Lcom/google/android/gms/location/a0;->d:Lcom/google/android/gms/location/a$a;

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v1, v4}, Lcom/google/android/gms/location/a$c;->a(Z)V

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/a;->t(Lcom/google/android/gms/location/b;)Lcom/google/android/gms/tasks/g;

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v3}, Lcom/google/android/gms/location/a$a;->zza()V

    :cond_0
    return-void
.end method
