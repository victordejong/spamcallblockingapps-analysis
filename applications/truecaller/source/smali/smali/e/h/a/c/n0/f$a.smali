.class public Le/h/a/c/n0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/n0/f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/n0/f;


# direct methods
.method public constructor <init>(Le/h/a/c/n0/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/n0/f$a;->a:Le/h/a/c/n0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/n0/f$a;->a:Le/h/a/c/n0/f;

    iget-object v0, v0, Le/h/a/c/n0/f;->a:Le/h/a/c/n0/e$d;

    iget-object v1, v0, Le/h/a/c/n0/e$d;->d:Le/h/a/c/n0/e;

    .line 2
    iget-object v1, v1, Le/h/a/c/n0/e;->n:Le/h/a/c/i0;

    .line 3
    iget-object v0, v0, Le/h/a/c/n0/e$d;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Le/h/a/c/i0;->b(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Le/h/a/c/n0/f$a;->a:Le/h/a/c/n0/f;

    iget-object v0, v0, Le/h/a/c/n0/f;->a:Le/h/a/c/n0/e$d;

    iget-object v0, v0, Le/h/a/c/n0/e$d;->d:Le/h/a/c/n0/e;

    invoke-virtual {v0}, Le/h/a/c/n0/e;->c()V

    .line 5
    iget-object v0, p0, Le/h/a/c/n0/f$a;->a:Le/h/a/c/n0/f;

    iget-object v0, v0, Le/h/a/c/n0/f;->a:Le/h/a/c/n0/e$d;

    iget-object v1, v0, Le/h/a/c/n0/e$d;->d:Le/h/a/c/n0/e;

    iget-object v2, v0, Le/h/a/c/n0/e$d;->c:Landroid/content/Context;

    iget-object v3, v0, Le/h/a/c/n0/e$d;->a:Lorg/json/JSONObject;

    iget v0, v0, Le/h/a/c/n0/e$d;->b:I

    invoke-virtual {v1, v2, v3, v0}, Le/h/a/c/n0/e;->e(Landroid/content/Context;Lorg/json/JSONObject;I)V

    const/4 v0, 0x0

    return-object v0
.end method
