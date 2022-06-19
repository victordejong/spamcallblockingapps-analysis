.class public final Le/a/l/c/a/b$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/a/b;-><init>(Landroid/view/View;Le/a/o2/m;Landroidx/fragment/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/l/c/a/b$a;->a:I

    iput-object p2, p0, Le/a/l/c/a/b$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    iget p1, p0, Le/a/l/c/a/b$a;->a:I

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/l/c/a/b$a;->b:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Le/a/l/c/a/b;

    .line 2
    iget-object p1, v2, Le/a/l/c/a/b;->p:Le/a/o2/m;

    .line 3
    new-instance v6, Le/a/o2/h;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const-string v1, "ItemEvent.EDIT_CONTACT_AVATAR"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {p1, v6}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/l/c/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/b;

    .line 6
    iget-object v0, p1, Le/a/l/c/a/b;->p:Le/a/o2/m;

    .line 7
    new-instance v1, Le/a/o2/h;

    .line 8
    iget-object v2, p1, Le/a/l/c/a/b;->n:Landroid/widget/TextView;

    const-string v3, "btnPickContact"

    .line 9
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Le/a/l/c/a/b$a;->b:Ljava/lang/Object;

    check-cast v3, Le/a/l/c/a/b;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ItemEvent.PICK_CONTACT"

    invoke-direct {v1, v4, p1, v2, v3}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Le/a/l/c/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/b;

    .line 11
    iget-object v0, p1, Le/a/l/c/a/b;->p:Le/a/o2/m;

    .line 12
    new-instance v1, Le/a/o2/h;

    .line 13
    iget-object v2, p1, Le/a/l/c/a/b;->m:Landroid/widget/TextView;

    const-string v3, "btnCancelCall"

    .line 14
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Le/a/l/c/a/b$a;->b:Ljava/lang/Object;

    check-cast v3, Le/a/l/c/a/b;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ItemEvent.CANCEL_CALL"

    invoke-direct {v1, v4, p1, v2, v3}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void

    .line 15
    :cond_3
    iget-object p1, p0, Le/a/l/c/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/b;

    .line 16
    iget-object v1, p1, Le/a/l/c/a/b;->k:Landroid/widget/EditText;

    const-string v2, "contactPhone"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    const-string v4, "contactPhone.text"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v1, p1, Le/a/l/c/a/b;->j:Landroid/widget/EditText;

    const-string v3, "contactName"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    const-string v5, "contactName.text"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v1, p1, Le/a/l/c/a/b;->k:Landroid/widget/EditText;

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 19
    iget-object v1, p1, Le/a/l/c/a/b;->j:Landroid/widget/EditText;

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 20
    iget-object v1, p1, Le/a/l/c/a/b;->g:Landroid/widget/EditText;

    const-string v2, "durationPicker"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.truecaller.ghost_call.ScheduleDuration"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lcom/truecaller/ghost_call/ScheduleDuration;

    .line 21
    iget-object v1, p1, Le/a/l/c/a/b;->e:Landroid/widget/ImageView;

    const-string v2, "avatar"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 22
    new-instance v1, Le/a/x/i;

    const-string v2, "$this$toTimeInFuture"

    .line 23
    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v2, Lw3/b/a/b;

    invoke-direct {v2}, Lw3/b/a/b;-><init>()V

    .line 25
    invoke-virtual {v8}, Lcom/truecaller/ghost_call/ScheduleDuration;->getTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v3

    invoke-virtual {v8}, Lcom/truecaller/ghost_call/ScheduleDuration;->getDelay()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lw3/b/a/b;->C(J)Lw3/b/a/b;

    move-result-object v2

    const-string v3, "DateTime.now().plus(timeUnit.toMillis(delay))"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-wide v9, v2, Lw3/b/a/e0/e;->a:J

    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v4, v1

    .line 28
    invoke-direct/range {v4 .. v11}, Le/a/x/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/ghost_call/ScheduleDuration;JLjava/lang/Integer;)V

    .line 29
    iget-object v2, p1, Le/a/l/c/a/b;->p:Le/a/o2/m;

    new-instance v3, Le/a/o2/h;

    iget-object v4, p1, Le/a/l/c/a/b;->l:Landroid/widget/TextView;

    const-string v5, "btnScheduleCall"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "ItemEvent.SCHEDULE_CALL"

    invoke-direct {v3, v6, p1, v4, v1}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    .line 30
    iget-object v1, p1, Le/a/l/c/a/b;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 31
    iget-object v1, p1, Le/a/l/c/a/b;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 32
    iget-object p1, p1, Le/a/l/c/a/b;->l:Landroid/widget/TextView;

    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    return-void
.end method
