.class public final Le/a/c/a/c/h/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


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
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Lcom/truecaller/insights/ui/models/AdapterItem$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/c/h/b;


# direct methods
.method public constructor <init>(Le/a/c/a/c/h/b;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/h/b$b;->a:Le/a/c/a/c/h/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/ui/models/AdapterItem$a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;

    .line 2
    iget-object p2, p0, Le/a/c/a/c/h/b$b;->a:Le/a/c/a/c/h/b;

    iget-object p2, p2, Le/a/c/a/c/h/b;->g:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    .line 3
    iget-object v0, p2, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->a:Le/a/c/a/c/h/i;

    .line 4
    iput-object p1, v0, Le/a/c/a/c/h/i;->f:Lcom/truecaller/insights/ui/models/AdapterItem$a;

    .line 5
    invoke-static {p2}, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->c(Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
