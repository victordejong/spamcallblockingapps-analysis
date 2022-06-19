.class public Le/h/a/c/w0/k;
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
.field public final synthetic a:Le/h/a/c/w0/i;


# direct methods
.method public constructor <init>(Le/h/a/c/w0/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/w0/k;->a:Le/h/a/c/w0/i;

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
    iget-object v0, p0, Le/h/a/c/w0/k;->a:Le/h/a/c/w0/i;

    .line 2
    iget-object v1, v0, Le/h/a/c/w0/i;->g:Landroid/content/Context;

    .line 3
    invoke-static {v0, v1}, Le/h/a/c/w0/i;->d(Le/h/a/c/w0/i;Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method
