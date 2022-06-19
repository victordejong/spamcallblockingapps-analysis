.class public final Le/a/h/g/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/f/g0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/g/c;->a(ILandroid/view/View;Le/a/h/g/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/g/x;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Le/a/h/g/x;I)V
    .locals 0

    iput-object p1, p0, Le/a/h/g/c$a;->a:Le/a/h/g/x;

    iput p2, p0, Le/a/h/g/c$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 2
    :pswitch_1
    iget-object p1, p0, Le/a/h/g/c$a;->a:Le/a/h/g/x;

    iget v1, p0, Le/a/h/g/c$a;->b:I

    invoke-interface {p1, v1}, Le/a/h/g/x;->f(I)V

    return v0

    .line 3
    :pswitch_2
    iget-object p1, p0, Le/a/h/g/c$a;->a:Le/a/h/g/x;

    iget v1, p0, Le/a/h/g/c$a;->b:I

    invoke-interface {p1, v1}, Le/a/h/g/x;->u(I)V

    return v0

    .line 4
    :pswitch_3
    iget-object p1, p0, Le/a/h/g/c$a;->a:Le/a/h/g/x;

    iget v1, p0, Le/a/h/g/c$a;->b:I

    invoke-interface {p1, v1}, Le/a/h/g/x;->t(I)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0a81
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
