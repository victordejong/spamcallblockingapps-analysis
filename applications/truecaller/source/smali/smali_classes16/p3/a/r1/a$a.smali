.class public Lp3/a/r1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/i0$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/r1/a;->b(Lp3/a/i0$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/i0$h;

.field public final synthetic b:Lp3/a/r1/a;


# direct methods
.method public constructor <init>(Lp3/a/r1/a;Lp3/a/i0$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/r1/a$a;->b:Lp3/a/r1/a;

    iput-object p2, p0, Lp3/a/r1/a$a;->a:Lp3/a/i0$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/p;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lp3/a/r1/a$a;->b:Lp3/a/r1/a;

    iget-object v1, p0, Lp3/a/r1/a$a;->a:Lp3/a/i0$h;

    .line 2
    iget-object v2, v0, Lp3/a/r1/a;->c:Ljava/util/Map;

    .line 3
    invoke-virtual {v1}, Lp3/a/i0$h;->a()Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const-string v4, "%s does not have exactly one group"

    invoke-static {v6, v4, v3}, Ln3/g0/y;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/a/v;

    .line 6
    new-instance v4, Lp3/a/v;

    .line 7
    iget-object v3, v3, Lp3/a/v;->a:Ljava/util/List;

    .line 8
    sget-object v5, Lp3/a/a;->b:Lp3/a/a;

    invoke-direct {v4, v3, v5}, Lp3/a/v;-><init>(Ljava/util/List;Lp3/a/a;)V

    .line 9
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v2, p1, Lp3/a/p;->a:Lp3/a/o;

    .line 11
    sget-object v3, Lp3/a/o;->d:Lp3/a/o;

    if-ne v2, v3, :cond_2

    .line 12
    invoke-virtual {v1}, Lp3/a/i0$h;->d()V

    .line 13
    :cond_2
    invoke-static {v1}, Lp3/a/r1/a;->d(Lp3/a/i0$h;)Lp3/a/r1/a$d;

    move-result-object v1

    .line 14
    iget-object v2, v1, Lp3/a/r1/a$d;->a:Ljava/lang/Object;

    check-cast v2, Lp3/a/p;

    .line 15
    iget-object v2, v2, Lp3/a/p;->a:Lp3/a/o;

    .line 16
    sget-object v4, Lp3/a/o;->c:Lp3/a/o;

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    iget-object v2, p1, Lp3/a/p;->a:Lp3/a/o;

    .line 18
    sget-object v4, Lp3/a/o;->a:Lp3/a/o;

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 19
    iget-object v2, p1, Lp3/a/p;->a:Lp3/a/o;

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 21
    :cond_3
    iput-object p1, v1, Lp3/a/r1/a$d;->a:Ljava/lang/Object;

    .line 22
    invoke-virtual {v0}, Lp3/a/r1/a;->f()V

    :cond_4
    :goto_1
    return-void
.end method
