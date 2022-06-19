.class public final Le/a/i/d0/e0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d0/e0/d$a;


# instance fields
.field public final synthetic a:Lq3/a/n;


# direct methods
.method public constructor <init>(Lq3/a/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/d0/e0/e;->a:Lq3/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeError(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/i/d0/e0/e;->a:Lq3/a/n;

    new-instance v1, Le/a/i/d0/i;

    new-instance v2, Le/a/i/d0/n;

    const-string v3, "Facebook"

    invoke-direct {v2, p1, v3}, Le/a/i/d0/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    invoke-static {v0, v1}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method

.method public onInitializeSuccess()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/i/d0/e0/e;->a:Lq3/a/n;

    new-instance v1, Le/a/i/d0/k;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-static {v0, v1}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method
