.class public final Le/a/h/b/y0/b/f$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/y0/b/f;-><init>(Lcom/truecaller/common/ui/listitem/ListItemX;Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/b/y0/b/f;


# direct methods
.method public constructor <init>(Le/a/h/b/y0/b/f;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/y0/b/f$a;->b:Le/a/h/b/y0/b/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/y0/b/f$a;->b:Le/a/h/b/y0/b/f;

    .line 2
    iget-object v0, v0, Le/a/h/b/y0/b/f;->d:Lcom/truecaller/common/ui/listitem/ListItemX;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
