.class public final synthetic Le/m/a/h/a/g/g/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/g/g/n;


# instance fields
.field public final synthetic a:Le/m/a/h/a/g/c;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/g/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/g/g;->a:Le/m/a/h/a/g/c;

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/h/a/g/d;)Le/m/a/h/a/g/d;
    .locals 11

    iget-object v0, p0, Le/m/a/h/a/g/g/g;->a:Le/m/a/h/a/g/c;

    sget v1, Le/m/a/h/a/g/g/a;->p:I

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->h()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    .line 2
    :cond_2
    new-instance p1, Le/m/a/h/a/g/a;

    const/4 v0, -0x1

    .line 3
    invoke-direct {p1, v0}, Le/m/a/h/a/g/a;-><init>(I)V

    throw p1

    :cond_3
    :goto_2
    if-nez p1, :cond_4

    goto :goto_3

    .line 4
    :cond_4
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->g()I

    move-result p1

    add-int/2addr v1, p1

    :goto_3
    move v2, v1

    .line 5
    iget-object v9, v0, Le/m/a/h/a/g/c;->a:Ljava/util/List;

    .line 6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    .line 7
    invoke-static/range {v2 .. v10}, Le/m/a/h/a/g/d;->b(IIIJJLjava/util/List;Ljava/util/List;)Le/m/a/h/a/g/d;

    move-result-object p1

    return-object p1
.end method
