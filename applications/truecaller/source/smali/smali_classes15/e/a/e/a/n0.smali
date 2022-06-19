.class public final synthetic Le/a/e/a/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# instance fields
.field public final synthetic a:Le/a/e/a/k3;


# direct methods
.method public synthetic constructor <init>(Le/a/e/a/k3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/a/n0;->a:Le/a/e/a/k3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le/a/e/a/n0;->a:Le/a/e/a/k3;

    .line 1
    iget-object v0, v0, Le/a/e/a/k3;->r:Le/a/c3/d;

    const-string v1, "BUILD_KEY"

    invoke-interface {v0, v1}, Le/a/c3/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
