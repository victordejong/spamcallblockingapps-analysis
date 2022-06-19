.class public final Ls1/a/a/a/v0/d/a/d0/n/a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/a;-><init>(Ls1/a/a/a/v0/d/a/f0/g;Ls1/z/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/d/a/f0/q;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/a$a;->b:Ls1/a/a/a/v0/d/a/d0/n/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ls1/a/a/a/v0/d/a/f0/q;

    const-string v0, "m"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/a$a;->b:Ls1/a/a/a/v0/d/a/d0/n/a;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/n/a;->e:Ls1/z/b/l;

    .line 5
    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 6
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/p;->z()Ls1/a/a/a/v0/d/a/f0/g;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/g;->J()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/s;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v0

    const-string v3, "toString"

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "hashCode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "equals"

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/q;->i()Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 12
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/d/a/f0/y;

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/y;->getType()Ls1/a/a/a/v0/d/a/f0/v;

    move-result-object p1

    .line 13
    instance-of v0, p1, Ls1/a/a/a/v0/d/a/f0/j;

    if-eqz v0, :cond_1

    .line 14
    check-cast p1, Ls1/a/a/a/v0/d/a/f0/j;

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/j;->b()Ls1/a/a/a/v0/d/a/f0/i;

    move-result-object p1

    .line 15
    instance-of v0, p1, Ls1/a/a/a/v0/d/a/f0/g;

    if-eqz v0, :cond_1

    .line 16
    check-cast p1, Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/g;->d()Ls1/a/a/a/v0/f/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/b;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.Object"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    goto :goto_1

    .line 18
    :cond_2
    :goto_0
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/q;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    .line 19
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
