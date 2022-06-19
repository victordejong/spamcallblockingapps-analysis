.class public final Le/b/a/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/f;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Le/b/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Le/b/a/p<",
        "Le/b/a/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/b/a/e;


# direct methods
.method public constructor <init>(Le/b/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/a/f$c;->a:Le/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Le/b/a/p;

    iget-object v1, p0, Le/b/a/f$c;->a:Le/b/a/e;

    invoke-direct {v0, v1}, Le/b/a/p;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
