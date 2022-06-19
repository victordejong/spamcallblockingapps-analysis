.class public final Le/a/b/k/d/b/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/k/d/b/c;->Jg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/k/d/b/c;


# direct methods
.method public constructor <init>(Le/a/b/k/d/b/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/b/k/d/b/c$d;->a:Le/a/b/k/d/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/b/k/d/b/c$d;->a:Le/a/b/k/d/b/c;

    invoke-virtual {p1}, Le/a/b/k/d/b/c;->RA()Le/a/b/k/c/d;

    move-result-object p1

    check-cast p1, Le/a/b/k/c/i;

    .line 2
    iget-object v0, p1, Le/a/b/k/c/i;->e:Le/a/b/k/a/a;

    check-cast v0, Le/a/b/k/a/d;

    invoke-virtual {v0}, Le/a/b/k/a/d;->a()Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryBanner;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryBanner;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/k/c/e;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Le/a/b/k/c/e;->qy(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
