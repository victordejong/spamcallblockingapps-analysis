.class public final Le/a/f/a/b/v/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/b/v/a;->zj(Ljava/util/List;Le/a/f/a/b/v/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/f/a/b/v/e;

.field public final synthetic b:Le/a/f/a/b/v/a;


# direct methods
.method public constructor <init>(Le/a/f/a/b/v/e;Le/a/f/a/b/v/a;Landroid/widget/RadioGroup;Le/a/f/a/b/v/e;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/b/v/a$a;->a:Le/a/f/a/b/v/e;

    iput-object p2, p0, Le/a/f/a/b/v/a$a;->b:Le/a/f/a/b/v/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/f/a/b/v/a$a;->b:Le/a/f/a/b/v/a;

    .line 2
    iget-object p1, p1, Le/a/f/a/b/v/a;->e:Le/a/f/a/b/v/d;

    if-eqz p1, :cond_4

    .line 3
    iget-object v0, p0, Le/a/f/a/b/v/a$a;->a:Le/a/f/a/b/v/e;

    const-string v1, "item"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    instance-of v1, v0, Le/a/f/a/b/v/e$b;

    if-eqz v1, :cond_0

    iget-object v0, p1, Le/a/f/a/b/v/d;->b:Le/a/f/y/v;

    invoke-interface {v0}, Le/a/f/y/v;->P1()V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, v0, Le/a/f/a/b/v/e$c;

    if-eqz v1, :cond_1

    iget-object v0, p1, Le/a/f/a/b/v/d;->b:Le/a/f/y/v;

    invoke-interface {v0}, Le/a/f/y/v;->A0()V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v1, v0, Le/a/f/a/b/v/e$a;

    if-eqz v1, :cond_2

    iget-object v1, p1, Le/a/f/a/b/v/d;->b:Le/a/f/y/v;

    check-cast v0, Le/a/f/a/b/v/e$a;

    .line 8
    iget-object v0, v0, Le/a/f/a/b/v/e$a;->d:Ljava/lang/String;

    .line 9
    invoke-interface {v1, v0}, Le/a/f/y/v;->S1(Ljava/lang/String;)V

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/v/c;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/f/a/b/v/c;->close()V

    :cond_3
    return-void

    :cond_4
    const-string p1, "presenter"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
