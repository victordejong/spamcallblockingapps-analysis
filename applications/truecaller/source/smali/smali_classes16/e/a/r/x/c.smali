.class public final synthetic Le/a/r/x/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/n/a;


# instance fields
.field public final synthetic a:Le/a/r/x/n;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Le/a/r/x/n;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/x/c;->a:Le/a/r/x/n;

    iput-object p2, p0, Le/a/r/x/c;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Le/a/b0/n/c;)V
    .locals 4

    iget-object v0, p0, Le/a/r/x/c;->a:Le/a/r/x/n;

    iget-object v1, p0, Le/a/r/x/c;->b:Ljava/util/Map;

    .line 1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v2, p1, Le/a/b0/n/c;->a:Z

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Le/a/r/x/n;->WA(Ljava/util/Map;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v0, Le/a/r/x/n;->i:Le/a/r/q/c;

    .line 5
    iget v2, p1, Le/a/b0/n/c;->b:I

    .line 6
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FetchProfile"

    invoke-interface {v1, v3, v2}, Le/a/r/q/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, v0, Le/a/r/x/n;->n:Le/a/r/x/y/a;

    .line 8
    iget p1, p1, Le/a/b0/n/c;->b:I

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "GetProfile"

    invoke-virtual {v1, v2, p1}, Le/a/r/x/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget p1, Lcom/truecaller/wizard/R$string;->WizardNetworkError:I

    invoke-virtual {v0, p1}, Le/a/r/t/e;->a(I)V

    .line 11
    invoke-virtual {v0}, Le/a/r/t/e;->b0()V

    :goto_0
    return-void
.end method
