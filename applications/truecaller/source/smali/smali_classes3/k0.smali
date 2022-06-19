.class public final Lk0;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lk0;->a:I

    iput-object p2, p0, Lk0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget p1, p0, Lk0;->a:I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Lk0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/d/a/o;

    .line 2
    iget-object p1, p1, Le/a/d/a/o;->c:Lq3/a/x2/a1;

    .line 3
    invoke-interface {p1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/v/a;

    .line 4
    iget-object v1, p0, Lk0;->b:Ljava/lang/Object;

    check-cast v1, Le/a/d/a/o;

    .line 5
    iget-object v1, v1, Le/a/d/a/o;->c:Lq3/a/x2/a1;

    const/4 v2, 0x5

    .line 6
    invoke-static {p1, v0, p2, v0, v2}, Le/a/d/v/a;->a(Le/a/d/v/a;ZZZI)Le/a/d/v/a;

    move-result-object p1

    invoke-interface {v1, p1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1

    .line 8
    :cond_1
    iget-object p1, p0, Lk0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/d/a/o;

    .line 9
    iget-object p1, p1, Le/a/d/a/o;->c:Lq3/a/x2/a1;

    .line 10
    invoke-interface {p1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/v/a;

    .line 11
    iget-object v1, p0, Lk0;->b:Ljava/lang/Object;

    check-cast v1, Le/a/d/a/o;

    .line 12
    iget-object v1, v1, Le/a/d/a/o;->c:Lq3/a/x2/a1;

    const/4 v2, 0x6

    .line 13
    invoke-static {p1, p2, v0, v0, v2}, Le/a/d/v/a;->a(Le/a/d/v/a;ZZZI)Le/a/d/v/a;

    move-result-object p1

    invoke-interface {v1, p1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-void
.end method
