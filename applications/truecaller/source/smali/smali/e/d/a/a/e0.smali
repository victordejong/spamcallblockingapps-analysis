.class public final synthetic Le/d/a/a/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/d/a/a/c;


# direct methods
.method public synthetic constructor <init>(Le/d/a/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a/e0;->a:Le/d/a/a/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/d/a/a/e0;->a:Le/d/a/a/c;

    .line 1
    sget-object v1, Le/d/a/a/a0;->m:Le/d/a/a/k;

    check-cast v0, Le/d/a/a/f;

    .line 2
    iget-object v0, v0, Le/d/a/a/f;->a:Lq3/a/w;

    const-string v2, "it"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lq3/a/w;->K(Ljava/lang/Object;)Z

    return-void
.end method
