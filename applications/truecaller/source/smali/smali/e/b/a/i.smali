.class public final Le/b/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
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
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/a/i;->a:Landroid/content/Context;

    iput p2, p0, Le/b/a/i;->b:I

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
    iget-object v0, p0, Le/b/a/i;->a:Landroid/content/Context;

    iget v1, p0, Le/b/a/i;->b:I

    invoke-static {v0, v1}, Le/b/a/f;->d(Landroid/content/Context;I)Le/b/a/p;

    move-result-object v0

    return-object v0
.end method
