.class public Le/h/a/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/a;->c(Landroid/app/Activity;)V
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
.field public final synthetic a:Le/h/a/c/a;


# direct methods
.method public constructor <init>(Le/h/a/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/a$a;->a:Le/h/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/a$a;->a:Le/h/a/c/a;

    .line 2
    iget-object v1, v0, Le/h/a/c/a;->f:Le/h/a/c/w;

    .line 3
    iget-boolean v2, v1, Le/h/a/c/w;->i:Z

    if-nez v2, :cond_0

    .line 4
    iget-boolean v1, v1, Le/h/a/c/w;->g:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v0}, Le/h/a/c/a;->a(Le/h/a/c/a;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
