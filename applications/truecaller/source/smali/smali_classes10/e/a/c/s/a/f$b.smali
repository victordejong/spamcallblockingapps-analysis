.class public final Le/a/c/s/a/f$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/s/a/f;-><init>(Le/a/c/b/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/c/s/a/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/s/a/f;


# direct methods
.method public constructor <init>(Le/a/c/s/a/f;)V
    .locals 0

    iput-object p1, p0, Le/a/c/s/a/f$b;->b:Le/a/c/s/a/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    const-class v0, Le/a/c/s/a/f$a;

    new-instance v1, Le/a/b0/b/a/b;

    invoke-direct {v1}, Le/a/b0/b/a/b;-><init>()V

    .line 2
    sget-object v2, Lcom/truecaller/common/network/util/KnownEndpoints;->INSIGHT_FEATURE_REGISTRY:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 3
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    .line 4
    new-instance v2, Le/a/c/s/b/a;

    iget-object v3, p0, Le/a/c/s/a/f$b;->b:Le/a/c/s/a/f;

    .line 5
    iget-object v3, v3, Le/a/c/s/a/f;->b:Le/a/c/b/e;

    .line 6
    invoke-interface {v3}, Le/a/c/b/e;->a()Z

    move-result v3

    invoke-direct {v2, v3}, Le/a/c/s/b/a;-><init>(Z)V

    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->e(Lu3/b0;)Le/a/b0/b/a/b;

    const/16 v2, 0x1e

    .line 7
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    iput v2, v1, Le/a/b0/b/a/b;->g:I

    .line 9
    iput-object v3, v1, Le/a/b0/b/a/b;->h:Ljava/util/concurrent/TimeUnit;

    .line 10
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/s/a/f$a;

    return-object v0
.end method
