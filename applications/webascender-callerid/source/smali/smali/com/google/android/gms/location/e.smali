.class final synthetic Lcom/google/android/gms/location/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/n;


# instance fields
.field private final a:Lcom/google/android/gms/location/a;

.field private final b:Lcom/google/android/gms/location/a$c;

.field private final c:Lcom/google/android/gms/location/b;

.field private final d:Lcom/google/android/gms/location/a$a;

.field private final e:Lg/f/a/d/c/i/s;

.field private final f:Lcom/google/android/gms/common/api/internal/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/a;Lcom/google/android/gms/location/a$c;Lcom/google/android/gms/location/b;Lcom/google/android/gms/location/a$a;Lg/f/a/d/c/i/s;Lcom/google/android/gms/common/api/internal/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/e;->a:Lcom/google/android/gms/location/a;

    iput-object p2, p0, Lcom/google/android/gms/location/e;->b:Lcom/google/android/gms/location/a$c;

    iput-object p3, p0, Lcom/google/android/gms/location/e;->c:Lcom/google/android/gms/location/b;

    iput-object p4, p0, Lcom/google/android/gms/location/e;->d:Lcom/google/android/gms/location/a$a;

    iput-object p5, p0, Lcom/google/android/gms/location/e;->e:Lg/f/a/d/c/i/s;

    iput-object p6, p0, Lcom/google/android/gms/location/e;->f:Lcom/google/android/gms/common/api/internal/i;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/location/e;->a:Lcom/google/android/gms/location/a;

    iget-object v1, p0, Lcom/google/android/gms/location/e;->b:Lcom/google/android/gms/location/a$c;

    iget-object v2, p0, Lcom/google/android/gms/location/e;->c:Lcom/google/android/gms/location/b;

    iget-object v3, p0, Lcom/google/android/gms/location/e;->d:Lcom/google/android/gms/location/a$a;

    iget-object v4, p0, Lcom/google/android/gms/location/e;->e:Lg/f/a/d/c/i/s;

    iget-object v5, p0, Lcom/google/android/gms/location/e;->f:Lcom/google/android/gms/common/api/internal/i;

    move-object v6, p1

    check-cast v6, Lg/f/a/d/c/i/p;

    move-object v7, p2

    check-cast v7, Lcom/google/android/gms/tasks/h;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/location/a;->z(Lcom/google/android/gms/location/a$c;Lcom/google/android/gms/location/b;Lcom/google/android/gms/location/a$a;Lg/f/a/d/c/i/s;Lcom/google/android/gms/common/api/internal/i;Lg/f/a/d/c/i/p;Lcom/google/android/gms/tasks/h;)V

    return-void
.end method
