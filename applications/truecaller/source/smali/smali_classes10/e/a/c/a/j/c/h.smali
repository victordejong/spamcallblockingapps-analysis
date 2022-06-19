.class public final Le/a/c/a/j/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Le/a/c/a/j/b/j;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ls1/z/b/p;


# direct methods
.method public constructor <init>(Le/a/c/a/j/c/j;Le/a/c/a/j/b/j;Le/a/b0/a/b/a;Ljava/util/Set;Ls1/z/b/p;)V
    .locals 0

    iput-object p2, p0, Le/a/c/a/j/c/h;->a:Le/a/c/a/j/b/j;

    iput-object p4, p0, Le/a/c/a/j/c/h;->b:Ljava/util/Set;

    iput-object p5, p0, Le/a/c/a/j/c/h;->c:Ls1/z/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/c/a/j/c/h;->b:Ljava/util/Set;

    iget-object v0, p0, Le/a/c/a/j/c/h;->a:Le/a/c/a/j/b/j;

    invoke-virtual {v0}, Le/a/c/a/j/b/j;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    :goto_0
    iget-object p1, p0, Le/a/c/a/j/c/h;->c:Ls1/z/b/p;

    if-eqz p1, :cond_1

    iget-object v0, p0, Le/a/c/a/j/c/h;->a:Le/a/c/a/j/b/j;

    .line 3
    iget-object v1, v0, Le/a/c/a/j/b/j;->c:Le/a/c/q/h;

    iget-object v2, v0, Le/a/c/a/j/b/j;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "model"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/j/b/j;

    invoke-direct {v0, v1, v2, p2}, Le/a/c/a/j/b/j;-><init>(Le/a/c/q/h;Ljava/lang/String;Z)V

    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_1
    return-void
.end method
