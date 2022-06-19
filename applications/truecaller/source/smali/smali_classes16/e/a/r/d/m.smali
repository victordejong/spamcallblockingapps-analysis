.class public Le/a/r/d/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/r/d/n;


# direct methods
.method public constructor <init>(Le/a/r/d/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/r/d/m;->a:Le/a/r/d/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/r/d/m;->a:Le/a/r/d/n;

    .line 2
    iget-boolean v0, p1, Le/a/r/d/n;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/r/d/n;->c:Z

    .line 4
    invoke-virtual {p1}, Le/a/r/d/n;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r/d/k;

    check-cast p1, Lcom/truecaller/wizard/countries/CountyListActivity;

    invoke-interface {v0, p1}, Le/a/r/d/k;->n0(Lcom/truecaller/wizard/countries/CountyListActivity;)V

    :cond_0
    return-void
.end method
