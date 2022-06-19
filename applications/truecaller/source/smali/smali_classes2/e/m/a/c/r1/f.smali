.class public final synthetic Le/m/a/c/r1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/r1/s$a;

.field public final synthetic b:Le/m/a/c/e1/d;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/r1/s$a;Le/m/a/c/e1/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/r1/f;->a:Le/m/a/c/r1/s$a;

    iput-object p2, p0, Le/m/a/c/r1/f;->b:Le/m/a/c/e1/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/a/c/r1/f;->a:Le/m/a/c/r1/s$a;

    iget-object v1, p0, Le/m/a/c/r1/f;->b:Le/m/a/c/e1/d;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter v1

    .line 3
    monitor-exit v1

    .line 4
    iget-object v0, v0, Le/m/a/c/r1/s$a;->b:Le/m/a/c/r1/s;

    .line 5
    sget v2, Le/m/a/c/q1/d0;->a:I

    .line 6
    invoke-interface {v0, v1}, Le/m/a/c/r1/s;->o(Le/m/a/c/e1/d;)V

    return-void
.end method
