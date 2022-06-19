.class public final synthetic Le/m/d/n/j/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic a:Le/m/d/n/j/j/q0;


# direct methods
.method public synthetic constructor <init>(Le/m/d/n/j/j/q0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/n/j/j/c;->a:Le/m/d/n/j/j/q0;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le/m/d/n/j/j/c;->a:Le/m/d/n/j/j/q0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/d/n/j/j/h0;

    .line 4
    invoke-virtual {p1}, Le/m/d/n/j/j/h0;->c()Ljava/lang/String;

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 6
    invoke-virtual {p1}, Le/m/d/n/j/j/h0;->b()Ljava/io/File;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v2}, Le/m/d/n/j/f;->a(I)Z

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    .line 13
    invoke-virtual {v0, v2}, Le/m/d/n/j/f;->a(I)Z

    const/4 p1, 0x0

    .line 14
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
