.class public final synthetic Le/a/d0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# instance fields
.field public final synthetic a:Le/a/d0/f0;


# direct methods
.method public synthetic constructor <init>(Le/a/d0/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/k;->a:Le/a/d0/f0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le/a/d0/k;->a:Le/a/d0/f0;

    .line 1
    invoke-virtual {v0}, Le/a/d0/f0;->h()V

    const-string v1, "CallerIdManager.stopSelf"

    .line 2
    invoke-static {v1}, Le/a/d0/f0;->k(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Le/a/d0/f0;->B:Z

    .line 4
    iget-object v0, v0, Le/a/d0/f0;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d0/y;

    invoke-interface {v0}, Le/a/d0/y;->b()V

    const/4 v0, 0x0

    return-object v0
.end method
