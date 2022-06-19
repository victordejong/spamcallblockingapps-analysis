.class public final Le/a/w4/s/k0$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w4/s/k0;->I4(Lcom/truecaller/data/entity/Contact;)V
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
.field public final synthetic b:Le/a/w4/s/k0;

.field public final synthetic c:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/w4/s/k0;Lcom/truecaller/data/entity/Contact;)V
    .locals 0

    iput-object p1, p0, Le/a/w4/s/k0$c;->b:Le/a/w4/s/k0;

    iput-object p2, p0, Le/a/w4/s/k0$c;->c:Lcom/truecaller/data/entity/Contact;

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
    iget-object v3, p0, Le/a/w4/s/k0$c;->b:Le/a/w4/s/k0;

    .line 4
    iget-object p1, v3, Le/a/w4/s/k0;->g:Le/a/o2/l;

    .line 5
    new-instance v0, Le/a/o2/h;

    const/4 v4, 0x0

    iget-object v5, p0, Le/a/w4/s/k0$c;->c:Lcom/truecaller/data/entity/Contact;

    const/4 v6, 0x4

    const-string v2, "Call"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Le/a/o2/l;->v(Le/a/o2/h;)Z

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
