.class public final Le/a/c/a/a/a/a/c;
.super Le/a/c/a/a/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/a/a/a/e<",
        "Lcom/truecaller/insights/ui/models/AdapterItem$a;",
        ">;"
    }
.end annotation


# static fields
.field public static e:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/c/a/i/h;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsLogger"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Le/a/c/a/a/a/a/e;-><init>(Landroid/view/View;Le/a/c/a/i/h;)V

    return-void
.end method


# virtual methods
.method public S4(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;

    const-string v0, "item"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
