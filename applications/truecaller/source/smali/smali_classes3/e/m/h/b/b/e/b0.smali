.class public final synthetic Le/m/h/b/b/e/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final a:Le/m/h/b/b/e/x;

.field public final b:Le/m/h/b/b/b;


# direct methods
.method public constructor <init>(Le/m/h/b/b/e/x;Le/m/h/b/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/b/b/e/b0;->a:Le/m/h/b/b/e/x;

    iput-object p2, p0, Le/m/h/b/b/e/b0;->b:Le/m/h/b/b/b;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Le/m/h/b/b/e/b0;->a:Le/m/h/b/b/e/x;

    iget-object v0, p0, Le/m/h/b/b/e/b0;->b:Le/m/h/b/b/b;

    .line 1
    iget-object p1, p1, Le/m/h/b/b/e/x;->b:Le/m/h/b/b/e/q$a;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Le/m/h/b/b/e/q$a;->a(Le/m/h/b/b/b;Z)Le/m/h/b/b/e/q;

    move-result-object p1

    .line 2
    iget-object p1, p1, Le/m/h/b/b/e/q;->a:Le/m/h/b/b/e/e;

    invoke-virtual {p1}, Le/m/h/b/b/e/e;->b()Z

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
