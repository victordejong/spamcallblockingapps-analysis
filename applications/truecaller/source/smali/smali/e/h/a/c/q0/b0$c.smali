.class public Le/h/a/c/q0/b0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/q0/b0;->i(Landroid/content/Context;)V
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
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Le/h/a/c/q0/b0;


# direct methods
.method public constructor <init>(Le/h/a/c/q0/b0;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/b0$c;->b:Le/h/a/c/q0/b0;

    iput-object p2, p0, Le/h/a/c/q0/b0$c;->a:Landroid/content/Context;

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
    iget-object v0, p0, Le/h/a/c/q0/b0$c;->b:Le/h/a/c/q0/b0;

    iget-object v1, p0, Le/h/a/c/q0/b0$c;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Le/h/a/c/q0/b0;->b(Le/h/a/c/q0/b0;Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method
