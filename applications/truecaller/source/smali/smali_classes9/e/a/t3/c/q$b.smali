.class public final Le/a/t3/c/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t3/c/q;-><init>(Le/a/t3/c/p$a;Landroid/view/View;Le/a/v0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/t3/c/q;


# direct methods
.method public constructor <init>(Le/a/t3/c/q;)V
    .locals 0

    iput-object p1, p0, Le/a/t3/c/q$b;->a:Le/a/t3/c/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Le/a/t3/c/q$b;->a:Le/a/t3/c/q;

    .line 3
    iget-object p1, p1, Le/a/t3/c/q;->d:Le/a/t3/c/p$a;

    .line 4
    invoke-interface {p1}, Le/a/t3/c/p$a;->U1()V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object p1, p0, Le/a/t3/c/q$b;->a:Le/a/t3/c/q;

    .line 6
    iget-object p1, p1, Le/a/t3/c/q;->d:Le/a/t3/c/p$a;

    .line 7
    invoke-interface {p1}, Le/a/t3/c/p$a;->i7()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x7f0a0bad
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
