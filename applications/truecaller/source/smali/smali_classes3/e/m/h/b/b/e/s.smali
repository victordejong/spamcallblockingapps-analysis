.class public final synthetic Le/m/h/b/b/e/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final a:Le/m/h/b/b/e/q;


# direct methods
.method public constructor <init>(Le/m/h/b/b/e/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/b/b/e/s;->a:Le/m/h/b/b/e/q;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Le/m/h/b/b/e/s;->a:Le/m/h/b/b/e/q;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Le/m/h/b/b/e/q;->c:Lcom/google/android/gms/tasks/Task;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    iget-object v3, v0, Le/m/h/b/b/e/q;->b:Le/m/h/b/b/e/q$b;

    .line 4
    iget-wide v4, v3, Le/m/h/b/b/e/q$b;->a:D

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    iput-wide v4, v3, Le/m/h/b/b/e/q$b;->a:D

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 5
    iput-wide v6, v3, Le/m/h/b/b/e/q$b;->a:D

    .line 6
    :cond_0
    iget-wide v4, v3, Le/m/h/b/b/e/q$b;->a:D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    iget-wide v8, v3, Le/m/h/b/b/e/q$b;->a:D

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    iput-wide v6, v3, Le/m/h/b/b/e/q$b;->a:D

    :cond_1
    if-nez v2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, v0, Le/m/h/b/b/e/q;->b:Le/m/h/b/b/e/q$b;

    const-wide/16 v2, 0x0

    .line 9
    iput-wide v2, p1, Le/m/h/b/b/e/q$b;->a:D

    .line 10
    invoke-virtual {v0}, Le/m/h/b/b/e/q;->a()V

    return-object v1

    .line 11
    :cond_2
    new-instance p1, Le/m/h/a/a;

    const/16 v0, 0xd

    const-string v1, "Model not downloaded."

    invoke-direct {p1, v1, v0, v2}, Le/m/h/a/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1
.end method
