.class public final synthetic Le/m/a/c/l1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/l1/q$a;

.field public final synthetic b:Le/m/a/c/l1/q;

.field public final synthetic c:Le/m/a/c/l1/p$a;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/l1/q$a;Le/m/a/c/l1/q;Le/m/a/c/l1/p$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/l1/e;->a:Le/m/a/c/l1/q$a;

    iput-object p2, p0, Le/m/a/c/l1/e;->b:Le/m/a/c/l1/q;

    iput-object p3, p0, Le/m/a/c/l1/e;->c:Le/m/a/c/l1/p$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/a/c/l1/e;->a:Le/m/a/c/l1/q$a;

    iget-object v1, p0, Le/m/a/c/l1/e;->b:Le/m/a/c/l1/q;

    iget-object v2, p0, Le/m/a/c/l1/e;->c:Le/m/a/c/l1/p$a;

    .line 1
    iget v0, v0, Le/m/a/c/l1/q$a;->a:I

    check-cast v1, Le/m/a/c/b1/a;

    invoke-virtual {v1, v0, v2}, Le/m/a/c/b1/a;->y(ILe/m/a/c/l1/p$a;)V

    return-void
.end method
