.class public Le/a/b0/a/a/d$a;
.super Le/a/b0/q/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/a/a/d;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Le/a/b0/a/a/d;


# direct methods
.method public constructor <init>(Le/a/b0/a/a/d;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/b0/a/a/d$a;->d:Le/a/b0/a/a/d;

    invoke-direct {p0, p2}, Le/a/b0/q/i;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/b0/a/a/d$a;->d:Le/a/b0/a/a/d;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    .line 2
    iput-object p2, p1, Le/a/b0/a/a/d;->a:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
