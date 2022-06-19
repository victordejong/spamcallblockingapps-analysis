.class public final synthetic Le/m/a/c/k1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/k1/b$d;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/k1/b$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/k1/a;->a:Le/m/a/c/k1/b$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/m/a/c/k1/a;->a:Le/m/a/c/k1/b$d;

    .line 1
    iget-object v0, v0, Le/m/a/c/k1/b$d;->c:Le/m/a/c/k1/b;

    .line 2
    iget-object v1, v0, Le/m/a/c/k1/b;->g:Le/m/a/c/k1/b$d;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Le/m/a/c/k1/b;->a(Le/m/a/c/k1/b;)V

    :cond_0
    return-void
.end method
