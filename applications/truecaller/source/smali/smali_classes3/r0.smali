.class public final Lr0;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lr0;->a:I

    iput-object p2, p0, Lr0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lr0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lr0;->a:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lr0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/z;

    .line 2
    iget-object p1, p1, Le/a/h0/a/z;->b:Le/a/h0/a/s;

    .line 3
    iget-object v0, p0, Lr0;->c:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/v;

    invoke-virtual {p1, v0}, Le/a/h0/a/s;->Oj(Le/a/h0/a/v;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    iget-object p1, p0, Lr0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/z;

    .line 6
    iget-object p1, p1, Le/a/h0/a/z;->b:Le/a/h0/a/s;

    .line 7
    iget-object v0, p0, Lr0;->c:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/v;

    invoke-virtual {p1, v0}, Le/a/h0/a/s;->Nj(Le/a/h0/a/v;)V

    return-void
.end method
