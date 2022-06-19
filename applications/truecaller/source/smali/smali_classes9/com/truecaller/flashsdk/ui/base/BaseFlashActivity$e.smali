.class public final Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/z3/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$e;->b:Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$e;->b:Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;

    invoke-static {v0}, Le/a/m0/a1$k;->N1(Ln3/r/a/l;)Le/a/z3/e;

    move-result-object v0

    const-string v1, "GlideApp.with(this)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
