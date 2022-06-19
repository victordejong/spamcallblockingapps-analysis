.class public final Le/a/a/d/a/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/d/a/a;->Kp(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/d/a/a;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/a/d/a/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/a/d/a/a$h;->a:Le/a/a/d/a/a;

    iput-object p2, p0, Le/a/a/d/a/a$h;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/d/a/a$h;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object p2, p0, Le/a/a/d/a/a$h;->a:Le/a/a/d/a/a;

    const v0, 0x7f1203f1

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Le/a/a/d/a/a$h;->a:Le/a/a/d/a/a;

    invoke-virtual {p1}, Le/a/a/d/a/a;->QA()Le/a/a/d/a/f;

    move-result-object p1

    invoke-virtual {p1}, Le/a/a/d/a/f;->Ij()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Le/a/a/d/a/a$h;->a:Le/a/a/d/a/a;

    const v0, 0x7f1203f2

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Le/a/a/d/a/a$h;->a:Le/a/a/d/a/a;

    invoke-virtual {p1}, Le/a/a/d/a/a;->QA()Le/a/a/d/a/f;

    move-result-object p1

    invoke-virtual {p1}, Le/a/a/d/a/f;->Kj()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Le/a/a/d/a/a$h;->a:Le/a/a/d/a/a;

    const v0, 0x7f1203f3

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/a/a/d/a/a$h;->a:Le/a/a/d/a/a;

    invoke-virtual {p1}, Le/a/a/d/a/a;->QA()Le/a/a/d/a/f;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Le/a/a/d/a/f;->Mj(Landroid/net/Uri;)V

    :cond_2
    :goto_0
    return-void
.end method
