.class public final Le/a/o/a/a/a/a$b;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/a/a/a;->Le(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/o/a/a/a/a$b;->a:I

    iput-object p2, p0, Le/a/o/a/a/a/a$b;->b:Ljava/lang/Object;

    iput-object p3, p0, Le/a/o/a/a/a/a$b;->c:Ljava/lang/Object;

    iput-object p4, p0, Le/a/o/a/a/a/a$b;->d:Ljava/lang/Object;

    iput-object p5, p0, Le/a/o/a/a/a/a$b;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Le/a/o/a/a/a/a$b;->a:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/o/a/a/a/a$b;->d:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/a/a/a;

    invoke-virtual {p1}, Le/a/o/a/a/a/a;->SA()Le/a/o/a/a/a/e;

    move-result-object p1

    iget-object v0, p0, Le/a/o/a/a/a/a$b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/contextcall/db/reason/CallReason;

    invoke-interface {p1, v0}, Le/a/o/a/a/a/e;->Hi(Lcom/truecaller/contextcall/db/reason/CallReason;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/o/a/a/a/a$b;->d:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/a/a/a;

    invoke-virtual {p1}, Le/a/o/a/a/a/a;->SA()Le/a/o/a/a/a/e;

    move-result-object p1

    iget-object v0, p0, Le/a/o/a/a/a/a$b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/contextcall/db/reason/CallReason;

    invoke-interface {p1, v0}, Le/a/o/a/a/a/e;->Vc(Lcom/truecaller/contextcall/db/reason/CallReason;)V

    return-void
.end method
