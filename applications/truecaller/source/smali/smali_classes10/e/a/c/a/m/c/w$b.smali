.class public final Le/a/c/a/m/c/w$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/c/w;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/insights/models/InsightsReminder;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/m/c/w;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/w;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/w$b;->b:Le/a/c/a/m/c/w;

    iput-object p2, p0, Le/a/c/a/m/c/w$b;->c:Landroid/view/View;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lcom/truecaller/insights/models/InsightsReminder;

    const-string v0, "reminder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/c/a/m/c/w$b;->b:Le/a/c/a/m/c/w;

    .line 4
    sget-object v1, Le/a/c/a/m/c/w;->f:[Ls1/a/l;

    .line 5
    invoke-virtual {v0}, Le/a/c/a/m/c/w;->OA()Le/a/c/a/m/b/i;

    move-result-object v0

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "insightsReminder"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, v0, Le/a/c/a/m/b/i;->b:Lq3/a/i0;

    new-instance v5, Le/a/c/a/m/b/k;

    const/4 v1, 0x0

    invoke-direct {v5, v0, p1, v1}, Le/a/c/a/m/b/k;-><init>(Le/a/c/a/m/b/i;Lcom/truecaller/insights/models/InsightsReminder;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
