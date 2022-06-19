.class public final Le0;
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

    iput p1, p0, Le0;->a:I

    iput-object p2, p0, Le0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget p1, p0, Le0;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/s2/h/h;

    invoke-virtual {p1}, Le/a/s2/h/h;->QA()Le/a/s2/h/k;

    move-result-object p1

    check-cast p1, Le/a/s2/h/d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Le/a/s2/h/b;

    invoke-direct {v0, p1, p2}, Le/a/s2/h/b;-><init>(Le/a/s2/h/d;Z)V

    invoke-virtual {p1, v0}, Le/a/s2/h/d;->Hj(Ls1/z/b/a;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    iget-object p1, p0, Le0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/s2/h/h;

    invoke-virtual {p1}, Le/a/s2/h/h;->QA()Le/a/s2/h/k;

    move-result-object p1

    check-cast p1, Le/a/s2/h/d;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Le/a/s2/h/c;

    invoke-direct {v0, p1, p2}, Le/a/s2/h/c;-><init>(Le/a/s2/h/d;Z)V

    invoke-virtual {p1, v0}, Le/a/s2/h/d;->Hj(Ls1/z/b/a;)V

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Le0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/s2/h/h;

    invoke-virtual {p1}, Le/a/s2/h/h;->QA()Le/a/s2/h/k;

    move-result-object p1

    check-cast p1, Le/a/s2/h/d;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, Le/a/s2/h/a;

    invoke-direct {v0, p1, p2}, Le/a/s2/h/a;-><init>(Le/a/s2/h/d;Z)V

    invoke-virtual {p1, v0}, Le/a/s2/h/d;->Hj(Ls1/z/b/a;)V

    return-void
.end method
