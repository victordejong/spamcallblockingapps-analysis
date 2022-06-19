.class public final Le/a/c/a/c/h/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/c/h/b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Lcom/truecaller/insights/ui/models/AdapterItem$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/c/h/b;


# direct methods
.method public constructor <init>(Le/a/c/a/c/h/b;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/h/b$a;->a:Le/a/c/a/c/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;

    .line 2
    iget-object v0, p0, Le/a/c/a/c/h/b$a;->a:Le/a/c/a/c/h/b;

    iget-object v0, v0, Le/a/c/a/c/h/b;->g:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    .line 3
    iget-object v1, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->a:Le/a/c/a/c/h/i;

    .line 4
    iput-object p1, v1, Le/a/c/a/c/h/i;->f:Lcom/truecaller/insights/ui/models/AdapterItem$a;

    .line 5
    invoke-static {v0}, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->c(Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;)V

    return-void
.end method
