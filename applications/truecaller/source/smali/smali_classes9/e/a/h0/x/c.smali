.class public Le/a/h0/x/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "id"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "value"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "label"
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "rule"
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "type"
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "source"
    .end annotation
.end field

.field public g:Ljava/lang/Integer;
    .annotation runtime Le/m/e/d0/b;
        value = "ownership"
    .end annotation
.end field

.field public h:Ljava/lang/Long;
    .annotation runtime Le/m/e/d0/b;
        value = "categoryId"
    .end annotation
.end field

.field public i:Ljava/lang/Integer;
    .annotation runtime Le/m/e/d0/b;
        value = "version"
    .end annotation
.end field

.field public j:Le/a/h0/x/b;
    .annotation runtime Le/m/e/d0/b;
        value = "associatedCallInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Filter{id=\'"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/h0/x/c;->a:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", rule=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Le/a/h0/x/c;->d:Ljava/lang/String;

    const-string v3, ", type=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Le/a/h0/x/c;->e:Ljava/lang/String;

    const-string v3, ", source=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Le/a/h0/x/c;->f:Ljava/lang/String;

    const-string v3, ", categoryId=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Le/a/h0/x/c;->h:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h0/x/c;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", associatedCallInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h0/x/c;->j:Le/a/h0/x/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
