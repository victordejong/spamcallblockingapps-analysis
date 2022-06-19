.class public final Le/i/b/z1/p$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/z1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Le/i/b/z1/d0;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile a:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/util/List<",
            "Le/i/b/z1/d0$a;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile b:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/m/e/k;


# direct methods
.method public constructor <init>(Le/m/e/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/z1/p$a;->d:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/e/g0/b;->i:Le/m/e/g0/b;

    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/a;->d()V

    const/4 v1, 0x0

    move v4, v1

    move-object v3, v2

    .line 4
    :goto_0
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 5
    invoke-virtual {p1}, Le/m/e/g0/a;->k0()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v6

    if-ne v6, v0, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const-string v6, "wrapper_version"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "profile_id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "feedbacks"

    .line 9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 10
    iget-object v2, p0, Le/i/b/z1/p$a;->a:Le/m/e/b0;

    if-nez v2, :cond_2

    .line 11
    iget-object v2, p0, Le/i/b/z1/p$a;->d:Le/m/e/k;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/reflect/Type;

    const-class v6, Le/i/b/z1/d0$a;

    aput-object v6, v5, v1

    const-class v6, Ljava/util/List;

    invoke-static {v6, v5}, Le/m/e/f0/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v5

    invoke-virtual {v2, v5}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/z1/p$a;->a:Le/m/e/b0;

    .line 12
    :cond_2
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Le/m/e/g0/a;->L0()V

    goto :goto_0

    .line 14
    :cond_4
    iget-object v4, p0, Le/i/b/z1/p$a;->c:Le/m/e/b0;

    if-nez v4, :cond_5

    .line 15
    iget-object v4, p0, Le/i/b/z1/p$a;->d:Le/m/e/k;

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v4

    iput-object v4, p0, Le/i/b/z1/p$a;->c:Le/m/e/b0;

    .line 16
    :cond_5
    invoke-virtual {v4, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 17
    :cond_6
    iget-object v3, p0, Le/i/b/z1/p$a;->b:Le/m/e/b0;

    if-nez v3, :cond_7

    .line 18
    iget-object v3, p0, Le/i/b/z1/p$a;->d:Le/m/e/k;

    const-class v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/z1/p$a;->b:Le/m/e/b0;

    .line 19
    :cond_7
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto/16 :goto_0

    .line 20
    :cond_8
    invoke-virtual {p1}, Le/m/e/g0/a;->q()V

    .line 21
    new-instance p1, Le/i/b/z1/p;

    invoke-direct {p1, v2, v3, v4}, Le/i/b/z1/p;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    move-object v2, p1

    :goto_1
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TypeAdapter(MetricRequest)"

    return-object v0
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Le/i/b/z1/d0;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    const-string v0, "feedbacks"

    .line 4
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 5
    invoke-virtual {p2}, Le/i/b/z1/d0;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Le/i/b/z1/p$a;->a:Le/m/e/b0;

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Le/i/b/z1/p$a;->d:Le/m/e/k;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Le/i/b/z1/d0$a;

    aput-object v3, v1, v2

    const-class v2, Ljava/util/List;

    invoke-static {v2, v1}, Le/m/e/f0/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/z1/p$a;->a:Le/m/e/b0;

    .line 9
    :cond_2
    invoke-virtual {p2}, Le/i/b/z1/d0;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "wrapper_version"

    .line 10
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 11
    invoke-virtual {p2}, Le/i/b/z1/d0;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Le/i/b/z1/p$a;->b:Le/m/e/b0;

    if-nez v0, :cond_4

    .line 14
    iget-object v0, p0, Le/i/b/z1/p$a;->d:Le/m/e/k;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/z1/p$a;->b:Le/m/e/b0;

    .line 15
    :cond_4
    invoke-virtual {p2}, Le/i/b/z1/d0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "profile_id"

    .line 16
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 17
    iget-object v0, p0, Le/i/b/z1/p$a;->c:Le/m/e/b0;

    if-nez v0, :cond_5

    .line 18
    iget-object v0, p0, Le/i/b/z1/p$a;->d:Le/m/e/k;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/z1/p$a;->c:Le/m/e/b0;

    .line 19
    :cond_5
    invoke-virtual {p2}, Le/i/b/z1/d0;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    :goto_2
    return-void
.end method
