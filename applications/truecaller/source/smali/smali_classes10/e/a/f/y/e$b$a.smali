.class public final Le/a/f/y/e$b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/y/e$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/f/y/x;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/f/y/e$b;


# direct methods
.method public constructor <init>(Le/a/f/y/e$b;)V
    .locals 0

    iput-object p1, p0, Le/a/f/y/e$b$a;->b:Le/a/f/y/e$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Le/a/f/y/x;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/f/y/e$b$a;->b:Le/a/f/y/e$b;

    iget-object v1, v1, Le/a/f/y/e$b;->f:Le/a/f/y/e;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p1, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 6
    invoke-virtual {v2}, Landroid/telecom/Call;->getState()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_3

    .line 7
    invoke-virtual {v1, v5}, Le/a/f/y/e;->Q(I)Le/a/f/y/x;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, v1, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/telecom/Call;

    invoke-static {v6, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Le/a/m0/a1$k;->b0(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Le/a/m0/a1$k;->c0(Le/a/f/y/x;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v3

    :cond_1
    check-cast v2, Landroid/telecom/Call;

    :cond_2
    if-eqz v2, :cond_4

    const-string v0, "<set-?>"

    .line 10
    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object v2, p1, Le/a/f/y/x;->a:Landroid/telecom/Call;

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {p1}, Le/a/m0/a1$k;->v0(Le/a/f/y/x;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object p1, p1, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 14
    invoke-virtual {p1}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_5

    :cond_4
    move v4, v5

    .line 15
    :cond_5
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
