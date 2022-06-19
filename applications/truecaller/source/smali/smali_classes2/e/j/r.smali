.class public final synthetic Le/j/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/j/k0$a;

.field public final synthetic b:Le/j/s0;


# direct methods
.method public synthetic constructor <init>(Le/j/k0$a;Le/j/s0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/j/r;->a:Le/j/k0$a;

    iput-object p2, p0, Le/j/r;->b:Le/j/s0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Le/j/r;->a:Le/j/k0$a;

    iget-object v1, p0, Le/j/r;->b:Le/j/s0;

    const-string v2, "$callback"

    .line 1
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    move-object v3, v0

    check-cast v3, Le/j/k0$b;

    iget-object v4, v1, Le/j/s0;->a:Le/j/k0;

    .line 3
    iget-wide v5, v1, Le/j/s0;->e:J

    .line 4
    iget-wide v7, v1, Le/j/s0;->c:J

    .line 5
    invoke-interface/range {v3 .. v8}, Le/j/k0$b;->b(Le/j/k0;JJ)V

    return-void
.end method
