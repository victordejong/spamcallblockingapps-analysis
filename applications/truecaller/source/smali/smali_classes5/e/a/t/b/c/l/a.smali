.class public final synthetic Le/a/t/b/c/l/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/t/b/c/l/e;


# direct methods
.method public synthetic constructor <init>(Le/a/t/b/c/l/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/t/b/c/l/a;->a:Le/a/t/b/c/l/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/a/t/b/c/l/a;->a:Le/a/t/b/c/l/e;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, v1}, Le/a/t/b/c/l/e;->d(Z)V

    return-void
.end method
