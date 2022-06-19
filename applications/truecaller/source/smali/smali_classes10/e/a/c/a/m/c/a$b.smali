.class public final Le/a/c/a/m/c/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/c/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/m/c/a;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/a$b;->a:Le/a/c/a/m/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/c/a/m/c/a$b;->a:Le/a/c/a/m/c/a;

    invoke-static {p1}, Le/a/c/a/m/c/a;->OA(Le/a/c/a/m/c/a;)Le/a/c/a/g/c0;

    move-result-object p1

    iget-object p1, p1, Le/a/c/a/g/c0;->b:Landroid/widget/EditText;

    const-string v0, "bindings.keywords"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "keywordText"

    .line 3
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    invoke-static {p1, v1, v0, v0, v3}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/String;

    const-string v3, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 7
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v0, v2

    .line 8
    :cond_3
    iget-object p1, p0, Le/a/c/a/m/c/a$b;->a:Le/a/c/a/m/c/a;

    .line 9
    iget-object p1, p1, Le/a/c/a/m/c/a;->b:Le/a/c/t/a;

    if-eqz p1, :cond_4

    .line 10
    new-instance v1, Le/a/c/a/m/c/a$b$a;

    invoke-direct {v1, p0}, Le/a/c/a/m/c/a$b$a;-><init>(Le/a/c/a/m/c/a$b;)V

    invoke-interface {p1, v0, v1}, Le/a/c/t/a;->j(Ljava/util/List;Ls1/z/b/l;)V

    .line 11
    iget-object p1, p0, Le/a/c/a/m/c/a$b;->a:Le/a/c/a/m/c/a;

    invoke-static {p1}, Le/a/c/a/m/c/a;->OA(Le/a/c/a/m/c/a;)Le/a/c/a/g/c0;

    move-result-object p1

    iget-object p1, p1, Le/a/c/a/g/c0;->a:Landroid/widget/TextView;

    const-string v0, "bindings.dateResult"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlin.Unit"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    const-string p1, "insightsQaManager"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
