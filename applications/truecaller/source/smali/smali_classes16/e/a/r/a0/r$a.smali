.class public final Le/a/r/a0/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a0/r;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/r/a0/r;


# direct methods
.method public constructor <init>(Le/a/r/a0/r;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a0/r$a;->a:Le/a/r/a0/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    .line 1
    iget-object p1, p0, Le/a/r/a0/r$a;->a:Le/a/r/a0/r;

    invoke-virtual {p1}, Le/a/r/a0/r;->RA()Le/a/r/a0/w;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/r/a0/z;

    .line 2
    sget-object p1, Le/a/r/c/d$a;->a:Le/a/r/c/d$a;

    iget-object v1, v0, Le/a/r/a0/z;->g:Le/a/r/c/l;

    new-instance v2, Le/a/r/a0/b0;

    invoke-direct {v2, v0}, Le/a/r/a0/b0;-><init>(Le/a/r/a0/z;)V

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isPermissionDeniedPermanently"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, v1, Le/a/r/c/l;->b:Le/a/h5/w;

    invoke-interface {v3}, Le/a/h5/w;->c()[Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Le/a/r/c/l;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    array-length v6, v3

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    iget-object v5, v1, Le/a/r/c/l;->c:Le/a/p5/g;

    invoke-interface {v5}, Le/a/p5/g;->t()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 7
    iget-object v5, v1, Le/a/r/c/l;->c:Le/a/p5/g;

    invoke-interface {v5}, Le/a/p5/g;->j()Ljava/lang/String;

    move-result-object v5

    const-string v8, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v5, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v9, "(this as java.lang.String).toLowerCase()"

    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v10, v1, Le/a/r/c/l;->f:Le/a/u3/g;

    .line 9
    iget-object v11, v10, Le/a/u3/g;->d2:Le/a/u3/g$a;

    sget-object v12, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v13, 0x9f

    aget-object v12, v12, v13

    invoke-virtual {v11, v10, v12}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v10

    check-cast v10, Le/a/u3/i;

    .line 10
    invoke-interface {v10}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, ","

    .line 11
    invoke-static {v9, v8, v6}, Le/d/c/a/a;->b0(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/String;

    .line 12
    invoke-interface {v8, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    check-cast v8, [Ljava/lang/String;

    .line 14
    array-length v9, v8

    move v10, v6

    :goto_0
    if-ge v10, v9, :cond_1

    aget-object v11, v8, v10

    const/4 v12, 0x2

    .line 15
    invoke-static {v5, v11, v6, v12}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v11

    if-eqz v11, :cond_0

    move v5, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_1
    if-nez v5, :cond_3

    .line 16
    iget-object v5, v1, Le/a/r/c/l;->c:Le/a/p5/g;

    invoke-interface {v5}, Le/a/p5/g;->f()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    iget-object v5, v1, Le/a/r/c/l;->f:Le/a/u3/g;

    .line 18
    iget-object v8, v5, Le/a/u3/g;->b2:Le/a/u3/g$a;

    sget-object v9, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v10, 0x9d

    aget-object v9, v9, v10

    invoke-virtual {v8, v5, v9}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v5

    check-cast v5, Le/a/u3/i;

    .line 19
    invoke-interface {v5}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v5

    const-string v8, "dialerPermission"

    .line 20
    invoke-static {v8, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v6

    .line 21
    :goto_3
    iget-object v8, v1, Le/a/r/c/l;->c:Le/a/p5/g;

    invoke-interface {v8}, Le/a/p5/g;->q()I

    move-result v8

    const/16 v9, 0x1d

    if-le v8, v9, :cond_4

    .line 22
    iget-object v8, v1, Le/a/r/c/l;->c:Le/a/p5/g;

    invoke-interface {v8}, Le/a/p5/g;->s()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 23
    iget-object v8, v1, Le/a/r/c/l;->c:Le/a/p5/g;

    invoke-interface {v8}, Le/a/p5/g;->r()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v1, Le/a/r/c/l;->f:Le/a/u3/g;

    .line 24
    iget-object v9, v8, Le/a/u3/g;->c2:Le/a/u3/g$a;

    sget-object v10, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v11, 0x9e

    aget-object v10, v10, v11

    invoke-virtual {v9, v8, v10}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v8

    check-cast v8, Le/a/u3/i;

    .line 25
    invoke-interface {v8}, Le/a/u3/i;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v7

    goto :goto_4

    :cond_4
    move v8, v6

    :goto_4
    if-eqz v5, :cond_6

    if-eqz v8, :cond_5

    .line 26
    sget-object v5, Lcom/truecaller/wizard/utils/RolesToRequest;->DefaultDialerAndCallerid:Lcom/truecaller/wizard/utils/RolesToRequest;

    goto :goto_5

    .line 27
    :cond_5
    sget-object v5, Lcom/truecaller/wizard/utils/RolesToRequest;->DefaultDialer:Lcom/truecaller/wizard/utils/RolesToRequest;

    goto :goto_5

    :cond_6
    if-eqz v8, :cond_7

    .line 28
    sget-object v5, Lcom/truecaller/wizard/utils/RolesToRequest;->CallerId:Lcom/truecaller/wizard/utils/RolesToRequest;

    goto :goto_5

    .line 29
    :cond_7
    sget-object v5, Lcom/truecaller/wizard/utils/RolesToRequest;->None:Lcom/truecaller/wizard/utils/RolesToRequest;

    .line 30
    :goto_5
    invoke-virtual {v1}, Le/a/r/c/l;->a()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 31
    invoke-virtual {v2, v9}, Le/a/r/a0/b0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 32
    new-instance v1, Le/a/r/c/d$c;

    invoke-direct {v1, v9}, Le/a/r/c/d$c;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 33
    :cond_8
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 34
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v7

    if-eqz v8, :cond_b

    .line 35
    array-length v8, v3

    move v9, v6

    :goto_7
    if-ge v9, v8, :cond_c

    aget-object v10, v3, v9

    .line 36
    iget-object v11, v1, Le/a/r/c/l;->d:Le/a/p5/a0;

    new-array v12, v7, [Ljava/lang/String;

    aput-object v10, v12, v6

    invoke-interface {v11, v12}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v2, v10}, Le/a/r/a0/b0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_a

    .line 37
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 38
    :cond_b
    sget-object v1, Lcom/truecaller/wizard/utils/RolesToRequest;->None:Lcom/truecaller/wizard/utils/RolesToRequest;

    if-ne v5, v1, :cond_c

    move-object v1, p1

    goto :goto_8

    .line 39
    :cond_c
    new-instance v1, Le/a/r/c/d$b;

    invoke-direct {v1, v5, v4}, Le/a/r/c/d$b;-><init>(Lcom/truecaller/wizard/utils/RolesToRequest;Ljava/util/List;)V

    .line 40
    :goto_8
    instance-of v2, v1, Le/a/r/c/d$c;

    if-eqz v2, :cond_d

    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a0/x;

    if-eqz p1, :cond_f

    check-cast v1, Le/a/r/c/d$c;

    .line 41
    iget-object v0, v1, Le/a/r/c/d$c;->a:Ljava/lang/String;

    .line 42
    invoke-interface {p1, v0}, Le/a/r/a0/x;->f2(Ljava/lang/String;)V

    goto :goto_9

    .line 43
    :cond_d
    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v0}, Le/a/r/a0/z;->Lj()Lq3/a/p1;

    goto :goto_9

    .line 44
    :cond_e
    instance-of p1, v1, Le/a/r/c/d$b;

    if-eqz p1, :cond_f

    check-cast v1, Le/a/r/c/d$b;

    .line 45
    new-instance v3, Le/a/r/a0/c0;

    const/4 p1, 0x0

    invoke-direct {v3, v0, v1, p1}, Le/a/r/a0/c0;-><init>(Le/a/r/a0/z;Le/a/r/c/d$b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_f
    :goto_9
    return-void
.end method
