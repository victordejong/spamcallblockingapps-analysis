.class public Lcom/google/android/gms/common/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/q$b;,
        Lcom/google/android/gms/common/internal/q$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/common/internal/q$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/e0;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/e0;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/q;->a:Lcom/google/android/gms/common/internal/q$b;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/i;",
            "T:",
            "Lcom/google/android/gms/common/api/h<",
            "TR;>;>(",
            "Lcom/google/android/gms/common/api/e<",
            "TR;>;TT;)",
            "Lcom/google/android/gms/tasks/g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/g0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/g0;-><init>(Lcom/google/android/gms/common/api/h;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/q;->b(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/internal/q$a;)Lcom/google/android/gms/tasks/g;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/internal/q$a;)Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/i;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/e<",
            "TR;>;",
            "Lcom/google/android/gms/common/internal/q$a<",
            "TR;TT;>;)",
            "Lcom/google/android/gms/tasks/g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/q;->a:Lcom/google/android/gms/common/internal/q$b;

    .line 2
    new-instance v1, Lcom/google/android/gms/tasks/h;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/h;-><init>()V

    .line 3
    new-instance v2, Lcom/google/android/gms/common/internal/d0;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/common/internal/d0;-><init>(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/common/internal/q$a;Lcom/google/android/gms/common/internal/q$b;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/e$a;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/i;",
            ">(",
            "Lcom/google/android/gms/common/api/e<",
            "TR;>;)",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/f0;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/f0;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/q;->b(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/internal/q$a;)Lcom/google/android/gms/tasks/g;

    move-result-object p0

    return-object p0
.end method
