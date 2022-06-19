.class public final Le/a/a4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a4/m;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/u3/b;

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(Le/a/u3/b;ZZ)V
    .locals 1

    const-string v0, "feature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a4/l;->b:Le/a/u3/b;

    iput-boolean p2, p0, Le/a/a4/l;->c:Z

    iput-boolean p3, p0, Le/a/a4/l;->d:Z

    .line 2
    instance-of p2, p1, Le/a/u3/r;

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/u3/b;->getDescription()Ljava/lang/String;

    :cond_0
    const-string p2, "Feature condition ["

    .line 4
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Le/a/u3/b;->getKey()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object p3

    invoke-virtual {p3}, Lcom/truecaller/featuretoggles/FeatureKey;->getJiraTicket()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Le/a/u3/b;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/a4/l;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/a4/l;->d:Z

    return v0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a4/l;->b:Le/a/u3/b;

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    iget-boolean v1, p0, Le/a/a4/l;->c:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a4/l;->a:Ljava/lang/String;

    return-object v0
.end method
