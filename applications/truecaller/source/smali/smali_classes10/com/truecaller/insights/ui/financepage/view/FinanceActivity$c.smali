.class public final Lcom/truecaller/insights/ui/financepage/view/FinanceActivity$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/c/a/s/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity$c;->b:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Le/a/c/a/s/d;

    iget-object v1, p0, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity$c;->b:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    invoke-direct {v0, v1}, Le/a/c/a/s/d;-><init>(Ln3/r/a/l;)V

    return-object v0
.end method
