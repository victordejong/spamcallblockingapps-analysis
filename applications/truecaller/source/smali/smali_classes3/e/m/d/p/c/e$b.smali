.class public Le/m/d/p/c/e$b;
.super Le/m/d/p/c/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/d/p/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Le/m/d/p/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/m/d/v/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/b<",
            "Le/m/d/k/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/d/v/b;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/v/b<",
            "Le/m/d/k/a/a;",
            ">;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Le/m/d/p/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/m/d/p/c/e$a;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/p/c/e$b;->b:Le/m/d/v/b;

    .line 3
    iput-object p2, p0, Le/m/d/p/c/e$b;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method
