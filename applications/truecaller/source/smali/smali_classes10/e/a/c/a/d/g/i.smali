.class public final Le/a/c/a/d/g/i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/d/g/h;

.field public final synthetic c:Le/a/c/a/l/a;

.field public final synthetic d:Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;


# direct methods
.method public constructor <init>(Le/a/c/a/d/g/h;Le/a/c/a/l/a;Le/a/b0/a/b/a;Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/g/i;->b:Le/a/c/a/d/g/h;

    iput-object p2, p0, Le/a/c/a/d/g/i;->c:Le/a/c/a/l/a;

    iput-object p4, p0, Le/a/c/a/d/g/i;->d:Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/a/d/g/i;->b:Le/a/c/a/d/g/h;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Le/a/c/a/d/g/h;->d:Z

    .line 3
    iget-object v0, p0, Le/a/c/a/d/g/i;->c:Le/a/c/a/l/a;

    iget-object v1, p0, Le/a/c/a/d/g/i;->d:Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isSelected()Z

    move-result v1

    .line 4
    iput-boolean v1, v0, Le/a/c/a/l/a;->e:Z

    .line 5
    iget-object v0, p0, Le/a/c/a/d/g/i;->c:Le/a/c/a/l/a;

    .line 6
    iget-boolean v1, v0, Le/a/c/a/l/a;->e:Z

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Le/a/c/a/d/g/i;->b:Le/a/c/a/d/g/h;

    .line 8
    iget-object v1, v1, Le/a/c/a/d/g/h;->c:Ljava/util/List;

    .line 9
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Le/a/c/a/d/g/i;->b:Le/a/c/a/d/g/h;

    .line 11
    iget-object v1, v1, Le/a/c/a/d/g/h;->c:Ljava/util/List;

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_0
    iget-object v0, p0, Le/a/c/a/d/g/i;->b:Le/a/c/a/d/g/h;

    .line 14
    iget-boolean v1, v0, Le/a/c/a/d/g/h;->d:Z

    invoke-virtual {v0, v1}, Le/a/c/a/d/g/h;->SA(Z)V

    .line 15
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
