.class public Le/h/a/c/w0/m/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/w0/m/b;


# direct methods
.method public constructor <init>(Le/h/a/c/w0/m/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/w0/m/a;->a:Le/h/a/c/w0/m/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/h/a/c/w0/g$a;->e:Le/h/a/c/w0/g$a;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "PushProvider"

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Le/h/a/c/w0/m/a;->a:Le/h/a/c/w0/m/b;

    .line 3
    iget-object v1, v1, Le/h/a/c/w0/m/b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    sget-object v4, Le/h/a/c/w0/g;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    .line 6
    iget-object p1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v1, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Le/h/a/c/w0/m/a;->a:Le/h/a/c/w0/m/b;

    .line 9
    iget-object p1, p1, Le/h/a/c/w0/m/b;->c:Le/h/a/c/w0/b;

    .line 10
    invoke-interface {p1, v2, v0}, Le/h/a/c/w0/b;->a(Ljava/lang/String;Le/h/a/c/w0/g$a;)V

    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 12
    :cond_1
    iget-object p1, p0, Le/h/a/c/w0/m/a;->a:Le/h/a/c/w0/m/b;

    .line 13
    iget-object p1, p1, Le/h/a/c/w0/m/b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Le/h/a/c/w0/g;->a:Ljava/lang/String;

    const-string v5, "FCM token using googleservices.json - "

    invoke-static {v1, v4, v5, v2}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    iget-object v4, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {p1, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Le/h/a/c/w0/m/a;->a:Le/h/a/c/w0/m/b;

    .line 17
    iget-object p1, p1, Le/h/a/c/w0/m/b;->c:Le/h/a/c/w0/b;

    .line 18
    invoke-interface {p1, v2, v0}, Le/h/a/c/w0/b;->a(Ljava/lang/String;Le/h/a/c/w0/g$a;)V

    return-void
.end method
