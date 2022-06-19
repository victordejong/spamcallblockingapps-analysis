.class public final synthetic Le/m/d/b0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field public final synthetic a:Le/m/d/b0/k;


# direct methods
.method public synthetic constructor <init>(Le/m/d/b0/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/b0/d;->a:Le/m/d/b0/k;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    iget-object v0, p0, Le/m/d/b0/d;->a:Le/m/d/b0/k;

    check-cast p1, Ljava/lang/Void;

    .line 1
    invoke-virtual {v0}, Le/m/d/b0/k;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
