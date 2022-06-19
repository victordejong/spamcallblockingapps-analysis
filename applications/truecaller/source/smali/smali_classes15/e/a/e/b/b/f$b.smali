.class public final Le/a/e/b/b/f$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/b/f;->F8(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/e/b/b/f;


# direct methods
.method public constructor <init>(Le/a/e/b/b/f;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/b/f$b;->b:Le/a/e/b/b/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    sget-object p1, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->g:Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "re_run_context_translations"

    invoke-static {p1, v3, v0, v1, v2}, Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;->c(Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;Ljava/lang/String;ZZI)V

    .line 3
    iget-object p1, p0, Le/a/e/b/b/f$b;->b:Le/a/e/b/b/f;

    .line 4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/b/d;

    if-eqz p1, :cond_0

    const v0, 0x7f1201c5

    .line 5
    invoke-interface {p1, v0}, Le/a/e/b/b/d;->a(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/e/b/b/f$b;->b:Le/a/e/b/b/f;

    invoke-virtual {p1}, Le/a/e/b/b/f;->Q8()V

    .line 7
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
