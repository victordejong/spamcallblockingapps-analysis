.class public final Lcom/truecaller/tcpermissions/AccessContactsActivity$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/tcpermissions/AccessContactsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/truecaller/tcpermissions/AccessContactsActivity$a;->a:I

    iput-object p2, p0, Lcom/truecaller/tcpermissions/AccessContactsActivity$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget p1, p0, Lcom/truecaller/tcpermissions/AccessContactsActivity$a;->a:I

    const-string v0, "presenter"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 1
    iget-object p1, p0, Lcom/truecaller/tcpermissions/AccessContactsActivity$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/tcpermissions/AccessContactsActivity;

    .line 2
    iget-object p1, p1, Lcom/truecaller/tcpermissions/AccessContactsActivity;->f:Le/a/h5/b;

    if-eqz p1, :cond_1

    .line 3
    check-cast p1, Le/a/h5/e;

    .line 4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h5/c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/h5/c;->finish()V

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_2
    throw v1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/truecaller/tcpermissions/AccessContactsActivity$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/tcpermissions/AccessContactsActivity;

    .line 8
    iget-object p1, p1, Lcom/truecaller/tcpermissions/AccessContactsActivity;->f:Le/a/h5/b;

    if-eqz p1, :cond_4

    .line 9
    move-object v2, p1

    check-cast v2, Le/a/h5/e;

    .line 10
    new-instance v5, Le/a/h5/d;

    invoke-direct {v5, v2, v1}, Le/a/h5/d;-><init>(Le/a/h5/e;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    .line 11
    :cond_4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
