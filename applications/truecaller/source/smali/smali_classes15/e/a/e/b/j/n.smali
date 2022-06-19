.class public final Le/a/e/b/j/n;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Set<",
        "+",
        "Landroid/widget/RadioButton;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/j/n;->b:Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/RadioButton;

    .line 1
    iget-object v1, p0, Le/a/e/b/j/n;->b:Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;

    invoke-virtual {v1}, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->getBinding()Le/a/m3/y0;

    move-result-object v1

    iget-object v1, v1, Le/a/m3/y0;->e:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-object v1, p0, Le/a/e/b/j/n;->b:Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;

    invoke-virtual {v1}, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->getBinding()Le/a/m3/y0;

    move-result-object v1

    iget-object v1, v1, Le/a/m3/y0;->d:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
