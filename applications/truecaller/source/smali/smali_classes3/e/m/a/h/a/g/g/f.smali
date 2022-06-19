.class public final synthetic Le/m/a/h/a/g/g/f;
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

    iput p1, p0, Le/m/a/h/a/g/g/f;->a:I

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/h/a/g/d;)Le/m/a/h/a/g/d;
    .locals 9

    iget v2, p0, Le/m/a/h/a/g/g/f;->a:I

    sget v0, Le/m/a/h/a/g/g/a;->p:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->g()I

    move-result v0

    const/4 v1, 0x6

    .line 2
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->a()J

    move-result-wide v3

    .line 3
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->i()J

    move-result-wide v5

    .line 4
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->e()Ljava/util/List;

    move-result-object v7

    .line 5
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->d()Ljava/util/List;

    move-result-object v8

    .line 6
    invoke-static/range {v0 .. v8}, Le/m/a/h/a/g/d;->b(IIIJJLjava/util/List;Ljava/util/List;)Le/m/a/h/a/g/d;

    move-result-object p1

    return-object p1
.end method
