.class public final Le/a/h/d/c$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/d/c;-><init>(Le/a/u3/g;Le/a/b0/q/z;Le/a/e4/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/h/d/c$a;->b:I

    iput-object p2, p0, Le/a/h/d/c$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Le/a/h/d/c$a;->b:I

    const-string v1, "IN"

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1
    iget-object v0, p0, Le/a/h/d/c$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/h/d/c;

    .line 2
    iget-object v0, v0, Le/a/h/d/c;->d:Le/a/u3/g;

    .line 3
    iget-object v1, v0, Le/a/u3/g;->y2:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0xb4

    aget-object v3, v3, v4

    invoke-virtual {v1, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/d/c$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/h/d/c;

    .line 5
    iget-object v0, v0, Le/a/h/d/c;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Le/a/h/d/c$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/h/d/c;

    .line 7
    iget-object v0, v0, Le/a/h/d/c;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 9
    throw v0

    .line 10
    :cond_2
    iget-object v0, p0, Le/a/h/d/c$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/h/d/c;

    .line 11
    iget-object v0, v0, Le/a/h/d/c;->e:Le/a/b0/q/z;

    .line 12
    invoke-interface {v0}, Le/a/b0/q/z;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 14
    :cond_3
    iget-object v0, p0, Le/a/h/d/c$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/h/d/c;

    .line 15
    iget-object v0, v0, Le/a/h/d/c;->f:Le/a/e4/p;

    .line 16
    invoke-interface {v0}, Le/a/e4/p;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Le/a/e4/p;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
