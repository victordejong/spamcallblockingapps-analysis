.class public final synthetic Le/a/d0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Le/a/d0/f0;


# direct methods
.method public synthetic constructor <init>(Le/a/d0/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/c;->a:Le/a/d0/f0;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Le/a/d0/c;->a:Le/a/d0/f0;

    check-cast p1, Le/a/e3/e/b;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    iget-boolean v2, p1, Le/a/e3/e/b;->a:Z

    .line 4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p1, Le/a/e3/e/b;->b:Ljava/lang/String;

    const-string v2, "initiated"

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CALLERID_Push_Sent"

    goto :goto_0

    :cond_0
    const-string v1, "AFTERCALL_Push_Sent"

    .line 7
    :goto_0
    iget-object v2, v0, Le/a/d0/f0;->s:Le/a/q2/a;

    .line 8
    new-instance v3, Le/a/q2/g$b$a;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v4, v4}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 9
    invoke-interface {v2, v3}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 10
    iget-object v0, v0, Le/a/d0/f0;->Y:Le/a/d0/l0;

    invoke-interface {v0, p1}, Le/a/d0/l0;->b(Le/a/e3/e/b;)V

    :cond_1
    return-void
.end method
