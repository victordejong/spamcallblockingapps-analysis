.class public final synthetic Le/a/a/c/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/a/c/y3$e;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/z;->a:Le/a/a/c/y3$e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/a/a/c/z;->a:Le/a/a/c/y3$e;

    .line 1
    iget-object v0, v0, Le/a/a/c/y3$e;->b:Le/a/a/c/y3;

    iget-object v0, v0, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/c/f4;->kh(Z)V

    return-void
.end method
