.class public final Le/a/j/c/d/e;
.super Ln3/c0/q$b;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/j/c/d/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ln3/c0/q$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ln3/e0/a/b;)V
    .locals 7

    const-string v0, "db"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, p0, Le/a/j/c/d/e;->a:Landroid/content/Context;

    const-string p1, "context"

    .line 2
    invoke-static {v3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v3}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v1

    const-string p1, "WorkManager.getInstance(context)"

    .line 4
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "FetchSurveysWorkAction"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    invoke-static/range {v1 .. v6}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    return-void
.end method
