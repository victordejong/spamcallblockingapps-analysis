.class public final Le/a/d/d/a/a/a/a$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/d/a/a/a/a;-><init>(Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/d/a/a/a/a;


# direct methods
.method public constructor <init>(Le/a/d/d/a/a/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/d/d/a/a/a/a$e;->b:Le/a/d/d/a/a/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/d/a/a/a/a$e;->b:Le/a/d/d/a/a/a/a;

    .line 2
    iget-object v0, v0, Le/a/d/d/a/a/a/a;->g:Lcom/truecaller/common/ui/listitem/ListItemX;

    const v1, 0x7f0a00e2

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "listItemX.findViewById(R.id.action_secondary)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method
