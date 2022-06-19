.class public final Le/a/x4/l/b$a;
.super Ls1/b0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/x4/l/b;-><init>(Ls1/w/f;Le/a/x4/g;Le/a/x4/e;Le/a/x4/l/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/b0/b<",
        "Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/x4/l/b;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Le/a/x4/l/b;)V
    .locals 0

    iput-object p3, p0, Le/a/x4/l/b$a;->b:Le/a/x4/l/b;

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Ls1/b0/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b(Ls1/a/l;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/l<",
            "*>;",
            "Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;",
            "Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p3, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;

    check-cast p2, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;

    if-eqz p3, :cond_1

    .line 2
    invoke-static {p2, p3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Le/a/x4/l/b$a;->b:Le/a/x4/l/b;

    .line 4
    iget-object p2, p1, Le/a/x4/l/b;->j:Le/a/x4/e;

    .line 5
    iget-object p1, p1, Le/a/x4/l/b;->d:Le/a/x4/l/a;

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p1, Le/a/x4/l/a;->a:Lcom/truecaller/searchwarnings/data/analytics/SearchWarningSource;

    .line 7
    invoke-virtual {p3}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;->getRuleName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, v0, p3}, Le/a/x4/e;->a(Lcom/truecaller/searchwarnings/data/analytics/SearchWarningSource;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "config"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
