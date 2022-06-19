.class public final Le/a/d/c/z/i$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/z/i;-><init>(Landroid/view/View;Le/a/d/c/z/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/d/s/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/z/i$a;->b:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/c/z/i$a;->b:Landroid/view/View;

    const-string v1, "rootView"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/truecaller/common/ui/listitem/ListItemX;

    .line 4
    new-instance v1, Le/a/d/s/f;

    invoke-direct {v1, v0, v0}, Le/a/d/s/f;-><init>(Lcom/truecaller/common/ui/listitem/ListItemX;Lcom/truecaller/common/ui/listitem/ListItemX;)V

    return-object v1
.end method
