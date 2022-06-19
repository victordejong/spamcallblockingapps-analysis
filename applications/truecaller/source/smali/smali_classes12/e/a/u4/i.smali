.class public Le/a/u4/i;
.super Le/a/u4/h;
.source "SourceFile"

# interfaces
.implements Le/a/f4/g/p$c;
.implements Le/f/a/r/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u4/h;",
        "Le/a/f4/g/p$c;",
        "Le/f/a/r/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/f5/a;

.field public final d:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/f4/g/p;Le/a/k3/j/b;Le/a/r2/f;Le/a/f5/a;Le/a/q2/a;Le/a/u3/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f4/g/p;",
            "Le/a/k3/j/b;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/f5/a;",
            "Le/a/q2/a;",
            "Le/a/u3/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/u4/h;-><init>()V

    .line 2
    iput-object p4, p0, Le/a/u4/i;->c:Le/a/f5/a;

    .line 3
    iput-object p5, p0, Le/a/u4/i;->d:Le/a/q2/a;

    .line 4
    iput-object p3, p0, Le/a/u4/i;->b:Le/a/r2/f;

    return-void
.end method


# virtual methods
.method public Aa(Ljava/lang/Throwable;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/u4/i;->c:Le/a/f5/a;

    invoke-interface {p1}, Le/a/f5/a;->isEnabled()Z

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/u4/j;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v0}, Le/a/u4/j;->d(Ljava/lang/String;ZZ)V

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/u4/j;

    invoke-interface {p1}, Le/a/u4/j;->a()V

    :cond_0
    return-void
.end method

.method public onLoadFailed(Le/f/a/n/o/r;Ljava/lang/Object;Le/f/a/r/k/k;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/r;",
            "Ljava/lang/Object;",
            "Le/f/a/r/k/k<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Le/a/u4/j;

    invoke-interface {p1}, Le/a/u4/j;->a()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/n/a;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Le/a/u4/j;

    invoke-interface {p1}, Le/a/u4/j;->a()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public p2(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 2
    iget-object p3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-static {p3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    .line 5
    iget-object v0, p0, Le/a/u4/i;->c:Le/a/f5/a;

    invoke-interface {v0}, Le/a/f5/a;->isEnabled()Z

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 6
    iget-object p4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p4, Le/a/u4/j;

    invoke-interface {p4, p3, v0, p2, p2}, Le/a/u4/j;->c(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p3, Le/a/u4/j;

    invoke-interface {p3, v0, p2, p2}, Le/a/u4/j;->d(Ljava/lang/String;ZZ)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 10
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/u4/j;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Le/a/u4/j;->b(Landroid/net/Uri;Le/f/a/r/g;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/u4/j;

    invoke-interface {p1}, Le/a/u4/j;->a()V

    :cond_2
    :goto_1
    return-void
.end method
