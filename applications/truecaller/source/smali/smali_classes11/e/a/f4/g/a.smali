.class public final synthetic Le/a/f4/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# instance fields
.field public final synthetic a:Le/a/f4/g/p;


# direct methods
.method public synthetic constructor <init>(Le/a/f4/g/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/g/a;->a:Le/a/f4/g/p;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Le/a/f4/g/a;->a:Le/a/f4/g/p;

    check-cast p1, Le/a/f4/g/t;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Le/a/f4/g/t;->b:Le/a/k3/k/a;

    if-eqz v1, :cond_3

    .line 3
    iget-object v2, v0, Le/a/f4/g/p;->a:Landroid/content/Context;

    iget-object v3, v0, Le/a/f4/g/p;->p:Ljava/lang/String;

    iget-object v4, v0, Le/a/f4/g/p;->q:Ljava/lang/String;

    invoke-virtual {p1}, Le/a/f4/g/t;->a()Lcom/truecaller/data/entity/Contact;

    move-result-object v5

    .line 4
    sget v6, Le/a/f4/g/q;->f:I

    const/4 v6, 0x0

    .line 5
    invoke-static {v3}, Le/a/o5/e1;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    :cond_0
    if-nez v6, :cond_1

    .line 8
    invoke-static {v3, v4}, Le/a/b0/q/b0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v6

    .line 10
    :goto_0
    invoke-static {v2}, Le/a/i/w/e;->a(Landroid/content/Context;)Le/a/i/w/d;

    move-result-object v2

    invoke-interface {v2, v3, v1}, Le/a/i/w/d;->b(Ljava/lang/String;Le/a/k3/k/a;)V

    .line 11
    :cond_3
    iget-object v1, v0, Le/a/f4/g/p;->n:Le/a/f4/g/p$b;

    if-eqz v1, :cond_4

    iget-object v0, v0, Le/a/f4/g/p;->p:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Le/a/f4/g/p$b;->a(Le/a/f4/g/t;Ljava/lang/String;)Le/a/f4/g/t;

    move-result-object p1

    :cond_4
    return-object p1
.end method
