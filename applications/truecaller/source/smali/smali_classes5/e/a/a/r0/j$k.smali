.class public final synthetic Le/a/a/r0/j$k;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/r0/j;->Vs(ZZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$b;)V
    .locals 7

    const-class v3, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$b;

    const/4 v1, 0x0

    const-string v4, "newInstance"

    const-string v5, "newInstance()Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    invoke-direct {v0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;-><init>()V

    return-object v0
.end method
