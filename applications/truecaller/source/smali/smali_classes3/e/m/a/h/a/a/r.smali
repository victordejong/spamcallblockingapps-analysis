.class public final Le/m/a/h/a/a/r;
.super Le/m/a/h/a/a/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/h/a/a/l<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final synthetic f:Le/m/a/h/a/a/t;


# direct methods
.method public constructor <init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/h/n<",
            "Ljava/lang/Void;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Le/m/a/h/a/a/r;->f:Le/m/a/h/a/a/t;

    .line 1
    invoke-direct {p0, p1, p2}, Le/m/a/h/a/a/l;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;)V

    iput p3, p0, Le/m/a/h/a/a/r;->c:I

    iput-object p4, p0, Le/m/a/h/a/a/r;->d:Ljava/lang/String;

    iput p5, p0, Le/m/a/h/a/a/r;->e:I

    return-void
.end method


# virtual methods
.method public final zzd(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Le/m/a/h/a/a/r;->f:Le/m/a/h/a/a/t;

    .line 1
    iget-object v0, v0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 2
    invoke-virtual {v0}, Le/m/a/h/a/d/r;->c()V

    const-string v0, "error_code"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 4
    sget-object v0, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "onError(%d), retrying notifyModuleCompleted..."

    invoke-virtual {v0, p1, v1}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget p1, p0, Le/m/a/h/a/a/r;->e:I

    if-lez p1, :cond_0

    iget-object v0, p0, Le/m/a/h/a/a/r;->f:Le/m/a/h/a/a/t;

    iget v1, p0, Le/m/a/h/a/a/r;->c:I

    iget-object v2, p0, Le/m/a/h/a/a/r;->d:Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    .line 6
    invoke-virtual {v0, v1, v2, p1}, Le/m/a/h/a/a/t;->g(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method
