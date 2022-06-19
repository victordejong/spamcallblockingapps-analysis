.class Lcom/google/firebase/crashlytics/d/g/j$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/g/j$c;->a()Lcom/google/android/gms/tasks/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/f<",
        "Lcom/google/firebase/crashlytics/d/m/i/a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Executor;

.field final synthetic b:Lcom/google/firebase/crashlytics/d/g/j$c;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/g/j$c;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/g/j$c$a;->b:Lcom/google/firebase/crashlytics/d/g/j$c;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/g/j$c$a;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/firebase/crashlytics/d/m/i/a;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/g/j$c$a;->b(Lcom/google/firebase/crashlytics/d/m/i/a;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/firebase/crashlytics/d/m/i/a;)Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/d/m/i/a;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v0, "Received null app settings, cannot send reports at crash time."

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/tasks/g;

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/g/j$c$a;->b:Lcom/google/firebase/crashlytics/d/g/j$c;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/d/g/j$c;->j:Lcom/google/firebase/crashlytics/d/g/j;

    .line 5
    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/g/j;->k(Lcom/google/firebase/crashlytics/d/g/j;)Lcom/google/android/gms/tasks/g;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/g/j$c$a;->b:Lcom/google/firebase/crashlytics/d/g/j$c;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/d/g/j$c;->j:Lcom/google/firebase/crashlytics/d/g/j;

    .line 6
    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/g/j;->f(Lcom/google/firebase/crashlytics/d/g/j;)Lcom/google/firebase/crashlytics/d/g/d0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/g/j$c$a;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/d/g/d0;->p(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/g;

    move-result-object v1

    aput-object v1, p1, v0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/tasks/j;->g([Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method
