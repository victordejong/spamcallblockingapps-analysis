.class public final Le/a/k0/l/i$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/l/i;->a(Le/a/k0/l/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/k0/l/i;


# direct methods
.method public constructor <init>(Le/a/k0/l/i;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/l/i$a;->a:Le/a/k0/l/i;

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k0/l/i$a;->a:Le/a/k0/l/i;

    .line 2
    iget-object v1, v0, Le/a/k0/l/i;->c:Le/a/p5/v0/b;

    invoke-interface {v1}, Le/a/p5/v0/b;->d()Le/a/p5/v0/a;

    move-result-object v1

    instance-of v1, v1, Le/a/p5/v0/a$a;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v0, Le/a/k0/l/i;->b:Le/a/k0/l/h$a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/k0/l/h$a;->c()V

    .line 4
    :cond_0
    invoke-virtual {v0}, Le/a/k0/l/i;->stop()V

    :cond_1
    return-void
.end method
