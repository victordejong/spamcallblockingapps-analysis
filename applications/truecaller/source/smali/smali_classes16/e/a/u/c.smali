.class public final Le/a/u/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/p5/c0;

.field public final b:Landroid/content/Context;

.field public final c:Le/a/j0/f;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Landroid/content/Context;Le/a/j0/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentLanguageProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/u/c;->a:Le/a/p5/c0;

    iput-object p2, p0, Le/a/u/c;->b:Landroid/content/Context;

    iput-object p3, p0, Le/a/u/c;->c:Le/a/j0/f;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u/c;->c:Le/a/j0/f;

    invoke-interface {v0}, Le/a/j0/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/truecaller/stats/R$string;->year_in_tc_messages_automatically_removed_en:I

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lcom/truecaller/stats/R$string;->year_in_tc_messages_automatically_removed_other:I

    :goto_0
    return v0
.end method
