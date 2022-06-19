.class public Le/h/a/c/g;
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
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Le/h/a/c/f;


# direct methods
.method public constructor <init>(Le/h/a/c/f;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/g;->c:Le/h/a/c/f;

    iput-object p2, p0, Le/h/a/c/g;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Le/h/a/c/g;->b:Ljava/lang/String;

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
    iget-object v0, p0, Le/h/a/c/g;->c:Le/h/a/c/f;

    iget-object v1, p0, Le/h/a/c/g;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Le/h/a/c/g;->b:Ljava/lang/String;

    const-string v3, "$remove"

    invoke-static {v0, v1, v2, v3}, Le/h/a/c/f;->f(Le/h/a/c/f;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
