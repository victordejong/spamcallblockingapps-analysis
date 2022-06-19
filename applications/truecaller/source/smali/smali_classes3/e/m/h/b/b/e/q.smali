.class public final Le/m/h/b/b/e/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/h/b/b/e/q$b;,
        Le/m/h/b/b/e/q$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field public final a:Le/m/h/b/b/e/e;

.field public final b:Le/m/h/b/b/e/q$b;

.field public c:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/google/android/gms/tasks/CancellationTokenSource;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "TranslateModelLoader"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/m/h/b/b/e/q;->e:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>(Le/m/h/b/b/e/e;Le/m/h/b/b/e/q$b;Le/m/h/b/b/e/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/h/b/b/e/q;->a:Le/m/h/b/b/e/e;

    .line 3
    iput-object p2, p0, Le/m/h/b/b/e/q;->b:Le/m/h/b/b/e/q$b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/h/a/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/h/b/b/e/q;->a:Le/m/h/b/b/e/e;

    invoke-virtual {v0}, Le/m/h/b/b/e/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "No existing model file"

    .line 2
    sget-object v1, Le/m/h/b/b/e/q;->e:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v2, "TranslateModelLoader"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Le/m/h/a/a;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Le/m/h/a/a;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
