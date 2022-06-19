.class public final Le/a/l/c/b$r;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/b;->UA(Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;Le/a/l/v2/i/a/b;)V
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
.field public final synthetic b:Le/a/l/c/b;

.field public final synthetic c:Le/a/l/v2/i/a/b;


# direct methods
.method public constructor <init>(Le/a/l/c/b;Le/a/l/v2/i/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/b$r;->b:Le/a/l/c/b;

    iput-object p2, p0, Le/a/l/c/b$r;->c:Le/a/l/v2/i/a/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/l/c/b$r;->b:Le/a/l/c/b;

    invoke-virtual {p1}, Le/a/l/c/b;->SA()Le/a/l/c/h;

    move-result-object p1

    iget-object v0, p0, Le/a/l/c/b$r;->c:Le/a/l/v2/i/a/b;

    invoke-interface {p1, v0}, Le/a/l/d0;->L3(Le/a/l/v2/i/a/b;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
