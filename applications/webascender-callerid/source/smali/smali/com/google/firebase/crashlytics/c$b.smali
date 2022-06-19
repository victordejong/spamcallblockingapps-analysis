.class Lcom/google/firebase/crashlytics/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/c;->b(Lcom/google/firebase/c;Lcom/google/firebase/installations/g;Lcom/google/firebase/crashlytics/d/a;Lcom/google/firebase/analytics/a/a;)Lcom/google/firebase/crashlytics/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Z

.field final synthetic g:Lcom/google/firebase/crashlytics/d/g/l;

.field final synthetic h:Lcom/google/firebase/crashlytics/d/m/d;


# direct methods
.method constructor <init>(ZLcom/google/firebase/crashlytics/d/g/l;Lcom/google/firebase/crashlytics/d/m/d;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/c$b;->f:Z

    iput-object p2, p0, Lcom/google/firebase/crashlytics/c$b;->g:Lcom/google/firebase/crashlytics/d/g/l;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/c$b;->h:Lcom/google/firebase/crashlytics/d/m/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/c$b;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c$b;->g:Lcom/google/firebase/crashlytics/d/g/l;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/c$b;->h:Lcom/google/firebase/crashlytics/d/m/d;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/g/l;->g(Lcom/google/firebase/crashlytics/d/m/e;)Lcom/google/android/gms/tasks/g;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/c$b;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
