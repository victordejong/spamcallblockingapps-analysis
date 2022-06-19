.class public final Le/a/a/d/a/h$a;
.super Le/a/e/c2/t$b;
.source "SourceFile"

# interfaces
.implements Le/a/a/d/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/d/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic d:[Ls1/a/l;


# instance fields
.field public final b:Le/a/p5/x0/b;

.field public final c:Le/a/b0/a/b/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/a/d/a/h$a;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/databinding/ItemNewGroupParticipantXBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/a/d/a/h$a;->d:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/e/c2/t$b;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Le/a/p5/x0/b;

    new-instance v1, Le/a/a/d/a/h$a$a;

    invoke-direct {v1}, Le/a/a/d/a/h$a$a;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/b;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/a/d/a/h$a;->b:Le/a/p5/x0/b;

    .line 3
    new-instance v0, Le/a/b0/a/b/a;

    new-instance v1, Le/a/p5/i0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "itemView.context"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object v0, p0, Le/a/a/d/a/h$a;->c:Le/a/b0/a/b/a;

    .line 4
    invoke-virtual {p0}, Le/a/a/d/a/h$a;->N4()Le/a/m3/r0;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/r0;->c:Landroid/widget/ImageView;

    const-string v1, "binding.removeButton"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Le/a/a/d/a/h$a;->N4()Le/a/m3/r0;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/r0;->a:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    return-void
.end method


# virtual methods
.method public final N4()Le/a/m3/r0;
    .locals 3

    iget-object v0, p0, Le/a/a/d/a/h$a;->b:Le/a/p5/x0/b;

    sget-object v1, Le/a/a/d/a/h$a;->d:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Le/a/p5/x0/b;->a(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/m3/r0;

    return-object v0
.end method

.method public a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/d/a/h$a;->c:Le/a/b0/a/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/d/a/h$a;->N4()Le/a/m3/r0;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/r0;->b:Landroid/widget/TextView;

    const-string v1, "binding.nameText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
