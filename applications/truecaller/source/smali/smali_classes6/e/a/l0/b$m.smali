.class public Le/a/l0/b$m;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/l0/c;",
        "Ljava/util/List<",
        "Lcom/truecaller/data/entity/HistoryEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/truecaller/callhistory/data/FilterType;

.field public final c:Ljava/lang/Integer;

.field public final d:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Le/a/r2/e;Lcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;Le/a/l0/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/l0/b$m;->b:Lcom/truecaller/callhistory/data/FilterType;

    .line 3
    iput-object p3, p0, Le/a/l0/b$m;->c:Ljava/lang/Integer;

    .line 4
    iput-object p4, p0, Le/a/l0/b$m;->d:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 3

    .line 1
    check-cast p1, Le/a/l0/c;

    .line 2
    iget-object v0, p0, Le/a/l0/b$m;->b:Lcom/truecaller/callhistory/data/FilterType;

    iget-object v1, p0, Le/a/l0/b$m;->c:Ljava/lang/Integer;

    iget-object v2, p0, Le/a/l0/b$m;->d:Landroid/os/CancellationSignal;

    invoke-interface {p1, v0, v1, v2}, Le/a/l0/c;->j(Lcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ".getCallHistoryList("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/l0/b$m;->b:Lcom/truecaller/callhistory/data/FilterType;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/l0/b$m;->c:Ljava/lang/Integer;

    invoke-static {v3, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l0/b$m;->d:Landroid/os/CancellationSignal;

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
