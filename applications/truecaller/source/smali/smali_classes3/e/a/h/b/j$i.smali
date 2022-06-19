.class public final Le/a/h/b/j$i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/j;->Bp(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/details_view/analytics/SourceType;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln3/r/a/l;

.field public final synthetic c:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ln3/r/a/l;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/j$i;->b:Ln3/r/a/l;

    iput-object p2, p0, Le/a/h/b/j$i;->c:Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/b/j$i;->b:Ln3/r/a/l;

    iget-object v1, p0, Le/a/h/b/j$i;->c:Landroid/content/Intent;

    const-string v2, "context"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "intentWithExtras"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
