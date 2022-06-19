.class public final Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/x4/k/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker;


# direct methods
.method public constructor <init>(Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker$a;->b:Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker$a;->b:Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "opt_in"

    invoke-virtual {v0, v2, v1}, Ln3/m0/f;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
