.class public final Le/a/w4/t/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l4/c$a;
.implements Le/a/l4/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/w4/t/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public a:Le/a/l4/c$b;

.field public final b:[Ljava/lang/String;

.field public final synthetic c:Le/a/w4/t/b/a;


# direct methods
.method public constructor <init>(Le/a/w4/t/b/a;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "normalizedNumbers"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/w4/t/b/a$a;->c:Le/a/w4/t/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/w4/t/b/a$a;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/w4/t/b/a$a;->a:Le/a/l4/c$b;

    .line 2
    iget-object v0, p0, Le/a/w4/t/b/a$a;->c:Le/a/w4/t/b/a;

    .line 3
    iget-object v0, v0, Le/a/w4/t/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Le/a/l4/c$b;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/w4/t/b/a$a;->a:Le/a/l4/c$b;

    .line 2
    iget-object p1, p0, Le/a/w4/t/b/a$a;->c:Le/a/w4/t/b/a;

    .line 3
    iget-object p1, p1, Le/a/w4/t/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Le/a/w4/t/b/a$a;->c:Le/a/w4/t/b/a;

    iget-object v0, p0, Le/a/w4/t/b/a$a;->b:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Le/a/w4/t/b/a;->b([Ljava/lang/String;)Le/a/l4/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/w4/t/b/a$a;->ki(Le/a/l4/e;)V

    return-void
.end method

.method public isAttached()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/t/b/a$a;->a:Le/a/l4/c$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ki(Le/a/l4/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/t/b/a$a;->a:Le/a/l4/c$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/l4/c$b;->ki(Le/a/l4/e;)V

    :cond_0
    return-void
.end method
