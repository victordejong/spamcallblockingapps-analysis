.class public final Le/a/e/a/t3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/t3;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/a/t3;


# direct methods
.method public constructor <init>(Le/a/e/a/t3;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/t3$a;->a:Le/a/e/a/t3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Le/a/e/a/t3$a;->a:Le/a/e/a/t3;

    .line 2
    iget-object p1, p1, Le/a/e/a/t3;->b:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v0, "etInput"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    .line 5
    sget-object v1, Lq3/a/t0;->d:Lq3/a/g0;

    .line 6
    new-instance v3, Le/a/e/a/t3$a$a;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Le/a/e/a/t3$a$a;-><init>(Le/a/e/a/t3$a;Ljava/lang/String;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
