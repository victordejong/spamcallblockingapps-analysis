.class public final Le/a/w4/s/k0$e;
.super Le/f/a/r/k/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w4/s/k0;->Z3(Ljava/lang/String;Ljava/lang/Integer;Lcom/truecaller/data/entity/SpamCategoryModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/a/r/k/c<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Le/a/w4/s/k0;


# direct methods
.method public constructor <init>(Le/a/w4/s/k0;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/w4/s/k0$e;->d:Le/a/w4/s/k0;

    invoke-direct {p0, p3, p4}, Le/f/a/r/k/c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/w4/s/k0$e;->d:Le/a/w4/s/k0;

    .line 2
    iget-object v0, v0, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, p1, v1, v2, v3}, Lcom/truecaller/common/ui/listitem/ListItemX;->r1(Lcom/truecaller/common/ui/listitem/ListItemX;Landroid/graphics/drawable/Drawable;IILjava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Le/f/a/r/l/d;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string p2, "resource"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/w4/s/k0$e;->d:Le/a/w4/s/k0;

    .line 4
    iget-object p2, p2, Le/a/w4/s/k0;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 5
    invoke-static {p2, p1, v0, v1, v2}, Lcom/truecaller/common/ui/listitem/ListItemX;->r1(Lcom/truecaller/common/ui/listitem/ListItemX;Landroid/graphics/drawable/Drawable;IILjava/lang/Object;)V

    return-void
.end method
