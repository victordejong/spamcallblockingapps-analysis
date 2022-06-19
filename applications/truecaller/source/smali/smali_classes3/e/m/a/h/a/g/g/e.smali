.class public final synthetic Le/m/a/h/a/g/g/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/g/g/n;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/m/a/h/a/g/g/e;->a:I

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/h/a/g/d;)Le/m/a/h/a/g/d;
    .locals 9

    iget v0, p0, Le/m/a/h/a/g/g/e;->a:I

    sget v1, Le/m/a/h/a/g/g/a;->p:I

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->g()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->h()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x7

    .line 3
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->c()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->a()J

    move-result-wide v3

    .line 5
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->i()J

    move-result-wide v5

    .line 6
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->e()Ljava/util/List;

    move-result-object v7

    .line 7
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->d()Ljava/util/List;

    move-result-object v8

    .line 8
    invoke-static/range {v0 .. v8}, Le/m/a/h/a/g/d;->b(IIIJJLjava/util/List;Ljava/util/List;)Le/m/a/h/a/g/d;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Le/m/a/h/a/g/a;

    const/4 v0, -0x3

    .line 10
    invoke-direct {p1, v0}, Le/m/a/h/a/g/a;-><init>(I)V

    throw p1
.end method
