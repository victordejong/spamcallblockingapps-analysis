.class public final synthetic Le/m/a/b/j/c0/h/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/b/j/c0/h/v;


# direct methods
.method public synthetic constructor <init>(Le/m/a/b/j/c0/h/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/b/j/c0/h/n;->a:Le/m/a/b/j/c0/h/v;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/a/b/j/c0/h/n;->a:Le/m/a/b/j/c0/h/v;

    .line 1
    iget-object v1, v0, Le/m/a/b/j/c0/h/v;->d:Le/m/a/b/j/d0/b;

    new-instance v2, Le/m/a/b/j/c0/h/m;

    invoke-direct {v2, v0}, Le/m/a/b/j/c0/h/m;-><init>(Le/m/a/b/j/c0/h/v;)V

    invoke-interface {v1, v2}, Le/m/a/b/j/d0/b;->k(Le/m/a/b/j/d0/b$a;)Ljava/lang/Object;

    return-void
.end method
