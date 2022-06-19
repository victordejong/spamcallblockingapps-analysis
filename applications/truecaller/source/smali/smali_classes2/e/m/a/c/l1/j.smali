.class public final synthetic Le/m/a/c/l1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/l1/s;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/l1/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/l1/j;->a:Le/m/a/c/l1/s;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/m/a/c/l1/j;->a:Le/m/a/c/l1/s;

    .line 1
    iget-boolean v1, v0, Le/m/a/c/l1/s;->P:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Le/m/a/c/l1/s;->p:Le/m/a/c/l1/o$a;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v1, v0}, Le/m/a/c/l1/x$a;->g(Le/m/a/c/l1/x;)V

    :cond_0
    return-void
.end method
