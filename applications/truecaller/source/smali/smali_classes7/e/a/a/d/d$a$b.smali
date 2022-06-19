.class public final Le/a/a/d/d$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/d/d$a;-><init>(Landroid/view/View;Le/a/a/d/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/d/d$a;

.field public final synthetic b:Le/a/a/d/p;


# direct methods
.method public constructor <init>(Le/a/a/d/d$a;Le/a/a/d/p;)V
    .locals 0

    iput-object p1, p0, Le/a/a/d/d$a$b;->a:Le/a/a/d/d$a;

    iput-object p2, p0, Le/a/a/d/d$a$b;->b:Le/a/a/d/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/a/d/d$a$b;->b:Le/a/a/d/p;

    invoke-virtual {p1}, Le/a/a/d/p;->o()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Le/a/a/d/d$a$b;->a:Le/a/a/d/d$a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/messaging/Participant;

    invoke-virtual {p1, v0}, Le/a/a/d/p;->Mj(Lcom/truecaller/data/entity/messaging/Participant;)V

    return-void
.end method
