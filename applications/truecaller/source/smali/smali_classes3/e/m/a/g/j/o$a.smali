.class public Le/m/a/g/j/o$a;
.super Le/m/a/g/j/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/a/g/j/o;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/g/j/s<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/j/o;


# direct methods
.method public constructor <init>(Le/m/a/g/j/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/j/o$a;->a:Le/m/a/g/j/o;

    invoke-direct {p0}, Le/m/a/g/j/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/g/j/o$a;->a:Le/m/a/g/j/o;

    iget-object v0, v0, Le/m/a/g/j/t;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/g/j/s;

    .line 2
    invoke-virtual {v1, p1}, Le/m/a/g/j/s;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
