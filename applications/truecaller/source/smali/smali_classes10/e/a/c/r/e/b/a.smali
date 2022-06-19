.class public final Le/a/c/r/e/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/q/e/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/q/e/b/f<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/truecaller/insights/models/pdo/ParsedDataObject;

.field public final b:Le/a/c/r/h/b;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Le/a/c/r/h/b;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsBinder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/r/e/b/a;->a:Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    iput-object p2, p0, Le/a/c/r/e/b/a;->b:Le/a/c/r/h/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/r/e/b/a;->b:Le/a/c/r/h/b;

    iget-object v1, p0, Le/a/c/r/e/b/a;->a:Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-interface {v0, v1}, Le/a/c/r/h/b;->c(Lcom/truecaller/insights/models/pdo/ParsedDataObject;)Le/a/c/r/h/h;

    move-result-object v0

    invoke-virtual {v0}, Le/a/c/r/h/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/c/r/e/b/a;->b:Le/a/c/r/h/b;

    invoke-interface {v0}, Le/a/c/r/h/b;->getBinder()Lcom/truecaller/insights/models/pdo/PdoBinderType;

    move-result-object v0

    .line 2
    instance-of v0, v0, Lcom/truecaller/insights/models/pdo/PdoBinderType$PdoBinder;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/a/c/r/e/b/a;->b:Le/a/c/r/h/b;

    iget-object v2, p0, Le/a/c/r/e/b/a;->a:Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Le/a/c/p/a;->u3(Le/a/c/r/h/b;Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/r/e/b/a;->a:Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-virtual {v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/r/e/b/a;->a:Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-virtual {v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/Float;
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/c/r/e/b/a;->b:Le/a/c/r/h/b;

    invoke-interface {v0}, Le/a/c/r/h/b;->getBinder()Lcom/truecaller/insights/models/pdo/PdoBinderType;

    move-result-object v0

    .line 2
    instance-of v0, v0, Lcom/truecaller/insights/models/pdo/PdoBinderType$PdoBinder;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/a/c/r/e/b/a;->b:Le/a/c/r/h/b;

    iget-object v2, p0, Le/a/c/r/e/b/a;->a:Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Le/a/c/p/a;->u3(Le/a/c/r/h/b;Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
