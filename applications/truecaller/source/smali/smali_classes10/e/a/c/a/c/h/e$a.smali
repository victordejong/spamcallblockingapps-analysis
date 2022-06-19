.class public final Le/a/c/a/c/h/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/c/h/e;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/c/a/c/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/c/h/e;


# direct methods
.method public constructor <init>(Le/a/c/a/c/h/e;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/h/e$a;->a:Le/a/c/a/c/h/e;

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
            "Le/a/c/a/c/g/e;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Le/a/c/a/c/g/e;

    .line 2
    iget-object p2, p0, Le/a/c/a/c/h/e$a;->a:Le/a/c/a/c/h/e;

    iget-object p2, p2, Le/a/c/a/c/h/e;->f:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    .line 3
    iget-object v0, p2, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->a:Le/a/c/a/c/h/i;

    .line 4
    iput-object p1, v0, Le/a/c/a/c/h/i;->c:Le/a/c/a/c/g/e;

    .line 5
    invoke-static {p2}, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->c(Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
