.class public Le/k/a/c/j0/a;
.super Le/k/a/c/j0/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/j0/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/j0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/c0/k;Le/k/a/c/i;)Le/k/a/c/j0/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/j0/c$b;"
        }
    .end annotation

    .line 1
    sget-object p1, Le/k/a/c/j0/a$a;->b:Le/k/a/c/j0/a$a;

    .line 2
    iget-object p2, p2, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 3
    iget-object p1, p1, Le/k/a/c/j0/a$a;->a:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Le/k/a/c/j0/c$b;->b:Le/k/a/c/j0/c$b;

    return-object p1

    .line 5
    :cond_0
    sget-object p1, Le/k/a/c/j0/c$b;->c:Le/k/a/c/j0/c$b;

    return-object p1
.end method

.method public b(Le/k/a/c/c0/k;Le/k/a/c/i;Ljava/lang/String;)Le/k/a/c/j0/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/i;",
            "Ljava/lang/String;",
            ")",
            "Le/k/a/c/j0/c$b;"
        }
    .end annotation

    .line 1
    sget-object p1, Le/k/a/c/j0/c$b;->c:Le/k/a/c/j0/c$b;

    return-object p1
.end method

.method public c(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/i;)Le/k/a/c/j0/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/i;",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/j0/c$b;"
        }
    .end annotation

    .line 1
    sget-object p1, Le/k/a/c/j0/c$b;->a:Le/k/a/c/j0/c$b;

    return-object p1
.end method
