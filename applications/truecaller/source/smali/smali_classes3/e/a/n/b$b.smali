.class public final Le/a/n/b$b;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/b;->T5()V
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

    iput p1, p0, Le/a/n/b$b;->a:I

    iput-object p2, p0, Le/a/n/b$b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Le/a/n/b$b;->a:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Le/a/n/b$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/n/b;

    invoke-virtual {p1}, Le/a/n/b;->OA()Le/a/n/x1;

    move-result-object p1

    invoke-interface {p1}, Le/a/n/x1;->Gf()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/n/b$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/n/b;

    invoke-virtual {p1}, Le/a/n/b;->OA()Le/a/n/x1;

    move-result-object p1

    iget-object p2, p0, Le/a/n/b$b;->b:Ljava/lang/Object;

    check-cast p2, Le/a/n/b;

    invoke-interface {p1, p2}, Le/a/n/x1;->Q6(Landroidx/fragment/app/Fragment;)Lq3/a/n0;

    return-void
.end method
