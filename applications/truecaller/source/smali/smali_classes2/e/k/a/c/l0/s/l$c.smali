.class public final Le/k/a/c/l0/s/l$c;
.super Le/k/a/c/l0/s/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/l0/s/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final b:[Le/k/a/c/l0/s/l$f;


# direct methods
.method public constructor <init>(Le/k/a/c/l0/s/l;[Le/k/a/c/l0/s/l$f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/l0/s/l;-><init>(Le/k/a/c/l0/s/l;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/l0/s/l$c;->b:[Le/k/a/c/l0/s/l$f;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)",
            "Le/k/a/c/l0/s/l;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/s/l$c;->b:[Le/k/a/c/l0/s/l$f;

    array-length v1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 2
    iget-boolean v0, p0, Le/k/a/c/l0/s/l;->a:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Le/k/a/c/l0/s/l$e;

    invoke-direct {v0, p0, p1, p2}, Le/k/a/c/l0/s/l$e;-><init>(Le/k/a/c/l0/s/l;Ljava/lang/Class;Le/k/a/c/n;)V

    return-object v0

    :cond_0
    return-object p0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 4
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/k/a/c/l0/s/l$f;

    .line 5
    new-instance v2, Le/k/a/c/l0/s/l$f;

    invoke-direct {v2, p1, p2}, Le/k/a/c/l0/s/l$f;-><init>(Ljava/lang/Class;Le/k/a/c/n;)V

    aput-object v2, v0, v1

    .line 6
    new-instance p1, Le/k/a/c/l0/s/l$c;

    invoke-direct {p1, p0, v0}, Le/k/a/c/l0/s/l$c;-><init>(Le/k/a/c/l0/s/l;[Le/k/a/c/l0/s/l$f;)V

    return-object p1
.end method

.method public c(Ljava/lang/Class;)Le/k/a/c/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/s/l$c;->b:[Le/k/a/c/l0/s/l$f;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 2
    iget-object v2, v1, Le/k/a/c/l0/s/l$f;->a:Ljava/lang/Class;

    if-ne v2, p1, :cond_0

    iget-object p1, v1, Le/k/a/c/l0/s/l$f;->b:Le/k/a/c/n;

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 3
    aget-object v1, v0, v1

    .line 4
    iget-object v2, v1, Le/k/a/c/l0/s/l$f;->a:Ljava/lang/Class;

    if-ne v2, p1, :cond_1

    iget-object p1, v1, Le/k/a/c/l0/s/l$f;->b:Le/k/a/c/n;

    return-object p1

    :cond_1
    const/4 v1, 0x2

    .line 5
    aget-object v1, v0, v1

    .line 6
    iget-object v2, v1, Le/k/a/c/l0/s/l$f;->a:Ljava/lang/Class;

    if-ne v2, p1, :cond_2

    iget-object p1, v1, Le/k/a/c/l0/s/l$f;->b:Le/k/a/c/n;

    return-object p1

    .line 7
    :cond_2
    array-length v1, v0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x7

    .line 8
    aget-object v1, v0, v1

    .line 9
    iget-object v2, v1, Le/k/a/c/l0/s/l$f;->a:Ljava/lang/Class;

    if-ne v2, p1, :cond_3

    iget-object p1, v1, Le/k/a/c/l0/s/l$f;->b:Le/k/a/c/n;

    return-object p1

    :cond_3
    :pswitch_1
    const/4 v1, 0x6

    .line 10
    aget-object v1, v0, v1

    .line 11
    iget-object v2, v1, Le/k/a/c/l0/s/l$f;->a:Ljava/lang/Class;

    if-ne v2, p1, :cond_4

    iget-object p1, v1, Le/k/a/c/l0/s/l$f;->b:Le/k/a/c/n;

    return-object p1

    :cond_4
    :pswitch_2
    const/4 v1, 0x5

    .line 12
    aget-object v1, v0, v1

    .line 13
    iget-object v2, v1, Le/k/a/c/l0/s/l$f;->a:Ljava/lang/Class;

    if-ne v2, p1, :cond_5

    iget-object p1, v1, Le/k/a/c/l0/s/l$f;->b:Le/k/a/c/n;

    return-object p1

    :cond_5
    :pswitch_3
    const/4 v1, 0x4

    .line 14
    aget-object v1, v0, v1

    .line 15
    iget-object v2, v1, Le/k/a/c/l0/s/l$f;->a:Ljava/lang/Class;

    if-ne v2, p1, :cond_6

    iget-object p1, v1, Le/k/a/c/l0/s/l$f;->b:Le/k/a/c/n;

    return-object p1

    :cond_6
    :pswitch_4
    const/4 v1, 0x3

    .line 16
    aget-object v0, v0, v1

    .line 17
    iget-object v1, v0, Le/k/a/c/l0/s/l$f;->a:Ljava/lang/Class;

    if-ne v1, p1, :cond_7

    iget-object p1, v0, Le/k/a/c/l0/s/l$f;->b:Le/k/a/c/n;

    return-object p1

    :cond_7
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
