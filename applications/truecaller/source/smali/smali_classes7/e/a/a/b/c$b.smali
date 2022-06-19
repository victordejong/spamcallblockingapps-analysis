.class public final Le/a/a/b/c$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/c;-><init>(Landroid/view/View;Le/a/o2/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/b/c;


# direct methods
.method public constructor <init>(Le/a/a/b/c;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/c$b;->b:Le/a/a/b/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v3, p0, Le/a/a/b/c$b;->b:Le/a/a/b/c;

    .line 4
    iget-object p1, v3, Le/a/a/b/c;->h:Le/a/o2/m;

    .line 5
    new-instance v0, Le/a/o2/h;

    .line 6
    iget-object v4, v3, Le/a/a/b/c;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const-string v2, "ItemEvent.ACTION_AVATAR_CLICK"

    move-object v1, v0

    .line 7
    invoke-direct/range {v1 .. v6}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
