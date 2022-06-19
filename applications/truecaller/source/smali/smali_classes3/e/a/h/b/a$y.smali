.class public final Le/a/h/b/a$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/f/g0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/a;->vt(Le/a/h3/b/a;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/a;

.field public final synthetic b:Le/a/h3/b/a;


# direct methods
.method public constructor <init>(Le/a/h/b/a;Le/a/h3/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/a$y;->a:Le/a/h/b/a;

    iput-object p2, p0, Le/a/h/b/a$y;->b:Le/a/h3/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/b/a$y;->a:Le/a/h/b/a;

    const-string v1, "item"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "listener"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    .line 3
    :sswitch_0
    iget-object p1, v0, Le/a/h/b/a;->O:Le/a/h/b/h0;

    invoke-interface {p1}, Le/a/h/b/j0$a;->g1()V

    goto :goto_0

    .line 4
    :sswitch_1
    iget-object p1, v0, Le/a/h/b/a;->O:Le/a/h/b/h0;

    invoke-interface {p1}, Le/a/h/b/j0$a;->Wg()Z

    goto :goto_0

    .line 5
    :sswitch_2
    iget-object p1, v0, Le/a/h/b/a;->b:Le/a/h/b/v$a;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/truecaller/callhistory/data/FilterType;->OUTGOING:Lcom/truecaller/callhistory/data/FilterType;

    invoke-interface {p1, v0}, Le/a/h/b/v$a;->Gj(Lcom/truecaller/callhistory/data/FilterType;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 6
    :sswitch_3
    iget-object p1, v0, Le/a/h/b/a;->b:Le/a/h/b/v$a;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/truecaller/callhistory/data/FilterType;->MISSED:Lcom/truecaller/callhistory/data/FilterType;

    invoke-interface {p1, v0}, Le/a/h/b/v$a;->Gj(Lcom/truecaller/callhistory/data/FilterType;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 7
    :sswitch_4
    iget-object p1, v0, Le/a/h/b/a;->b:Le/a/h/b/v$a;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/truecaller/callhistory/data/FilterType;->INCOMING:Lcom/truecaller/callhistory/data/FilterType;

    invoke-interface {p1, v0}, Le/a/h/b/v$a;->Gj(Lcom/truecaller/callhistory/data/FilterType;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 8
    :sswitch_5
    iget-object p1, v0, Le/a/h/b/a;->b:Le/a/h/b/v$a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/h/b/v$a;->ua()V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 9
    :sswitch_6
    iget-object p1, v0, Le/a/h/b/a;->b:Le/a/h/b/v$a;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/h/b/v$a;->ka()V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 10
    :sswitch_7
    iget-object p1, v0, Le/a/h/b/a;->b:Le/a/h/b/v$a;

    if-eqz p1, :cond_5

    sget-object v0, Lcom/truecaller/callhistory/data/FilterType;->BLOCKED:Lcom/truecaller/callhistory/data/FilterType;

    invoke-interface {p1, v0}, Le/a/h/b/v$a;->Gj(Lcom/truecaller/callhistory/data/FilterType;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :goto_1
    return p1

    :sswitch_data_0
    .sparse-switch
        0x7f0a0097 -> :sswitch_7
        0x7f0a0098 -> :sswitch_6
        0x7f0a00a7 -> :sswitch_5
        0x7f0a00bc -> :sswitch_4
        0x7f0a00c9 -> :sswitch_3
        0x7f0a00d5 -> :sswitch_2
        0x7f0a00d6 -> :sswitch_1
        0x7f0a00e5 -> :sswitch_0
    .end sparse-switch
.end method
