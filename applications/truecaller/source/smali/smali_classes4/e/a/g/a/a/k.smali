.class public Le/a/g/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/g/a/a/l;


# direct methods
.method public constructor <init>(Le/a/g/a/a/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/g/a/a/k;->a:Le/a/g/a/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/g/a/a/k;->a:Le/a/g/a/a/l;

    .line 2
    iget-boolean v0, p1, Le/a/g/a/a/l;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/g/a/a/l;->c:Z

    .line 4
    invoke-virtual {p1}, Le/a/g/a/a/l;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g/a/a/c;

    check-cast p1, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;

    invoke-interface {v0, p1}, Le/a/g/a/a/c;->C(Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;)V

    :cond_0
    return-void
.end method
