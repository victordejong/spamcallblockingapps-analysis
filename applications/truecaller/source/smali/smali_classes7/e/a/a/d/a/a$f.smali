.class public final Le/a/a/d/a/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/d/a/a;->cq(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/d/a/a;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/a/d/a/a;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/a/d/a/a$f;->a:Le/a/a/d/a/a;

    iput-object p2, p0, Le/a/a/d/a/a$f;->b:Ljava/util/List;

    iput-object p3, p0, Le/a/a/d/a/a$f;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/a/d/a/a$f;->a:Le/a/a/d/a/a;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Le/a/a/d/a/a$f;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/k;

    .line 2
    iget-object v1, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 3
    check-cast v1, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p0, Le/a/a/d/a/a$f;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 4
    sget-object v1, Le/a/a/d/a/a;->e:[Ls1/a/l;

    .line 5
    invoke-virtual {p1, v0, p2}, Le/a/a/d/a/a;->OA(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    const/4 p2, 0x2

    .line 6
    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
