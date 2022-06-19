.class public final Le/a/e/b/p/c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/p/c;->b:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/p/c;->b:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;

    invoke-virtual {v0}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->OA()Le/a/e/b/p/e;

    move-result-object v0

    invoke-interface {v0}, Le/a/e/b/p/e;->V3()V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
