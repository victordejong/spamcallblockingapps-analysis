.class public final synthetic Le/m/a/c/q1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/q1/l$b;

.field public final synthetic b:Le/m/a/c/q1/l$a;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/q1/l$b;Le/m/a/c/q1/l$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/q1/a;->a:Le/m/a/c/q1/l$b;

    iput-object p2, p0, Le/m/a/c/q1/a;->b:Le/m/a/c/q1/l$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/a/c/q1/a;->a:Le/m/a/c/q1/l$b;

    iget-object v1, p0, Le/m/a/c/q1/a;->b:Le/m/a/c/q1/l$a;

    .line 1
    iget-boolean v2, v0, Le/m/a/c/q1/l$b;->c:Z

    if-nez v2, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/c/q1/l$b;->b:Ljava/lang/Object;

    invoke-interface {v1, v0}, Le/m/a/c/q1/l$a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
