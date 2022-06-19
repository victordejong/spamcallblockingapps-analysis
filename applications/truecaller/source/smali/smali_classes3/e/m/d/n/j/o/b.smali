.class public final synthetic Le/m/d/n/j/o/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/h;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic b:Le/m/d/n/j/j/h0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Le/m/d/n/j/j/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/n/j/o/b;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p2, p0, Le/m/d/n/j/o/b;->b:Le/m/d/n/j/j/h0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Le/m/d/n/j/o/b;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Le/m/d/n/j/o/b;->b:Le/m/d/n/j/j/h0;

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {p1, v1}, Le/m/a/f/q/b0;->y(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
