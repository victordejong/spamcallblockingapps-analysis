.class public final synthetic Le/m/d/b0/r/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field public final synthetic a:Le/m/d/b0/r/l$a;


# direct methods
.method public synthetic constructor <init>(Le/m/d/b0/r/l$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/b0/r/f;->a:Le/m/d/b0/r/l$a;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    iget-object v0, p0, Le/m/d/b0/r/f;->a:Le/m/d/b0/r/l$a;

    check-cast p1, Le/m/d/b0/r/k;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
