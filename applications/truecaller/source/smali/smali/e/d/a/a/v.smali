.class public final Le/d/a/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Le/d/a/a/o;

.field public final synthetic c:Le/d/a/a/e;


# direct methods
.method public constructor <init>(Le/d/a/a/e;Ljava/lang/String;Le/d/a/a/o;)V
    .locals 0

    iput-object p1, p0, Le/d/a/a/v;->c:Le/d/a/a/e;

    iput-object p2, p0, Le/d/a/a/v;->a:Ljava/lang/String;

    iput-object p3, p0, Le/d/a/a/v;->b:Le/d/a/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Le/d/a/a/v;->c:Le/d/a/a/e;

    iget-object v1, p0, Le/d/a/a/v;->a:Ljava/lang/String;

    .line 1
    invoke-static {v0, v1}, Le/d/a/a/e;->p(Le/d/a/a/e;Ljava/lang/String;)Le/d/a/a/n$a;

    move-result-object v0

    .line 2
    iget-object v1, v0, Le/d/a/a/n$a;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Le/d/a/a/v;->b:Le/d/a/a/o;

    .line 4
    iget-object v0, v0, Le/d/a/a/n$a;->b:Le/d/a/a/k;

    .line 5
    check-cast v2, Le/d/a/a/g;

    invoke-virtual {v2, v0, v1}, Le/d/a/a/g;->a(Le/d/a/a/k;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/d/a/a/v;->b:Le/d/a/a/o;

    .line 6
    iget-object v0, v0, Le/d/a/a/n$a;->b:Le/d/a/a/k;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzp;->zzg()Lcom/google/android/gms/internal/play_billing/zzp;

    move-result-object v2

    check-cast v1, Le/d/a/a/g;

    invoke-virtual {v1, v0, v2}, Le/d/a/a/g;->a(Le/d/a/a/k;Ljava/util/List;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
